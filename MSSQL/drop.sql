USE [TransportCompany]
-- foreign keys
ALTER TABLE Address
    DROP CONSTRAINT Adress_City;

ALTER TABLE Cargo
    DROP CONSTRAINT Cargo_Additional_Licence;

ALTER TABLE Cargo
    DROP CONSTRAINT Cargo_Cargo_type;

ALTER TABLE City
    DROP CONSTRAINT City_Country;

ALTER TABLE Client
    DROP CONSTRAINT Client_Adress;

ALTER TABLE Driver
    DROP CONSTRAINT Driver_Adress;

ALTER TABLE Driver
    DROP CONSTRAINT Driver_Driving_Licence;

ALTER TABLE Drivers_Licences
    DROP CONSTRAINT Drivers_permissions_Driver;

ALTER TABLE Drivers_Licences
    DROP CONSTRAINT Drivers_permissions_Permission;

ALTER TABLE Truck_Model
    DROP CONSTRAINT Model_Brand;

ALTER TABLE "Order"
    DROP CONSTRAINT Order_Address;

ALTER TABLE "Order"
    DROP CONSTRAINT Order_Client;

ALTER TABLE TruckSet
    DROP CONSTRAINT Order_TruckSet_Driver;

ALTER TABLE Order_details
    DROP CONSTRAINT Order_details_Cargo;

ALTER TABLE Order_details
    DROP CONSTRAINT Order_details_Order;

ALTER TABLE TruckSet
    DROP CONSTRAINT Table_29_Trailer;

ALTER TABLE TruckSet
    DROP CONSTRAINT Table_29_Truck_Tractor;

ALTER TABLE Trailer
    DROP CONSTRAINT Trailer_Last_Service;

ALTER TABLE Trailer_Model
    DROP CONSTRAINT Trailer_Model_Brand;

ALTER TABLE Trailer_Model
    DROP CONSTRAINT Trailer_Model_Cargo_type;

ALTER TABLE Trailer
    DROP CONSTRAINT Trailer_Trailer_Model;

ALTER TABLE Truck
    DROP CONSTRAINT Truck_Tractor_Last_Service;

ALTER TABLE Truck
    DROP CONSTRAINT Truck_Truck_Model;

ALTER TABLE TruckSet
    DROP CONSTRAINT Trucks_Order;

-- tables
DROP TABLE IF EXISTS Additional_Licence;

DROP TABLE IF EXISTS Address;

DROP TABLE IF EXISTS Brand;

DROP TABLE IF EXISTS Cargo;

DROP TABLE IF EXISTS Cargo_type;

DROP TABLE IF EXISTS City;

DROP TABLE IF EXISTS Client;

DROP TABLE IF EXISTS Country;

DROP TABLE IF EXISTS Driver;

DROP TABLE IF EXISTS Drivers_Licences;

DROP TABLE IF EXISTS Driving_Licence;

DROP TABLE IF EXISTS Last_Service;

DROP TABLE IF EXISTS "Order";

DROP TABLE IF EXISTS Order_details;

DROP TABLE IF EXISTS Trailer;

DROP TABLE IF EXISTS Trailer_Model;

DROP TABLE IF EXISTS Truck;

DROP TABLE IF EXISTS TruckSet;

DROP TABLE IF EXISTS Truck_Model;

-- End of file.
