ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD';

-- WHERE
-- 1. Kierowcy którzy są obecnie w trasie
SELECT FIRST_NAME || ' ' || LAST_NAME "Drivers on the road"
FROM DRIVER
WHERE AVAILABLE = 'N'
ORDER BY "Drivers on the road";

-- 2. Kierowcy przed 40
SELECT FIRST_NAME || ' ' || LAST_NAME "Drivers younger than 40"
FROM DRIVER
WHERE EXTRACT(year FROM SYSDATE) - EXTRACT(year FROM BORN_DATE) < 40;

-- 3. Wszystkie ciecze jakich przewóz oferuje firma
SELECT NAME
FROM CARGO
         INNER JOIN CARGO_TYPE CT on CT.ID = CARGO.CARGO_TYPE_ID
WHERE TYPE = 'Ciecz';

-- 4. Kierowcy którzy jechali do dowolnej ubojni
SELECT DISTINCT FIRST_NAME || ' ' || LAST_NAME
FROM DRIVER
         INNER JOIN TRUCKSET T on DRIVER.ID = T.DRIVER_ID
         INNER JOIN "Order" O on O.ID = T.ORDER_ID
         INNER JOIN CLIENT C2 on C2.ID = O.CLIENT_ID
WHERE NAME LIKE 'Ubojnia%';

-- 5. Lista towarów do przewozu których potrzeba dodatkowych licencji
SELECT NAME "Cargo name", LICENCE_NAME "Required licence"
FROM CARGO
         INNER JOIN ADDITIONAL_LICENCE AL on AL.ID = CARGO.ADDITIONAL_LICENCE_ID
WHERE ADDITIONAL_LICENCE_ID IS NOT NULL;

-- JOIN
-- 1.Osoby mające licencję na przewóz substancji toksycznych lub żrących
SELECT FIRST_NAME || ' ' || LAST_NAME "Driver"
FROM DRIVER
         INNER JOIN DRIVERS_LICENCES DL on DRIVER.ID = DL.DRIVER_ID
         INNER JOIN ADDITIONAL_LICENCE AL on AL.ID = DL.LICENCE_ID
WHERE LICENCE_NAME LIKE '%_ubstancje%';

-- 2. Lista ciężarówek posortowanych ze wzglęgu na przejechaną odległość
SELECT *
FROM (SELECT MODEL, PLATE, MILEAGE
      FROM TRUCK
               INNER JOIN LAST_SERVICE LS on LS.ID = TRUCK.LAST_SERVICE_ID
               INNER JOIN TRUCK_MODEL TM on TM.ID = TRUCK.TRUCK_MODEL_ID
      ORDER BY MILEAGE DESC)
WHERE ROWNUM <= 5;

--3. Top 5 klientów którzy złożyli zamówienia o łącznej największej wartości
SELECT *
FROM (
         SELECT C2.NAME,
                TO_CHAR(SUM(FEE_PER_KILOMETER * DISTANCE), '99G999D99L') "Ordered cargo value"
         FROM TRUCKSET
                  INNER JOIN "Order" O on O.ID = TRUCKSET.ORDER_ID
                  INNER JOIN CLIENT C2 on C2.ID = O.CLIENT_ID
                  INNER JOIN ORDER_DETAILS OD on O.ID = OD.ORDER_ID
                  INNER JOIN CARGO C3 on C3.ID = OD.CARGO_ID
         GROUP BY C2.NAME, C3.NAME
         ORDER BY "Ordered cargo value" DESC
     )
WHERE rownum <= 5;

--4. Wypisz którym rodzajem przyczep przewiezniono najwięcej towarów
SELECT TRAILER_TYPE, SUM(CARGO_AMOUNT) "Transported cargo", MEASURE_UNIT
FROM TRUCKSET
         INNER JOIN TRAILER T on T.ID = TRUCKSET.TRAILER_ID
         INNER JOIN TRAILER_MODEL TM on TM.ID = T.TRAILER_MODEL_ID
         INNER JOIN "Order" O on O.ID = TRUCKSET.ORDER_ID
         INNER JOIN ORDER_DETAILS OD on O.ID = OD.ORDER_ID
         INNER JOIN CARGO C2 on C2.ID = OD.CARGO_ID
         INNER JOIN CARGO_TYPE CT on CT.ID = C2.CARGO_TYPE_ID
GROUP BY TRAILER_TYPE, MEASURE_UNIT
ORDER BY "Transported cargo" DESC;

--5. Dla każdego kierowcy wypisz imie, nazwisko oraz ilość przewiezionych przez niego towarów z podziałem na kategorie

SELECT FIRST_NAME || ' ' || LAST_NAME "Driver name",
       NAME                           "Cargo name",
       SUM(CARGO_AMOUNT)              "Transported goods",
       MEASURE_UNIT
FROM ORDER_DETAILS
         INNER JOIN TRUCKSET T on ORDER_DETAILS.ORDER_ID = T.ORDER_ID
         INNER JOIN DRIVER D on D.ID = T.DRIVER_ID
         INNER JOIN CARGO C2 on C2.ID = ORDER_DETAILS.CARGO_ID
         INNER JOIN CARGO_TYPE CT on CT.ID = C2.CARGO_TYPE_ID
GROUP BY NAME,
         FIRST_NAME || ' ' || LAST_NAME,
         MEASURE_UNIT
ORDER BY "Driver name",
         SUM(order_details.cargo_amount) DESC;

-- GROUP BY + 2 HAVING

-- 1. Wypisz imiona i nazwiska kierowców z libczą dodatkowych licencji > 2
SELECT FIRST_NAME || ' ' || LAST_NAME, COUNT(*) "No. of licences"
FROM DRIVER
         INNER JOIN DRIVERS_LICENCES DL on DRIVER.ID = DL.DRIVER_ID
GROUP BY FIRST_NAME || ' ' || LAST_NAME
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;

-- 2. Wszystkie zamówienie gdzie nie jechało dwóch kierowców
SELECT "Order".ID, NAME, TO_CHAR(ORDER_TIME, 'yyyy-mm-dd'), TO_CHAR(DELIVERY_TIME, 'yyyy-mm-dd')
FROM "Order"
         INNER JOIN CLIENT C2 on C2.ID = "Order".CLIENT_ID
WHERE "Order".ID IN (SELECT ORDER_ID
                     FROM (
                              SELECT ORDER_ID, count(*)
                              FROM TRUCKSET
                              GROUP BY ORDER_ID
                              HAVING count(*) <> 2))
ORDER BY "Order".ID;

-- 3. Adres/y pod który/e najczęściej zawożono ładunek
WITH temp as (SELECT ADDRESS_ID, COUNT(ADDRESS_ID) "Course Number"
              FROM "Order"
                       INNER JOIN CLIENT C2 on C2.ID = "Order".CLIENT_ID
                       INNER JOIN ADDRESS A2 on A2.ID = "Order".PICKUP_ADDRESS
              GROUP BY ADDRESS_ID
              ORDER BY COUNT(ADDRESS_ID) DESC)
SELECT STREET_NAME || ' ' || BUILDINGS_NUMBER || ' ' || Name "Adress", "Course Number"
FROM ADDRESS
         INNER JOIN temp ON ADDRESS.ID = temp.ADDRESS_ID
         INNER JOIN CITY C3 on C3.ID = ADDRESS.CITY_ID
where ADDRESS_ID IN (SELECT ADDRESS_ID FROM temp)
  AND "Course Number" = (SELECT max("Course Number") from temp);

--4. Wypisać imie, nazwisko i zarobioną w sumę tych kierowców, którzy w maju zarobili ponad średnią zarobków wszystkich kierowców

WITH TEMP AS (
    SELECT DRIVER_ID     "Driver ID",
           SUM(distance) "Drived Distance"
    FROM "Order"
             INNER JOIN TRUCKSET T on "Order".ID = T.ORDER_ID
    WHERE EXTRACT(MONTH FROM order_time) = 5
    GROUP BY DRIVER_ID)
SELECT DRIVER.FIRST_NAME || ' ' || DRIVER.LAST_NAME                        "Driver name",
       "Drived Distance"                                                   "Drived distance in May",
       FEE_PER_KILOMETER                                                   "Salary per kilometer",
       TO_CHAR(DRIVER.FEE_PER_KILOMETER * "Drived Distance", '99G999D99L') "Monthly salary"
FROM DRIVER
         INNER JOIN TEMP ON ID = TEMP."Driver ID"
WHERE DRIVER.FEE_PER_KILOMETER * "Drived Distance" >
      (SELECT AVG(DRIVER.FEE_PER_KILOMETER * "Drived Distance") FROM TEMP)
GROUP BY DRIVER.FIRST_NAME || ' ' || DRIVER.LAST_NAME,
         "Drived Distance",
         FEE_PER_KILOMETER,
         FEE_PER_KILOMETER * "Drived Distance"
ORDER BY "Monthly salary" DESC;


--5. Wypisz nazwiska kierowców zgodnie z ich stażem
WITH seniority AS (
    SELECT ID      AS "Driver ID",
           CASE
               WHEN EXTRACT(year FROM SYSDATE) - EXTRACT(year FROM employment_date) <= 15 THEN '10-15 years'
               WHEN EXTRACT(year FROM SYSDATE) - EXTRACT(year FROM employment_date) <= 20 THEN '15-20 years'
               WHEN EXTRACT(year FROM SYSDATE) - EXTRACT(year FROM employment_date) <= 25 THEN '15-25 years'
               ELSE '25+ years'
               END AS "Seniority thresholds"
    FROM DRIVER,
         DUAL
    GROUP BY id, EMPLOYMENT_DATE
)
SELECT "Seniority thresholds",
       LISTAGG(DRIVER.FIRST_NAME || ' ' || DRIVER.LAST_NAME, ', ')
               WITHIN GROUP (ORDER BY "Seniority thresholds", LAST_NAME) as Employees
FROM DRIVER,
     SENIORITY
WHERE DRIVER.ID = seniority."Driver ID"
GROUP BY "Seniority thresholds";
