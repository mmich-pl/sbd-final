/* procedura otrzyma jako argument nazwę miasta, jeżeli zostały wykoanane kursy do tego miasta zostanie wypisana ich
   łączna ilość z najczęsciej przewożonym towarem*/
CREATE OR ALTER PROCEDURE print_report @city_name varchar(30)
AS
BEGIN
    DECLARE @city_id int, @course_amount int, @course_amount2 int, @cargo_name varchar(50);

    SET @city_id = ISNULL((SELECT id
                           from City
                           where name = @city_name
                             AND City.id in (SELECT DISTINCT A.city_id
                                             FROM [Order]
                                                      INNER JOIN Client C ON C.id = [Order].client_id
                                                      INNER JOIN Address A ON A.id = C.Address_id)), 0)

    IF @city_id = 0
        BEGIN
            PRINT N'Nigdy nie wykonano kursu do tego miasta!'
            RETURN
        END

    SELECT @course_amount = COUNT(1)
    FROM [Order]
             INNER JOIN Client C ON C.id = [Order].client_id
             INNER JOIN Address A ON A.id = C.Address_id
             INNER JOIN City C2 ON C2.id = A.City_id
    WHERE C2.id = @city_id
    GROUP BY C2.id

    SELECT TOP (1) @cargo_name = C.name, @course_amount2 = COUNT(1)
    from [Order]
             INNER JOIN Order_details Od ON [Order].id = Od.Order_id
             INNER JOIN Cargo C ON C.id = Od.Cargo_id
             INNER JOIN Client C2 ON C2.id = [Order].client_id
             INNER JOIN Address A ON A.id = C2.Address_id
    WHERE A.City_id = @city_id
    GROUP BY C.name
    ORDER BY COUNT(1) DESC;

    PRINT 'Do ' + @city_name + ' wykonano ' + CAST(@course_amount AS Varchar) +
          N' kurs/y/ów. Najczęsciej przewożonym towarem był/o ' +
          + @cargo_name + ' (' + CAST(@course_amount2 AS Varchar) + ' kursy)';
END
GO;

EXEC print_report 'Lublin'

/*procedura otrzymuje w jako parametr nazwę klienta i nazwę ładunku, jeżeli kiedykolwiek została wykonana dostawa
z podanym ładunkiem do podanego klienta zostanie ona powtórzona (pojedyńczy przewóz towaru z naczepą o największej
dostepnej w tym moemncie pojemności wykonany przez maksymalnie jednego kierowcę), w innym wypadku na konsoli zostanie
wydrukowany odpowiedni komunikat*/

CREATE OR ALTER PROCEDURE repeat_transport @client Varchar(50), @cargo Varchar(50)
AS
BEGIN
    DECLARE @client_id int, @client_address_id int, @distance int,
        @licence_id int, @driver_id int, @truck_id int, @trailer_id int, @order_id int, @trailer_capacity int;

    SET @client_id = ISNULL((SELECT id from CLIENT where name = @client), 0)

    IF @client_id = 0
        BEGIN
            PRINT N'W bazie nie istnieje klient o podanej nazwie!'
            RETURN
        END

    SELECT DISTINCT TOP (1) @distance = [Order].distance
    FROM [Order]
             INNER JOIN Order_details Od on [Order].id = Od.Order_id
             INNER JOIN Cargo C on Od.Cargo_id = C.id
    WHERE Client_id = @client_id
      AND C.name = @cargo

    IF @distance IS NULL
        BEGIN
            PRINT N'Nie wykonano dostawy z towarem: ' + @cargo + ' do klienta: ' + @client +
                  ' lub firma nie oferuje przewozu takiego towaru';
            RETURN;
        END

    -- wybór wolnego kierowcy
    SELECT @licence_id = Additional_Licence_id
    FROM Cargo
    WHERE name = @cargo

    SELECT TOP (1) @driver_id = id
    FROM Driver
    WHERE (@licence_id IS NULL AND available = 'T')
       OR (@licence_id IS NOT NULL AND available = 'T'
        AND id IN
            (SELECT Driver_id from Drivers_Licences where Licence_id = @licence_id))

    -- wybór wolnej ciężarówki
    SET @truck_id = (SELECT TOP 1 id
                     FROM Truck
                     WHERE available = 'T')

    -- wybór wolnej naczepy
    SELECT TOP 1 @trailer_id = Trailer.id, @trailer_capacity = TM.max_capacity
    FROM Trailer
             INNER JOIN Trailer_Model TM on Trailer.Trailer_Model_id = TM.id
             INNER JOIN Cargo_type Ct on TM.Cargo_type_id = Ct.id
             INNER JOIN Cargo C on Ct.id = C.Cargo_type_id
    WHERE available = 'T'
      AND C.name = @cargo
    ORDER BY Tm.max_capacity;

    IF @truck_id IS NULL OR @driver_id IS NULL OR @truck_id IS NULL
        BEGIN
            PRINT N'Nie jest możliwe zrealizowanie zamówienia!'
            RETURN
        END

    -- addres klienta
    SELECT @client_address_id = Address_id FROM Client where id = @client_id;

    UPDATE Driver SET available ='T' WHERE id = @driver_id;
    UPDATE Truck SET available ='T' WHERE id = @truck_id;
    UPDATE Trailer SET available ='T' WHERE id = @trailer_id;

    INSERT INTO [Order] (Client_id, order_time, delivery_time, pickup_address, distance)
    VALUES (@client_id, CONVERT(date, GETDATE()),
            IIF(@distance > 400, CONVERT(date, GETDATE() + 1), CONVERT(date, GETDATE())),
            @client_address_id, @distance)

    SET @order_id = SCOPE_IDENTITY();

    INSERT INTO Order_details (Cargo_id, cargo_amount, discount_per_truck, Order_id)
    VALUES ((SELECT id FROM Cargo WHERE name = @cargo), @trailer_capacity, 0, @order_id)

    INSERT INTO TruckSet (Order_id, Trailer_id, Truck_id, Driver_id)
    VALUES (@order_id, @trailer_id, @truck_id, @driver_id)

    PRINT N'Pomyślnie zakończono operację';

END
GO;

EXEC repeat_transport 'Gospodarstwo Rolne Grzegorz Bardowski', 'Wapno'


/* Wyzwalacz ma zapewnić, że nie jest możliwe przypisanie kursu do kierowcy, który nie ma odpowiedniej licencji*/

CREATE OR ALTER TRIGGER check_licences
    ON TruckSet
    FOR INSERT, UPDATE
    AS
BEGIN

    DECLARE @order_id int, @driver_id int, @have_licence int;
    SELECT @order_id = Order_id, @driver_id = Driver_id from inserted

    SELECT @have_licence = COUNT(1)
    FROM Drivers_Licences
    WHERE Driver_id = @driver_id
      AND Licence_id = (SELECT DISTINCT C.Additional_Licence_id
                        FROM TruckSet
                                 INNER JOIN Order_details Od on TruckSet.Order_id = Od.Order_id
                                 INNER JOIN Cargo C on C.id = Od.Cargo_id
                        WHERE Od.Order_id = @order_id);

    IF @have_licence <> 0
        BEGIN
            ROLLBACK TRANSACTION
            RAISERROR (N'Wybrany kierowca nie ma odpowiednich uprawnień żeby wykonać ten transport', 16, 1)
        END
END
GO;


UPDATE TruckSet
SET Driver_id = 7
WHERE Order_id = 12
  AND Driver_id = 20;

/* wyzwalacz ma zapewnić,że zostanie dodana zniżka dla tych klientów, którzy złożyli zamówienie do wykonania,
   którego potrzebne były co najmniej 2 ciężarówki (powyzej 4 ciężarówki rabat dalej nie rośnie) */

CREATE OR ALTER TRIGGER add_discount
    ON Order_details
    FOR INSERT, UPDATE
    AS
BEGIN

    DECLARE @truck_amount int, @order_id int, @cost money;
    DECLARE get_order_id CURSOR FOR (SELECT DISTINCT Order_id FROM inserted)
    OPEN get_order_id;
    FETCH NEXT FROM get_order_id INTO @order_id;

    WHILE @@FETCH_STATUS = 0
        BEGIN
            PRINT @order_id

            SELECT @truck_amount = COUNT(truck_id)
            FROM TruckSet
            WHERE TruckSet.Order_id = @order_id
            GROUP BY TruckSet.Order_id

            SELECT @cost = fee_per_kilometer * distance
            from [Order]
                     INNER JOIN Order_details Od ON [Order].id = Od.Order_id
                     INNER JOIN Cargo C ON C.id = Od.Cargo_id
            WHERE Od.Order_id = @order_id

            UPDATE Order_details
            SET discount_per_truck = CASE
                                         WHEN @truck_amount = 1 THEN 0
                                         WHEN @truck_amount = 2 THEN 0.02 * @cost
                                         WHEN @truck_amount = 3 THEN 0.032 * @cost
                                         WHEN @truck_amount >= 4 THEN 0.05 * @cost
                END
            WHERE Order_id = @order_id;
            FETCH NEXT FROM get_order_id INTO @order_id;
        END

    CLOSE get_order_id
    DEALLOCATE get_order_id
END
GO;
