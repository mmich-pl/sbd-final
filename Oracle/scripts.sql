-- procedura pozwoli na dodanie nowego kierowcy do bazy danych, zakładamy że nowy kierowca mieszka w polskim mieście

create or replace type "LICENCELIST" is table of varchar2(50);

CREATE OR REPLACE PROCEDURE get_drivers(city_name varchar2, street varchar2, b_num varchar2, local number DEFAULT NULL,
                                        code char, fname varchar2, lname varchar2, driver_gender char, bdate date,
                                        phone_number varchar2, doc_id varchar2, r_date date, cat varchar2,
                                        licences in LICENCELIST)
    IS
    c_id         int;
    a_id         int;
    dLicenece_id int;
    aLicence_id  int;
    d_id         int;

BEGIN
    SELECT NVL((select ID from CITY where name = city_name), -1) into c_id from dual;

    SELECT NVL((SELECT ID
                FROM Address
                WHERE STREET_NAME = street
                  AND BUILDINGS_NUMBER = b_num
                  AND (local is null OR LOCAL_NUMBER = local)
                  AND CITY_ID = 1), -1)
    into a_id
    from dual;

    IF c_id = -1 THEN
        INSERT INTO CITY (NAME, COUNTRY_ID) values (city_name, 1) returning ID into c_id;
    END IF;

    IF a_id = -1 THEN
        INSERT INTO Address (STREET_NAME, BUILDINGS_NUMBER, LOCAL_NUMBER, ZIP_CODE, CITY_ID)
        VALUES (street, b_num, local, code, c_id)
        returning ID into a_id;
    end if;

    INSERT INTO DRIVING_LICENCE (DOCUMENT_ID, RELEASE_DATE, EXPIRATION_DATE, CATEGORY)
    VALUES (doc_id, r_date, ADD_MONTHS(r_date, 120), cat)
    returning ID into dLicenece_id;

    INSERT INTO Driver (FIRST_NAME, LAST_NAME, GENDER, BORN_DATE, EMPLOYMENT_DATE, FEE_PER_KILOMETER, PHONE, EMAIL,
                        AVAILABLE, DRIVING_LICENCE_ID, ADDRESS_ID)
    VALUES (fname, lname, driver_gender, bdate, SYSDATE, 0, phone_number, (fname || '.' || lname || '@transport.com'),
            'T', dLicenece_id, a_id)
    returning ID into d_id;

    if licences.count > 0 then
        for i in licences.first .. licences.LAST
            loop
                IF licences(i) IS NOT NULL THEN
                    select NVL(ID, -1) into aLicence_id from ADDITIONAL_LICENCE where LICENCE_NAME = licences(i);
                    IF aLicence_id <> -1 THEN
                        INSERT INTO DRIVERS_LICENCES (DRIVER_ID, LICENCE_ID) VALUES (d_id, aLicence_id);
                    end if;
                end if;
            end loop;
    end if;

END get_drivers;
CALL get_drivers('Łódź', 'Fabryczna', '12c', null, '70-445', 'Izabela', 'Wierzbicka-Schmidt', 'K',
                 to_date('1983-07-16', 'YYYY-MM-DD'), '921002023', 'P2185920', to_date('2017-03-15', 'YYYY-MM-DD'),
                 'C+E', LICENCELIST('Transport gabarytowy i ponadgabarytowy', 'Żywy ładeunek', 'Napoje i ciuchy',
                                    'Płyny łatwopalne'));

SELECT *
FROM Driver;

-- do bazy dodana zostanie kolumna payouts (data wykonania raportu, id kierowcy, pokonany przez niego dystans, kwota za km jaką zarabia, zarobiona przez niego kwota)
create table Payouts
(
    id          integer GENERATED BY DEFAULT ON NULL AS IDENTITY,
    payout_date Date          NOT NULL,
    Driver_id   integer       NOT NULL,
    distance    number(8, 2)  NOT NULL,
    fee         number(4, 2)  NOT NULL,
    salary      number(10, 2) NOT NULL,
    CONSTRAINT Payouts_Driver FOREIGN KEY (Driver_id) REFERENCES Driver (id),
    CONSTRAINT unique_Payouts UNIQUE (Driver_id, Payout_date)
);

CREATE OR REPLACE PROCEDURE generate_payouts
    IS
    proc_distance number(8, 2);
    driver_id     int;
    proc_fee      number(4, 2);
    proc_salary   number(10, 2);
    CURSOR get_distance IS
        SELECT DRIVER_ID, SUM(distance)
        FROM TRUCKSET
                 INNER JOIN "Order" O on O.ID = TRUCKSET.ORDER_ID
        WHERE EXTRACT(MONTH FROM order_time) =
              (SELECT to_number(to_char(to_date(EXTRACT(MONTH FROM SYSDATE), 'MONTH'), 'mm')) FROM dual)
          AND EXTRACT(YEAR FROM order_time) = EXTRACT(YEAR FROM SYSDATE)
        GROUP BY DRIVER_ID;
BEGIN

    IF NOT get_distance%ISOPEN THEN
        OPEN get_distance;
    END IF;

    LOOP
        FETCH get_distance INTO driver_id, proc_distance;
        EXIT WHEN get_distance%NOTFOUND;

        SELECT FEE_PER_KILOMETER, (DRIVER.FEE_PER_KILOMETER * proc_distance)
        INTO proc_fee, proc_salary
        FROM DRIVER
        WHERE DRIVER.ID = driver_id;

        INSERT INTO Payouts (payout_date, Driver_id, distance, fee, salary)
        values (SYSDATE, driver_id, proc_distance, proc_fee, proc_salary);
    END LOOP;
    CLOSE get_distance;
END generate_payouts;
CALL generate_payouts();

-- procedura wypisze wszystkich kierowców którzy zarobii we wskazanym miesiącu (i roku) więcej niż podaną przez użytkownika kwotę.
-- Miesiąc powinien być podany jako nazwa miesiąca (pełna nazwa lub skrót) w języku angielskim.
CREATE OR REPLACE PROCEDURE get_monthly_salary(month varchar2, year int, salary_bound int)
    IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(RPAD('Employee Name', 30) || RPAD('Distance', 12) || RPAD('Fee per km', 14) ||
                         RPAD('Month salary', 16));
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------------------');

    BEGIN
        FOR v_rec IN ( SELECT DRIVER.FIRST_NAME,
                              DRIVER.LAST_NAME,
                              Payouts.distance,
                              Payouts.fee,
                              Payouts.salary
                       FROM PAYOUTS
                                INNER JOIN DRIVER ON DRIVER.ID = Payouts.Driver_id
                       WHERE DRIVER.ID = driver_id
                         AND EXTRACT(MONTH FROM payout_date) =
                             (SELECT to_number(to_char(to_date(month, 'MONTH'), 'mm')) FROM dual)
                         AND EXTRACT(YEAR FROM payout_date) = year
                         AND salary >= salary_bound)
            LOOP
                dbms_output.put_line(RPAD(v_rec.FIRST_NAME || ' ' || v_rec.LAST_NAME, 30) || RPAD(v_rec.distance, 12) ||
                                     RPAD(v_rec.fee, 14) ||
                                     RPAD(v_rec.salary, 16));
            END LOOP;
    END;
END get_monthly_salary;
CALL get_monthly_salary('May', 2021, 500);

-- Trigger aktualizuje przebieg ciężarówki po każdej wykonanej trasie (dodaniu nowego rekordu do tabeli TRUCKSET).

ALTER TABLE TRUCK
    ADD mileage number(11, 1) default 0 NOT NULL;
SELECT *
from TRUCK;

create OR REPLACE procedure set_mileage
    Is
BEGIN
    FOR v_rec IN (SELECT * from TRUCK)
        LOOP
            IF v_rec.mileage = 0 THEN
                UPDATE TRUCK
                SET mileage = (SELECT mileage from LAST_SERVICE WHERE id = v_rec.LAST_SERVICE_ID)
                WHERE id = v_rec.id;
            end if;
        end loop;
end;

call set_mileage();

CREATE OR REPLACE TRIGGER update_mileage
    AFTER INSERT
    ON TRUCKSET
    FOR EACH ROW
BEGIN
    UPDATE TRUCK
    SET mileage = mileage + (SELECT distance from "Order" WHERE "Order".ID = :new.ORDER_ID)
    WHERE ID = :new.truck_id;
end;


-- trigger po dodaniu lub uaktualnieniu licencji kierowcy zaktualizuje jego zarobki
CREATE OR REPLACE TRIGGER calculate_salary
    AFTER INSERT OR UPDATE
    ON DRIVERS_LICENCES
    FOR EACH ROW
DECLARE
    current_salary number;
BEGIN
    SELECT NVL(0.41 + BONUS_FEE, 0.41)
    into current_salary
    FROM ADDITIONAL_LICENCE
    WHERE ID = :new.licence_id;
    UPDATE DRIVER SET FEE_PER_KILOMETER = current_salary WHERE ID = :new.DRIVER_ID;
end;
