USE [TransportCompany]

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-03 12:51:13.832

-- tables
-- Table: Additional_Licence
CREATE TABLE Additional_Licence
(
    id           int IDENTITY (1,1) NOT NULL,
    licence_name varchar(100)       NOT NULL,
    description  varchar(255)       NULL,
    bonus_fee    money              NOT NULL,
    CONSTRAINT Additional_Licence_pk PRIMARY KEY (id)
);

-- Table: Address
CREATE TABLE Address
(
    id               int IDENTITY (1,1) NOT NULL,
    street_name      varchar(50)        NOT NULL,
    buildings_number char(5)            NOT NULL,
    local_number     int                NULL,
    zip_code         char(6)            NOT NULL,
    City_id          int                NOT NULL,
    CONSTRAINT Address_pk PRIMARY KEY (id)
);

-- Table: Brand
CREATE TABLE Brand
(
    id   int IDENTITY (1,1) NOT NULL,
    name varchar(30)        NOT NULL,
    CONSTRAINT Brand_pk PRIMARY KEY (id)
);

-- Table: Cargo
CREATE TABLE Cargo
(
    id                    int IDENTITY (1,1) NOT NULL,
    name                  varchar(25)        NOT NULL,
    fee_per_kilometer     money              NOT NULL,
    Cargo_type_id         int                NOT NULL,
    Additional_Licence_id int                NULL,
    CONSTRAINT Cargo_pk PRIMARY KEY (id)
);

-- Table: Cargo_type
CREATE TABLE Cargo_type
(
    id           int IDENTITY (1,1) NOT NULL,
    type         varchar(30)        NOT NULL,
    measure_unit varchar(10)        NOT NULL,
    CONSTRAINT Cargo_type_pk PRIMARY KEY (id)
);

-- Table: City
CREATE TABLE City
(
    id         int IDENTITY (1,1) NOT NULL,
    name       varchar(50)        NOT NULL,
    Country_id int                NOT NULL,
    CONSTRAINT City_pk PRIMARY KEY (id)
);

-- Table: Client
CREATE TABLE Client
(
    id         int IDENTITY (1,1) NOT NULL,
    name       varchar(50)        NOT NULL,
    tax_number char(12)           NULL,
    phone      char(9)            NOT NULL,
    email      varchar(50)        NOT NULL,
    Address_id int                NOT NULL,
    CONSTRAINT Client_pk PRIMARY KEY (id)
);

-- Table: Country
CREATE TABLE Country
(
    id   int IDENTITY (1,1) NOT NULL,
    name varchar(50)        NOT NULL,
    CONSTRAINT Country_pk PRIMARY KEY (id)
);

-- Table: Driver
CREATE TABLE Driver
(
    id                 int IDENTITY (1,1) NOT NULL,
    first_name         varchar(30)        NOT NULL,
    last_name          varchar(30)        NOT NULL,
    gender             char(1)            NOT NULL,
    born_date          date               NOT NULL,
    employment_date    date               NOT NULL,
    fee_per_kilometer  money              NOT NULL,
    phone              char(9)            NOT NULL,
    email              varchar(150)       NOT NULL,
    available          char(1)            NOT NULL,
    Driving_Licence_id int                NOT NULL,
    Address_id         int                NOT NULL,
    CONSTRAINT Driver_pk PRIMARY KEY (id),
    CONSTRAINT check_driver_gender CHECK (gender in ('K', 'M')),
    CONSTRAINT check_driver_availability CHECK (available in ('T', 'N'))
);

-- Table: Drivers_Licences
CREATE TABLE Drivers_Licences
(
    Driver_id  int NOT NULL,
    Licence_id int NOT NULL,
    CONSTRAINT Drivers_Licences_pk PRIMARY KEY (Licence_id, Driver_id)
);

-- Table: Driving_Licence
CREATE TABLE Driving_Licence
(
    id              int IDENTITY (1,1) NOT NULL,
    document_id     varchar(50)        NOT NULL,
    release_date    date               NOT NULL,
    expiration_date date               NOT NULL,
    category        varchar(5)         NOT NULL,
    CONSTRAINT Driving_Licence_pk PRIMARY KEY (id)
);

-- Table: Last_Service
CREATE TABLE Last_Service
(
    id                     int IDENTITY (1,1) NOT NULL,
    mileage                decimal(11, 1)     NULL,
    last_review            date               NOT NULL,
    review_expiration_date date               NOT NULL,
    approved_for_driving   char(1)            NOT NULL,
    CONSTRAINT Last_Service_pk PRIMARY KEY (id)
);

-- Table: Order
CREATE TABLE "Order"
(
    id             int IDENTITY (1,1) NOT NULL,
    client_id      int                NOT NULL,
    order_time     datetime           NOT NULL,
    delivery_time  datetime,
    pickup_address int                NOT NULL,
    distance       int                NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY (id)
);

-- Table: Order_details
CREATE TABLE Order_details
(
    id                 int IDENTITY (1,1) NOT NULL,
    Cargo_id           int                NOT NULL,
    cargo_amount       int                NOT NULL,
    discount_per_truck money              NULL,
    Order_id           int                NOT NULL,
    CONSTRAINT Order_details_pk PRIMARY KEY (id)
);

-- Table: Trailer
CREATE TABLE Trailer
(
    id               int IDENTITY (1,1) NOT NULL,
    plate            varchar(10)        NOT NULL,
    purchase_date    date               NOT NULL,
    available        char(1)            NOT NULL,
    Last_Service_id  int                NOT NULL,
    Trailer_Model_id int                NOT NULL,
    CONSTRAINT Trailer_pk PRIMARY KEY (id),
    CONSTRAINT check_trailer_availability CHECK (available in ('T', 'N'))

);

-- Table: Trailer_Model
CREATE TABLE Trailer_Model
(
    id            int IDENTITY (1,1) NOT NULL,
    trailer_type  varchar(50)        NOT NULL,
    axis_number   int                NOT NULL,
    max_capacity  int                NOT NULL,
    Brand_id      int                NOT NULL,
    Cargo_type_id int                NOT NULL,
    CONSTRAINT Trailer_Model_pk PRIMARY KEY (id)
);

-- Table: Truck
CREATE TABLE Truck
(
    id              int IDENTITY (1,1) NOT NULL,
    plate           varchar(10)        NOT NULL,
    purchase_date   date               NOT NULL,
    production_date date               NOT NULL,
    available       char(1)            NOT NULL,
    Last_Service_id int                NOT NULL,
    color           varchar(20)        NOT NULL,
    Truck_Model_id  int                NOT NULL,
    CONSTRAINT Truck_pk PRIMARY KEY (id),
    CONSTRAINT check_truck_availability CHECK (available in ('T', 'N'))

);

-- Table: TruckSet
CREATE TABLE TruckSet
(
    Order_id   int NOT NULL,
    Trailer_id int NOT NULL,
    Truck_id   int NOT NULL,
    Driver_id  int NOT NULL,
    CONSTRAINT TruckSet_pk PRIMARY KEY (Order_id, Trailer_id, Truck_id, Driver_id)
);

-- Table: Truck_Model
CREATE TABLE Truck_Model
(
    id                 int IDENTITY (1,1) NOT NULL,
    model              varchar(50)        NOT NULL,
    Brand_id           int                NOT NULL,
    fuel_tank_capacity int                NOT NULL,
    engine_power       int                NOT NULL,
    engine_capacity    decimal(3, 1)      NOT NULL,
    axis_number        int                NOT NULL,
    transmission       varchar(30)        NOT NULL,
    CONSTRAINT Truck_Model_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Adress_City (table: Address)
ALTER TABLE Address
    ADD CONSTRAINT Adress_City
        FOREIGN KEY (City_id)
            REFERENCES City (id);

-- Reference: Cargo_Additional_Liecence (table: Cargo)
ALTER TABLE Cargo
    ADD CONSTRAINT Cargo_Additional_Licence
        FOREIGN KEY (Additional_Licence_id)
            REFERENCES Additional_Licence (id);

-- Reference: Cargo_Cargo_type (table: Cargo)
ALTER TABLE Cargo
    ADD CONSTRAINT Cargo_Cargo_type
        FOREIGN KEY (Cargo_type_id)
            REFERENCES Cargo_type (id);

-- Reference: City_Country (table: City)
ALTER TABLE City
    ADD CONSTRAINT City_Country
        FOREIGN KEY (Country_id)
            REFERENCES Country (id);

-- Reference: Client_Adress (table: Client)
ALTER TABLE Client
    ADD CONSTRAINT Client_Adress
        FOREIGN KEY (Address_id)
            REFERENCES Address (id);

-- Reference: Driver_Adress (table: Driver)
ALTER TABLE Driver
    ADD CONSTRAINT Driver_Adress
        FOREIGN KEY (Address_id)
            REFERENCES Address (id);

-- Reference: Driver_Driving_Licence (table: Driver)
ALTER TABLE Driver
    ADD CONSTRAINT Driver_Driving_Licence
        FOREIGN KEY (Driving_Licence_id)
            REFERENCES Driving_Licence (id);

-- Reference: Drivers_permissions_Driver (table: Drivers_Licences)
ALTER TABLE Drivers_Licences
    ADD CONSTRAINT Drivers_permissions_Driver
        FOREIGN KEY (Driver_id)
            REFERENCES Driver (id);

-- Reference: Drivers_permissions_Permission (table: Drivers_Licences)
ALTER TABLE Drivers_Licences
    ADD CONSTRAINT Drivers_permissions_Permission
        FOREIGN KEY (Licence_id)
            REFERENCES Additional_Licence (id);

-- Reference: Model_Brand (table: Truck_Model)
ALTER TABLE Truck_Model
    ADD CONSTRAINT Model_Brand
        FOREIGN KEY (Brand_id)
            REFERENCES Brand (id);

-- Reference: Order_Address (table: Order)
ALTER TABLE "Order"
    ADD CONSTRAINT Order_Address
        FOREIGN KEY (pickup_address)
            REFERENCES Address (id);

-- Reference: Order_Client (table: Order)
ALTER TABLE "Order"
    ADD CONSTRAINT Order_Client
        FOREIGN KEY (Client_id)
            REFERENCES Client (id);

-- Reference: Order_TruckSet_Driver (table: TruckSet)
ALTER TABLE TruckSet
    ADD CONSTRAINT Order_TruckSet_Driver
        FOREIGN KEY (Driver_id)
            REFERENCES Driver (id);

-- Reference: Order_details_Cargo (table: Order_details)
ALTER TABLE Order_details
    ADD CONSTRAINT Order_details_Cargo
        FOREIGN KEY (Cargo_id)
            REFERENCES Cargo (id);

-- Reference: Order_details_Order (table: Order_details)
ALTER TABLE Order_details
    ADD CONSTRAINT Order_details_Order
        FOREIGN KEY (Order_id)
            REFERENCES "Order" (id);

-- Reference: Table_29_Trailer (table: TruckSet)
ALTER TABLE TruckSet
    ADD CONSTRAINT Table_29_Trailer
        FOREIGN KEY (Trailer_id)
            REFERENCES Trailer (id);

-- Reference: Table_29_Truck_Tractor (table: TruckSet)
ALTER TABLE TruckSet
    ADD CONSTRAINT Table_29_Truck_Tractor
        FOREIGN KEY (Truck_id)
            REFERENCES Truck (id);

-- Reference: Trailer_Last_Service (table: Trailer)
ALTER TABLE Trailer
    ADD CONSTRAINT Trailer_Last_Service
        FOREIGN KEY (Last_Service_id)
            REFERENCES Last_Service (id);

-- Reference: Trailer_Model_Brand (table: Trailer_Model)
ALTER TABLE Trailer_Model
    ADD CONSTRAINT Trailer_Model_Brand
        FOREIGN KEY (Brand_id)
            REFERENCES Brand (id);

-- Reference: Trailer_Model_Cargo_type (table: Trailer_Model)
ALTER TABLE Trailer_Model
    ADD CONSTRAINT Trailer_Model_Cargo_type
        FOREIGN KEY (Cargo_type_id)
            REFERENCES Cargo_type (id);

-- Reference: Trailer_Trailer_Model (table: Trailer)
ALTER TABLE Trailer
    ADD CONSTRAINT Trailer_Trailer_Model
        FOREIGN KEY (Trailer_Model_id)
            REFERENCES Trailer_Model (id);

-- Reference: Truck_Tractor_Last_Service (table: Truck)
ALTER TABLE Truck
    ADD CONSTRAINT Truck_Tractor_Last_Service
        FOREIGN KEY (Last_Service_id)
            REFERENCES Last_Service (id);

-- Reference: Truck_Truck_Model (table: Truck)
ALTER TABLE Truck
    ADD CONSTRAINT Truck_Truck_Model
        FOREIGN KEY (Truck_Model_id)
            REFERENCES Truck_Model (id);

-- Reference: Trucks_Order (table: TruckSet)
ALTER TABLE TruckSet
    ADD CONSTRAINT Trucks_Order
        FOREIGN KEY (Order_id)
            REFERENCES "Order" (id);

-- End of file.
