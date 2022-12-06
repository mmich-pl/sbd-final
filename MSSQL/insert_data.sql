USE [TransportCompany]

BEGIN TRAN

-- Insert data do database
-- Table: Country
SET IDENTITY_INSERT Country ON
INSERT INTO Country (id, name)
VALUES (1, 'Polska');
SET IDENTITY_INSERT Country OFF

-- Table: City
SET IDENTITY_INSERT City ON;
INSERT INTO City (id, name, Country_id)
VALUES (1, 'Łódź', 1);
INSERT INTO City (id, name, Country_id)
VALUES (2, 'Siedlce', 1);
INSERT INTO City (id, name, Country_id)
VALUES (3, 'Zagrodno', 1);
INSERT INTO City (id, name, Country_id)
VALUES (4, 'Warszawa', 1);
INSERT INTO City (id, name, Country_id)
VALUES (5, 'Poznań', 1);
INSERT INTO City (id, name, Country_id)
VALUES (6, 'Kraków', 1);
INSERT INTO City (id, name, Country_id)
VALUES (7, 'Tarnowo Podgórne', 1);
INSERT INTO City (id, name, Country_id)
VALUES (9, 'Jawor', 1);
INSERT INTO City (id, name, Country_id)
VALUES (10, 'Szydłowiec', 1);
INSERT INTO City (id, name, Country_id)
VALUES (11, 'Sandomierz', 1);
INSERT INTO City (id, name, Country_id)
VALUES (12, 'Jedlicze', 1);
INSERT INTO City (id, name, Country_id)
VALUES (13, 'Szczecin', 1);
INSERT INTO City (id, name, Country_id)
VALUES (14, 'Lwówek Śląski', 1);
INSERT INTO City (id, name, Country_id)
VALUES (15, 'Lublin', 1);
INSERT INTO City (id, name, Country_id)
VALUES (16, 'Włocławek', 1);
INSERT INTO City (id, name, Country_id)
VALUES (17, 'Zbrosławice', 1);
INSERT INTO City (id, name, Country_id)
VALUES (18, 'Tarnogród', 1);
INSERT INTO City (id, name, Country_id)
VALUES (19, 'Wysokie Mazowieckie', 1);
INSERT INTO City (id, name, Country_id)
VALUES (20, 'Piątnica Poduchowna', 1);
INSERT INTO City (id, name, Country_id)
VALUES (21, 'Płock', 1);
INSERT INTO City (id, name, Country_id)
VALUES (22, 'Stalowa Wola', 1);
INSERT INTO City (id, name, Country_id)
VALUES (23, 'Wiskitki', 1);
INSERT INTO City (id, name, Country_id)
VALUES (24, 'Łagiewniki Kościelne', 1);
INSERT INTO City (id, name, Country_id)
VALUES (25, 'Wrocław', 1);
INSERT INTO City (id, name, Country_id)
VALUES (26, 'Rybnik', 1);
INSERT INTO City (id, name, Country_id)
VALUES (27, 'Zielona Góra', 1);
INSERT INTO City (id, name, Country_id)
VALUES (28, 'Gdańsk', 1);
INSERT INTO City (id, name, Country_id)
VALUES (29, 'Mikołów', 1);
INSERT INTO City (id, name, Country_id)
VALUES (30, 'Olsztyn', 1);
INSERT INTO City (id, name, Country_id)
VALUES (31, 'Tarnowskie Góry', 1);
INSERT INTO City (id, name, Country_id)
VALUES (32, 'Katowice', 1);
INSERT INTO City (id, name, Country_id)
VALUES (33, 'Dąbrowa Górnicza', 1);
INSERT INTO City (id, name, Country_id)
VALUES (34, 'Jaworze', 1);
INSERT INTO City (id, name, Country_id)
VALUES (35, 'Brzeg', 1);
INSERT INTO City (id, name, Country_id)
VALUES (36, 'Strachówka', 1);
INSERT INTO City (id, name, Country_id)
VALUES (37, 'Ostrów Wielkopolski', 1);
INSERT INTO City (id, name, Country_id)
VALUES (38, 'Nowy Dwór Gdański', 1);
INSERT INTO City (id, name, Country_id)
VALUES (39, 'Krasnystaw', 1);
INSERT INTO City (id, name, Country_id)
VALUES (40, 'Bogdanka', 1);
SET IDENTITY_INSERT City OFF;


-- Table: Address
SET IDENTITY_INSERT Address ON;
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (1, 'Poznańska', '159', NULL, '62-080', 7);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (2, 'Uniejowice', '8A', NULL, '59-516', 3);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (4, 'Cukrownicza', '2A', NULL, '59-400', 9);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (5, 'Tadeusza Kościuszki', '238', NULL, '26-500', 10);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (6, 'Portowa ', '25', NULL, '27-600', 11);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (7, 'Grunwaldzka', '33A', NULL, '91-337', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (8, 'Trzecieskiego', '14', NULL, '38-460', 12);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (9, 'Mianowskiego Józefa ', '139', NULL, '70-824', 13);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (10, 'plac Wolności', '1', NULL, '59-600', 14);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (11, 'Al. Warszawska', '106', NULL, '20-803', 15);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (12, 'Płocka', '89', NULL, '87-800', 16);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (13, 'Mojsławice', '7', NULL, '42-674', 15);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (14, 'Przedmieście Błonie', '6', NULL, '23-420', 18);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (15, 'Ludowa', '122', NULL, '18-200', 19);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (16, 'Forteczna', '3', NULL, '18-421', 20);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (17, 'Chemików', '7', NULL, '09-400', 21);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (18, 'Zakopiańska', '73', NULL, '30-418', 6);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (19, 'Przemysłowa', '11', NULL, '37-450', 22);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (20, 'Starowiskitki Parcel', '2', NULL, '96-315', 23);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (21, 'Łagiewniki Kościelne', '3', NULL, '62-272', 24);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (22, 'Pasjansowa', '104', NULL, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (23, 'Generała Józefa Bema', '108', 5, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (24, 'Ziarnista', '80', 3, '92-634', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (25, 'Witosa Wincentego', '97', NULL, '92-634', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (26, 'Łabiszyńska', '131', NULL, '92-643', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (27, 'Grabowa', '42', 3, '92-634', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (28, 'Długa', '107', 8, '92-634', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (29, 'Holownicza', '129', NULL, '93-747', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (30, 'Rożnowska', '126', NULL, '92-410', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (31, 'Do Fortu', '68', 6, '93-323', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (32, 'Słowackiego', '132', 2, '93-323', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (33, 'Krasińskiego', '10', NULL, '93-323', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (34, 'Lotników', '54', 2, '93-323', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (35, 'Łączna', '97', 2, '93-019', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (36, 'Grenadierów', '97', NULL, '93-019', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (37, 'Dolna', '102', 1, '93-019', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (38, 'Generała Józefa Bema', '108', 2, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (39, 'Piłsudskiego', '31', NULL, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (40, 'Głogowska', '92', NULL, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (41, 'Kosynierów Gdyńskich', '11', NULL, '93-434', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (42, 'Rakowiecka', '43', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (43, 'Zakopiańska', '13', NULL, '54-033', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (44, 'Brązowa', '67', NULL, '65-128', 27);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (45, 'Berberysowa', '64', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (46, 'Frontowa', '81', NULL, '44-270', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (47, 'Przemysłowa', '4', NULL, '80-542', 28);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (48, 'Poleczki', '150', NULL, '20-861', 15);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (49, 'Paprotek', '129', NULL, '43-190', 29);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (50, 'Azaliowa', '102', NULL, '43-190', 29);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (51, 'Wilczka Jakuba', '114', NULL, '10-341', 30);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (52, 'Rakowiecka', '43', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (53, 'Armii Krajowej', '16', NULL, '44-270', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (54, 'Zbąszyńska', '48', NULL, '91-342', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (55, 'Słoneczników', '109', NULL, '42-606', 31);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (56, 'Śląska', '31', NULL, '40-041', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (57, 'Dawidowskiego Alka', '54', NULL, '41-300', 33);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (58, 'Czarnocińska', '106', NULL, '42-606', 31);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (59, 'Cieszyńska', '145', NULL, '43-384', 34);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (60, 'Plater Emilii', '68', NULL, '49-306', 35);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (61, 'Norwida', '149', NULL, '05-282', 36);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (62, 'Chopina', '17', NULL, '87-800', 16);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (63, 'Lelków', '74', NULL, '40-534', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (64, 'Frontowa', '81', NULL, '44-270', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (65, 'Azaliowa', '102', NULL, '43-190', 29);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (66, 'Rakowiecka', '43', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (67, 'Śląska', '31', NULL, '40-041', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (68, 'Lelków', '74', NULL, '40-534', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (69, 'Berberysowa', '64', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (70, 'Poleczki', '150', NULL, '20-861', 15);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (71, 'Lelków', '74', NULL, '40-534', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (72, 'Cieszyńska', '145', NULL, '43-384', 34);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (73, 'Brązowa', '67', NULL, '65-128', 27);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (74, 'Frontowa', '81', NULL, '44-270', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (75, 'Rakowiecka', '43', NULL, '50-422', 25);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (76, 'płk. Jana Kilińskiego', '296', NULL, '93-160', 1);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (77, 'Zębców', '32', NULL, '63-410', 37);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (78, 'Grobla', '15', NULL, '61-859', 5);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (79, 'Tkacka', '22', NULL, '70-556', 13);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (80, 'Plac Wolności', '22', NULL, '82-100', 38);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (81, 'Gospodarcza', '7', NULL, '22-300', 39);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (82, 'Frontowa', '81', NULL, '44-270', 26);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (83, 'Brązowa', '67', NULL, '65-128', 27);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (84, 'Lelków', '74', NULL, '40-534', 32);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (85, 'Norwida', '149', NULL, '05-282', 36);
INSERT INTO Address (id, street_name, buildings_number, local_number, zip_code, City_id)
VALUES (86, 'Bogdanka', '7C', NULL, 95 - 060, 40);
SET IDENTITY_INSERT Address OFF;

-- Table: Additional_Licence
SET IDENTITY_INSERT Additional_Licence ON;
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (1, 'Ładunek o wysokiej wartości', 'Licencja pozwalająca na przewóz drogocennych ładunków.', 0.2);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (2, 'Gazy', 'Licencja pozwalająca na przewóz gazów łatwopalnych, trujących i kriogenicznych.', 0.35);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (3, 'Płyny łatwopalne', 'Licencja pozwalająca na przewóz paliw', 0.33);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (4, 'Materiały stałe zapalne', 'Licencja pozwalająca na przewóz substancji łatwopalnych.', 0.33);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (5, 'Toksyczne substancje', 'Licencja pozwalająca na przewóz substancji szkodliwych dla zdrowia.', 0.18);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (6, 'Substancje żrące', 'Licencja pozwalająca na przewóz substancji mogących rozpuścić tkankę organiczną.', 0.2);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (7, 'Długi dystans', 'Licencja pozwalająca na przewóz towarów odległości ponad 1500 km w jedną stronę.', 0.3);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (8, 'Żywy ładunek', 'Licencja pozwalająca na przewóz żywca.', 0.3);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (9, 'Delikatny ładunek', 'Licencja pozwalająca na przewóz towarów delikatnych, wrażliwych na uszkodzenia.',
        0.38);
INSERT INTO Additional_Licence(id, licence_name, description, bonus_fee)
VALUES (10, 'Transport gabarytowy i ponadgabarytowy',
        'Licencja pozwalająca na przewóz towarów przekraczających normy, o niestandardowych wymiarach i dużej wadze',
        0.76);
SET IDENTITY_INSERT Additional_Licence OFF

-- Table: Driving_Licence
SET IDENTITY_INSERT Driving_Licence ON;
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (1, 'P9596461', '2016-03-31', '2026-03-31', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (2, 'P0115114', '2015-06-03', '2025-06-03', 'C+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (3, 'P8676449', '2016-05-18', '2026-05-18', 'C+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (4, 'P1928072', '2015-02-03', '2025-02-03', 'C1+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (5, 'P3162817', '2019-10-13', '2029-10-13', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (6, 'P1514295', '2017-04-12', '2027-04-12', 'C1');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (7, 'P3424335', '2016-05-14', '2026-05-14', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (8, 'P7918650', '2018-08-04', '2028-08-04', 'C1+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (9, 'P7342055', '2016-04-19', '2026-04-19', 'C1+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (10, 'P3906041', '2018-12-20', '2028-12-20', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (11, 'P6952971', '2019-08-26', '2029-08-26', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (12, 'P9790552', '2018-09-25', '2028-09-25', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (13, 'P3020736', '2019-03-28', '2029-03-28', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (14, 'P2105940', '2018-07-29', '2028-07-29', 'C+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (15, 'P5482061', '2019-03-03', '2029-03-03', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (16, 'P1512972', '2016-09-20', '2026-09-20', 'C1+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (17, 'P3084568', '2015-07-13', '2025-07-13', 'C');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (18, 'P6761834', '2015-03-31', '2025-03-31', 'C+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (19, 'P9110700', '2016-04-08', '2026-04-08', 'C1+E');
INSERT INTO Driving_Licence (id, document_id, release_date, expiration_date, category)
VALUES (20, 'P6720679', '2017-08-16', '2027-08-16', 'C1+E');
SET IDENTITY_INSERT Driving_Licence OFF;

-- Table: Driver
SET IDENTITY_INSERT Driver ON;
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (1, 'Korneliusz', 'Wysocki', 'M', '1976-09-04', '1997-11-24', 0.41, '615863136',
        'korneliusz.wysocki@transport.pl', 'N', 1, 22);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (2, 'Dawid', 'Czarnecki', 'M', '1977-07-19', '1997-07-12', 1.39, '461392616', 'dawid.czarnecki@transport.pl',
        'N', 2, 23);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (3, 'Roman', 'Mazur', 'M', '1974-05-08', '1999-06-21', 1.09, '065708053', 'roman.mazur@transport.pl', 'N', 3,
        24);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (4, 'Damian', 'Michalak', 'M', '1972-11-07', '1996-11-21', 1.29, '474179245', 'damian.michalak@transport.pl',
        'N', 4, 25);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (5, 'Jacek', 'Jasiński', 'M', '1975-12-24', '2002-08-11', 1.6, '450144846', 'jacek.jasiński@transport.pl', 'N',
        5, 26);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (6, 'Aleksander', 'Tomaszewski', 'M', '1977-05-26', '2004-05-13', 1.42, '802336083',
        'aleksander.tomaszewski@transport.pl', 'N', 6, 27);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (7, 'Tymon', 'Kaczmarek', 'M', '1972-12-2', '2001-05-03', 0.86, '745891731', 'tymon.kaczmarek@transport.pl', 'N',
        7, 28);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (8, 'Anastazja', 'Sikora', 'K', '1973-08-13', '2000-11-18', 1.42, '599480975', 'anastazja.sikora@transport.pl',
        'N', 8, 29);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (9, 'Marcel', 'Dudek', 'M', '1971-11-04', '1995-05-10', 1.81, '550404550', 'marcel.dudek@transport.pl', 'N', 9,
        30);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (10, 'Agata', 'Wróblewska', 'K', '1982-06-19', '2003-05-28', 0.41, '270346343', 'agata.wróblewska@transport.pl',
        'N', 10, 31);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (11, 'Sylwia', 'Szymańska', 'K', '1978-05-08', '2002-09-16', 1.3, '460328858', 'sylwia.szymańska@transport.pl',
        'N', 11, 32);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (12, 'Dariusz', 'Zalewski', 'M', '1981-02-17', '2004-12-10', 1.07, '849368471', 'dariusz.zalewski@transport.pl',
        'N', 12, 33);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (13, 'Kajetan', 'Mazur', 'M', '1975-09-15', '2003-10-07', 0.89, '477753929', 'kajetan.mazur@transport.pl', 'T',
        13, 34);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (14, 'Bruno', 'Zawadzki', 'M', '1979-01-1', '2000-12-08', 0.91, '640338305', 'bruno.zawadzki@transport.pl', 'T',
        14, 35);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (15, 'Kacper', 'Wasilewski', 'M', '1975-10-12', '2002-12-21', 1.3, '221076744', 'kacper.wasilewski@transport.pl',
        'T', 15, 36);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (16, 'Oskar', 'Maciejewski', 'M', '1982-01-05', '2003-09-03', 1.37, '119302233',
        'oskar.maciejewski@transport.pl', 'N', 16, 37);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (17, 'Hubert', 'Golec', 'M', '1973-07-16', '1995-07-18', 1.62, '741248527', 'hubert.golec@transport.pl', 'T', 17,
        38);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (18, 'Igor', 'Nowak', 'M', '1973-03-16', '2000-03-04', 0.52, '725991892', 'igor.nowak@transport.pl', 'T', 18,
        39);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (19, 'Jacek', 'Sawicki', 'M', '1976-04-05', '2000-06-25', 1.93, '482365574', 'jacek.sawicki@transport.pl', 'T',
        19, 40);
INSERT INTO Driver (id, first_name, last_name, gender, born_date, employment_date, fee_per_kilometer, phone, email,
                    available, Driving_Licence_id, Address_id)
VALUES (20, 'Alicja', 'Rutkowska', 'K', '1973-01-15', '1997-12-27', 1.24, '174320396', 'alicja.rutkowska@transport.pl',
        'T', 20, 41);
SET IDENTITY_INSERT Driver OFF;


-- Table: Drivers_Licences
INSERT INTO Drivers_Licences
VALUES (2, 7);
INSERT INTO Drivers_Licences
VALUES (2, 8);
INSERT INTO Drivers_Licences
VALUES (3, 1);
INSERT INTO Drivers_Licences
VALUES (3, 9);
INSERT INTO Drivers_Licences
VALUES (4, 10);
INSERT INTO Drivers_Licences
VALUES (5, 7);
INSERT INTO Drivers_Licences
VALUES (5, 10);
INSERT INTO Drivers_Licences
VALUES (6, 3);
INSERT INTO Drivers_Licences
VALUES (6, 4);
INSERT INTO Drivers_Licences
VALUES (7, 5);
INSERT INTO Drivers_Licences
VALUES (7, 6);
INSERT INTO Drivers_Licences
VALUES (8, 2);
INSERT INTO Drivers_Licences
VALUES (8, 6);
INSERT INTO Drivers_Licences
VALUES (9, 6);
INSERT INTO Drivers_Licences
VALUES (9, 9);
INSERT INTO Drivers_Licences
VALUES (9, 10);
INSERT INTO Drivers_Licences
VALUES (11, 2);
INSERT INTO Drivers_Licences
VALUES (11, 5);
INSERT INTO Drivers_Licences
VALUES (12, 1);
INSERT INTO Drivers_Licences
VALUES (12, 9);
INSERT INTO Drivers_Licences
VALUES (14, 5);
INSERT INTO Drivers_Licences
VALUES (14, 8);
INSERT INTO Drivers_Licences
VALUES (15, 3);
INSERT INTO Drivers_Licences
VALUES (15, 4);
INSERT INTO Drivers_Licences
VALUES (16, 2);
INSERT INTO Drivers_Licences
VALUES (16, 5);
INSERT INTO Drivers_Licences
VALUES (16, 6);
INSERT INTO Drivers_Licences
VALUES (17, 8);
INSERT INTO Drivers_Licences
VALUES (17, 10);
INSERT INTO Drivers_Licences
VALUES (19, 3);
INSERT INTO Drivers_Licences
VALUES (19, 4);
INSERT INTO Drivers_Licences
VALUES (19, 5);
INSERT INTO Drivers_Licences
VALUES (19, 6);
INSERT INTO Drivers_Licences
VALUES (20, 2);
INSERT INTO Drivers_Licences
VALUES (20, 6);

-- Table: Client
SET IDENTITY_INSERT Client ON;
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (1, 'Korbanek', '3759008428', '618950303', 'esklep@korbanek.pl', 1);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (3, 'Gospodarstwo Rolne Grzegorz Bardowski', '4970074337', '539001293', 'grzegorz.bardowski@gmail.com', 2);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (4, 'Agroland Skup Rzepaku', '1144993659', '158682112', 'agroland@gmail.com', 4);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (5, 'KAS-BUD', '1587441918', '486171921', 'kas-bud@budownictwo.pl', 5);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (6, 'Pilkington Igp sp. z o.o.', '9780169043', '158323041', 'huta.sandomierz@transport.com', 6);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (7, 'Skład opały Furmański', '8218117060', '797400771', 'opaly.furmanski@transport.com', 7);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (8, 'Rafineria Orlen Południe', '9715484353', '543662712', 'rafineria@transport.pl', 8);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (9, 'P.P.U.H. Horus-Energia sp. z o.o.', '3422630564', '698266153', 'horus.energia@energia.pl', 9);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (10, 'Dolnoslaska Fabryka Maszyn Elektrycznych', '9524925616', '537410638', 'dfme@gmail.com', 10);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (11, 'Grupa ERBUD', '7990653672', '699589829', 'erbud@budownictwo.pl', 11);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (12, 'Al-Samer sp. z o. o.', '5331430174', '511599895', 'dyr.focht@alsamer.pl', 12);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (13, 'Lubelskie Młyny sp. z o.o. ', '4975830602', '678969131', 'mlynkucias@gmail.com', 13);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (14, 'Przetwórnia Zbożowa', '5195945721', '726096392', 'biuro@pz.pl', 14);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (15, 'Grupa Mlekovita', '1567081322', '862758200', 'sekretariat@mlekovita.com.pl', 15);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (16, 'Piątnica OSM', '8120545864', '883111437', 'piątnica@gmail.com', 16);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (17, 'Mazowieckie Zakłady Rafineryjne i Petrochemiczne', '5691691729', '516425248', 'zrp.plock@orlen.pl', 17);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (18, 'Polskie składy węglowe', '6793192522', '889365775', 'psw@gmail.com', 18);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (19, 'PSB Stalmet', '7743526789', '158443401', 'stalmet@gmail.com', 19);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (20, 'Ubojnia Starowiskitk', '1111428693', '468569140', 'ubojnia.starowiskitki@gmail.com', 20);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (21, 'Ubojnia trzody chlewnej – Jutar', '5290284214', '614276468', 'biuro@jutar.pl', 21);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (22, 'Camfil sp. z o.o.', '1191891989', '426559416', 'info.pl@camfil.com', 54);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (23, 'Kaufland', '1117027044', '800300062', 'kaufland_lodz@handel.com', 76);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (24, 'Wielkopolska Spółka Gazownictwa sp. z o.o.', '7781387479', '449172304',
        'gazownictwo.wielkopolska@gmail.com', 78);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (25, 'Przedsiębiorstwo Produkcji Drzewnej Verko', '8510003964', '912828662', 'verko@transport.pl', 79);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (26, 'Pomorska Baza Paliwowa Sp. z o.o.', '6312348489', '463711263', 'psara.amirshahiv@asifboot.com', 80);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (27, 'Browar Hetman', '5641610605', '643784231', 'browar.hetman@moxkid.com', 81);
INSERT INTO Client (id, name, tax_number, phone, email, Address_id)
VALUES (28, 'Farmasz Bogdanka', '8215380584', '638568784', 'biuro@farmasz-bogdanka.pl', 86);
SET IDENTITY_INSERT Client OFF;

-- Table: Cargo_type
SET IDENTITY_INSERT Cargo_type ON;
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (1, 'Ciecz', 'm3');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (2, 'Materiały Budowlane', 't');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (3, 'Żywiec', 'szt');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (4, 'Ładunki sypkie', 't');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (5, 'Zboża', 't');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (6, 'Gabaryty', 'szt');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (7, 'Gazy', 'm3');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (8, 'Transport paletowy', 'szt');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (9, 'Inne', 'szt');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (10, 'Niska temperatura', 't');
INSERT INTO Cargo_type (id, type, measure_unit)
VALUES (13, 'Drewno', 't');
SET IDENTITY_INSERT Cargo_type OFF;

-- Table: Cargo
SET IDENTITY_INSERT Cargo ON;
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (1, 'Mleko', 1.8, 1, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (2, 'Diesel', 2.91, 1, 3);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (3, 'Chemikalia', 3.0, 1, 6);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (4, 'Soki', 1.81, 1, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (5, 'Cegły', 1.11, 2, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (6, 'Drewno Konstrukcyjne', 1.7, 2, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (7, 'Trzoda chlewna', 2.2, 3, 8);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (8, 'Bydło rogate', 2.29, 3, 8);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (9, 'Węgiel kamienny', 1.31, 4, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (10, 'Piach', 1.19, 4, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (11, 'Wapno', 1.21, 4, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (12, 'Kukurydza', 1.93, 5, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (13, 'Pszenica', 1.83, 5, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (14, 'Maszyny rolnicze', 5.57, 6, 10);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (15, 'LPG', 3.21, 7, 2);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (16, 'Pestycydy', 3.32, 8, 5);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (17, 'Wyposażenie medyczne', 6.0, 9, 1);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (18, 'Warzywa', 1.75, 10, NULL);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (21, 'Herbicydy', 3.52, 8, 5);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (22, 'Bale dębowe', 2.20, 13, null);
INSERT INTO Cargo (id, name, fee_per_kilometer, Cargo_type_id, Additional_Licence_id)
VALUES (23, 'Jęczmień Browarny', 1.15, 5, null);
SET IDENTITY_INSERT Cargo OFF;

-- Table: Brand
SET IDENTITY_INSERT Brand ON;
INSERT INTO Brand (id, name)
VALUES (1, 'MAN');
INSERT INTO Brand (id, name)
VALUES (2, 'Scania');
INSERT INTO Brand (id, name)
VALUES (3, 'Volvo');
INSERT INTO Brand (id, name)
VALUES (5, 'Schwarzmüeller');
INSERT INTO Brand (id, name)
VALUES (8, 'Krone');
INSERT INTO Brand (id, name)
VALUES (9, 'Michieletto');
INSERT INTO Brand (id, name)
VALUES (10, 'Wielton');
INSERT INTO Brand (id, name)
VALUES (11, 'DAF');
INSERT INTO Brand (id, name)
VALUES (12, 'Mercedes-Benz');
INSERT INTO Brand (id, name)
VALUES (13, 'MEGA');
SET IDENTITY_INSERT Brand OFF;

-- Table: Trailer_Model
SET IDENTITY_INSERT Trailer_Model ON;
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (1, 'Wywrotka', 3, 20, 5, 4);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (2, 'Cysterna', 3, 18, 5, 1);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (3, 'Cysterna', 4, 36, 5, 1);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (4, 'Chłodnia', 2, 18, 5, 10);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (5, 'Silos', 3, 22, 5, 5);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (6, 'Naczepa niskopodwoziowa', 4, 2, 5, 6);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (7, 'Naczepa uniwersalna', 3, 20, 8, 8);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (8, 'Naczepa uniwersalna', 2, 12, 8, 8);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (9, 'Do przewozu zwierząt', 2, 15, 8, 3);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (10, 'Naczepa odkryta z burtami', 3, 20, 5, 2);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (11, 'Naczepa odkryta z burtami', 2, 16, 5, 2);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (12, 'Cysterna', 3, 18, 5, 7);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (13, 'Do przewozu zwierząt', 3, 21, 9, 3);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (14, 'Wywrotka', 3, 17, 10, 4);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (15, 'Cysterna', 3, 15, 10, 7);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (16, 'Naczepa uniwersalna', 3, 18, 10, 8);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (17, 'Naczepa niskopodwoziowa', 4, 1, 5, 6);
INSERT INTO Trailer_Model (id, trailer_type, axis_number, max_capacity, Brand_id, Cargo_type_id)
VALUES (18, 'Do przewozu drewna', 3, 30, 13, 13);
SET IDENTITY_INSERT Trailer_Model OFF;

-- Table: Truck_Model
SET IDENTITY_INSERT Truck_Model ON;
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (1, 'TGX 18.440', 1, 850, 440, 10, 2, 'Automatyczna');
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (2, 'R450', 3, 700, 450, 13, 2, 'Automatyczna');
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (3, 'FH500', 3, 650, 500, 13, 2, 'Automatyczna');
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (4, 'XF 106.460 SPACE CAB', 11, 680, 460, 13, 2, 'Automatyczna');
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (5, 'Actros 1845LS', 12, 700, 450, 12, 2, 'Automatyczna');
INSERT INTO Truck_Model (id, model, Brand_id, fuel_tank_capacity, engine_power, engine_capacity, axis_number,
                         transmission)
VALUES (6, 'TGX 28.510 GX ', 1, 660, 510, 15, 3, 'Automatyczna');
SET IDENTITY_INSERT Truck_Model OFF;

-- Table: Last_Service
SET IDENTITY_INSERT Last_Service ON;
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (1, 378581, '2021-03-02', '2022-03-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (2, 371588, '2021-02-22', '2022-02-22', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (3, 363498, '2021-04-20', '2022-04-20', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (4, 350432, '2021-03-08', '2022-03-08', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (5, 394065, '2021-01-02', '2022-02-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (6, 394997, '2021-04-24', '2022-04-24', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (7, 378423, '2021-04-25', '2022-04-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (8, 369714, '2021-04-12', '2022-04-22', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (9, 361680, '2021-03-29', '2022-03-29', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (10, 380503, '2021-03-15', '2022-03-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (11, 364740, '2021-03-17', '2022-03-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (12, 378364, '2021-01-24', '2022-02-24', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (13, 369642, '2021-03-01', '2022-03-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (14, 398886, '2021-01-16', '2022-02-26', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (15, 388842, '2021-01-23', '2022-02-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (16, 376905, '2021-04-05', '2022-04-05', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (17, null, '2021-04-27', '2022-04-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (18, null, '2021-02-02', '2022-02-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (19, null, '2021-04-20', '2022-04-20', 'N');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (20, null, '2021-04-06', '2022-04-06', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (21, null, '2021-03-06', '2022-03-06', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (22, null, '2021-01-15', '2022-02-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (23, null, '2021-04-13', '2022-04-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (24, null, '2021-02-10', '2022-02-20', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (25, null, '2021-04-26', '2022-04-26', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (26, null, '2021-04-26', '2022-04-26', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (27, null, '2021-01-30', '2022-02-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (28, null, '2021-03-03', '2022-03-03', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (29, null, '2021-04-26', '2022-04-26', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (30, null, '2021-02-23', '2022-02-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (31, null, '2021-03-28', '2022-03-28', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (32, null, '2021-02-15', '2022-02-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (33, null, '2021-02-17', '2022-02-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (34, null, '2021-02-16', '2022-02-26', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (35, null, '2021-01-08', '2022-02-08', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (36, null, '2021-03-01', '2022-03-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (37, null, '2021-03-23', '2022-03-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (38, null, '2021-04-14', '2022-04-24', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (39, null, '2021-04-09', '2022-04-09', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (40, null, '2021-04-04', '2022-04-04', 'N');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (41, null, '2021-03-23', '2022-03-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (42, null, '2021-02-17', '2022-02-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (43, null, '2021-01-20', '2022-02-20', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (44, 395291, '2021-03-15', '2022-03-25', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (45, 360421, '2021-02-27', '2022-02-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (46, 376754, '2021-04-12', '2022-04-22', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (47, 393612, '2021-02-17', '2022-02-27', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (48, null, '2021-03-13', '2022-03-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (49, null, '2021-01-21', '2022-02-22', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (50, null, '2021-03-10', '2022-03-20', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (51, null, '2021-02-04', '2022-02-04', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (52, null, '2021-02-01', '2022-02-02', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (53, null, '2021-02-08', '2022-02-08', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (54, null, '2021-01-13', '2022-02-23', 'T');
INSERT INTO Last_Service (id, mileage, last_review, review_expiration_date, approved_for_driving)
VALUES (55, null, '2021-02-06', '2022-02-06', 'T');
SET IDENTITY_INSERT Last_Service OFF;

-- Table: Trailer
SET IDENTITY_INSERT Trailer ON;
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (1, 'EL-91K50', '2016-10-02', 'T', 17, 1);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (2, 'EL-NJ62Q', '2016-10-11', 'N', 18, 2);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (3, 'EL-MY8K5', '2017-05-07', 'N', 19, 2);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (4, 'EL-JHR92', '2019-10-15', 'N', 20, 3);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (5, 'EL-5T2C0', '2018-02-01', 'N', 21, 4);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (6, 'EL-FCEGM', '2019-10-27', 'N', 22, 5);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (7, 'EL-VQ6QQ', '2016-08-10', 'N', 23, 5);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (8, 'EL-VYV1J', '2016-01-07', 'N', 24, 6);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (9, 'EL-VVWNT', '2016-08-17', 'T', 25, 7);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (10, 'EL-QC5UK', '2017-02-21', 'T', 26, 7);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (11, 'EL-W9ATW', '2019-05-24', 'T', 27, 7);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (12, 'EL-UF10J', '2018-06-11', 'T', 28, 8);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (13, 'EL-EK1A3', '2017-05-25', 'T', 29, 8);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (14, 'EL-PFJTN', '2017-02-09', 'T', 30, 9);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (15, 'EL-QM7X7', '2019-06-24', 'T', 31, 10);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (16, 'EL-K1QEP', '2019-10-29', 'T', 32, 11);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (17, 'EL-FN01J', '2019-04-12', 'T', 33, 11);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (18, 'EL-NWU18', '2016-07-19', 'T', 34, 12);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (19, 'EL-5WCX3', '2018-10-24', 'T', 35, 12);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (20, 'EL-JTG1M', '2019-03-26', 'T', 36, 13);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (21, 'EL-LXSE6', '2017-04-23', 'T', 37, 13);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (22, 'EL-EQ2F4', '2019-07-03', 'N', 38, 14);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (23, 'EL-7SYEP', '2018-01-31', 'T', 39, 15);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (24, 'EL-MFPTG', '2016-04-25', 'N', 40, 16);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (25, 'EL-EQJV9', '2019-04-11', 'T', 41, 17);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (26, 'EL-N38JG', '2016-04-03', 'T', 42, 16);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (27, 'EL-KRTC7', '2019-08-15', 'T', 43, 16);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (28, 'EL-7X9W8', '2019-03-24', 'N', 48, 4);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (29, 'EL-FL5N2', '2017-08-17', 'T', 49, 1);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (30, 'EL-L00PX', '2018-05-13', 'T', 50, 1);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (31, 'EL-75G0X', '2019-08-24', 'N', 51, 5);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (32, 'EL-00YJE', '2016-06-15', 'N', 52, 5);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (33, 'EL-VH8YS', '2018-03-07', 'N', 53, 5);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (34, 'EL-Q6UY1', '2019-07-30', 'N', 54, 2);
INSERT INTO Trailer (id, plate, purchase_date, available, Last_Service_id, Trailer_Model_id)
VALUES (35, 'EL-VK27A', '2016-10-06', 'N', 55, 18);
SET IDENTITY_INSERT Trailer OFF;

-- Table: Truck
SET IDENTITY_INSERT Truck ON;
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (1, 'EL-87MEP', '2018-07-23', '2018-03-04', 'N', 1, 'Czerwony', 6);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (2, 'EL-CNRQT', '2017-11-15', '2017-05-20', 'N', 2, 'Żółty', 6);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (3, 'EL-CL2M7', '2019-02-03', '2018-07-19', 'N', 3, 'Czerwony', 6);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (4, 'EL-K74UR', '2019-11-09', '2018-06-03', 'N', 4, 'Niebieski', 1);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (5, 'EL-VL1C3', '2018-04-26', '2017-08-24', 'N', 5, 'Żółty', 5);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (6, 'EL-QEK8N', '2018-09-28', '2018-01-09', 'N', 6, 'Szary', 5);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (7, 'EL-XEV2A', '2015-06-12', '2014-06-29', 'T', 7, 'Biały', 4);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (8, 'EL-SUAHN', '2018-12-30', '2018-10-22', 'T', 8, 'Czarny', 4);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (9, 'EL-8G85Y', '2018-08-12', '2016-01-28', 'T', 9, 'Czerwony', 4);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (10, 'EL-4WCL8', '2018-12-11', '2017-07-21', 'T', 10, 'Żółty', 3);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (11, 'EL-VSF30', '2019-12-24', '2015-09-04', 'T', 11, 'Biały', 2);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (12, 'EL-1HTU8', '2019-03-05', '2018-03-13', 'T', 12, 'Biały', 1);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (13, 'EL-0AL85', '2018-06-14', '2015-03-23', 'T', 13, 'Szary', 6);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (14, 'EL-G3XRT', '2018-05-01', '2016-07-13', 'T', 14, 'Czerwony', 6);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (15, 'EL-K14EN', '2019-09-19', '2017-07-12', 'T', 15, 'Niebieski', 5);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (16, 'EL-1GYFK', '2019-05-02', '2018-12-17', 'T', 16, 'Czarny', 5);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (17, 'EL-MG8XH', '2019-07-02', '2016-10-13', 'T', 44, 'Biały', 4);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (18, 'EL-0L8RS', '2019-07-19', '2014-11-10', 'T', 45, 'Czarny', 4);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (19, 'EL-P3VHX', '2015-11-20', '2014-11-13', 'T', 46, 'Szary', 1);
INSERT INTO Truck (id, plate, purchase_date, production_date, available, Last_Service_id, color, Truck_Model_id)
VALUES (20, 'EL-UYQPN', '2019-10-04', '2015-08-25', 'T', 47, 'Biały', 1);
SET IDENTITY_INSERT Truck OFF;

-- Table: Order
SET IDENTITY_INSERT "Order" ON;
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (1, 28, '2021-03-10', '2021-03-10', 42, 283);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (2, 3, '2021-03-11', '2021-03-11', 43, 269);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (3, 10, '2021-03-14', '2021-03-14', 44, 151);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (4, 9, '2021-03-17', '2021-03-18', 45, 394);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (5, 14, '2021-03-20', '2021-03-20', 46, 363);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (6, 17, '2021-03-24', '2021-03-24', 47, 269);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (7, 21, '2021-03-26', '2021-03-26', 48, 496);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (8, 11, '2021-03-31', '2021-03-31', 49, 370);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (9, 20, '2021-04-03', '2021-04-04', 50, 301);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (10, 16, '2021-04-05', '2021-04-05', 51, 149);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (11, 18, '2021-04-07', '2021-04-08', 52, 270);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (12, 3, '2021-04-11', '2021-04-11', 53, 238);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (13, 22, '2021-04-12', '2021-04-13', 55, 185);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (14, 3, '2021-04-14', '2021-04-14', 56, 245);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (15, 5, '2021-04-18', '2021-04-18', 57, 193);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (16, 28, '2021-04-21', '2021-04-21', 58, 375);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (17, 16, '2021-04-23', '2021-04-23', 59, 523);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (18, 6, '2021-04-10', '2021-04-11', 60, 421);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (19, 13, '2021-05-11', '2021-05-11', 61, 365);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (20, 21, '2021-05-11', '2021-05-11', 62, 139);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (21, 11, '2021-05-14', '2021-05-14', 63, 352);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (22, 13, '2021-05-15', '2021-05-15', 64, 49);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (23, 20, '2021-05-17', '2021-05-18', 65, 301);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (24, 1, '2021-05-18', '2021-05-18', 66, 183);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (25, 3, '2021-05-17', '2021-05-18', 67, 245);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (26, 11, '2021-05-17', '2021-05-18', 68, 352);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (27, 9, '2021-05-17', '2021-05-18', 69, 394);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (28, 21, '2021-05-18', '2021-05-18', 70, 496);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (29, 11, '2021-05-18', '2021-05-19', 71, 352);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (30, 16, '2021-05-18', '2021-05-19', 72, 523);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (31, 10, '2021-05-20', '2021-05-20', 73, 114);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (32, 14, '2021-05-20', '2021-05-20', 74, 363);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (33, 1, '2021-05-20', '2021-05-20', 75, 183);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (34, 23, '2021-05-20', '2021-05-20', 77, 143);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (35, 14, '2021-05-22', '2021-05-22', 82, 200);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (36, 26, '2021-05-20', '2021-05-20', 83, 245);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (37, 25, '2021-05-20', '2021-05-20', 84, 160);
INSERT INTO "Order" (id, client_id, order_time, delivery_time, pickup_address, distance)
VALUES (38, 27, '2021-05-20', '2021-05-20', 85, 430);
SET IDENTITY_INSERT "Order" OFF;


-- Table: TruckSet
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (1, 25, 1, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (2, 1, 1, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (2, 22, 2, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (3, 2, 1, 7);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (3, 4, 2, 8);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (4, 1, 1, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (4, 22, 2, 5);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (5, 6, 1, 6);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (5, 7, 2, 9);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (6, 2, 1, 15);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (6, 4, 2, 19);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (7, 20, 1, 14);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (7, 21, 2, 17);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (8, 15, 1, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (8, 16, 2, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (9, 20, 1, 14);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (9, 14, 2, 17);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (10, 4, 1, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (10, 2, 2, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (11, 1, 1, 5);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (11, 22, 2, 6);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (12, 9, 1, 7);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (12, 12, 2, 11);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (13, 4, 1, 8);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (13, 2, 2, 9);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (14, 9, 1, 16);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (14, 10, 2, 19);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (15, 1, 1, 10);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (15, 22, 2, 12);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (16, 8, 1, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (17, 4, 1, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (17, 2, 2, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (18, 1, 1, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (18, 22, 2, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (19, 6, 3, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (19, 7, 4, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (20, 20, 5, 14);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (20, 14, 6, 17);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (21, 15, 3, 5);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (21, 16, 4, 6);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (22, 6, 3, 7);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (22, 7, 4, 8);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (23, 20, 3, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (23, 14, 4, 14);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (24, 25, 5, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (25, 9, 6, 7);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (25, 10, 7, 11);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (26, 15, 8, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (26, 16, 9, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (27, 1, 3, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (27, 29, 4, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (28, 20, 5, 14);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (28, 21, 6, 17);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (29, 15, 7, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (29, 16, 8, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (30, 4, 9, 5);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (30, 2, 10, 6);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (31, 4, 1, 7);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (32, 6, 2, 1);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (32, 7, 3, 2);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (33, 8, 4, 4);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (34, 5, 5, 3);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (34, 28, 6, 5);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (35, 6, 1, 6);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (35, 7, 2, 8);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (35, 31, 7, 9);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (35, 32, 8, 10);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (36, 34, 1, 16);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (37, 35, 9, 11);
INSERT INTO TruckSet (order_id, trailer_id, truck_id, driver_id)
VALUES (38, 6, 10, 12);

-- Table: Order_details
SET IDENTITY_INSERT Order_details ON;
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (1, 14, 1, 1);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (2, 11, 32, 2);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (3, 3, 25, 3);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (4, 9, 30, 4);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (5, 13, 40, 5);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (6, 2, 20, 6);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (7, 7, 42, 7);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (8, 5, 30, 8);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (9, 8, 30, 9);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (10, 1, 50, 10);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (11, 9, 30, 11);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (12, 16, 30, 12);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (13, 4, 40, 13);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (14, 21, 40, 14);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (15, 10, 30, 15);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (16, 14, 2, 16);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (17, 1, 50, 17);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (18, 10, 37, 18);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (19, 13, 40, 19);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (20, 8, 30, 20);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (21, 6, 30, 21);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (22, 13, 40, 22);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (23, 8, 30, 23);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (24, 14, 1, 24);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (25, 21, 40, 25);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (26, 6, 30, 26);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (27, 9, 30, 27);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (28, 7, 42, 28);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (29, 6, 30, 29);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (30, 1, 50, 30);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (31, 3, 25, 31);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (32, 13, 40, 32);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (33, 14, 2, 33);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (34, 18, 20, 34);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (35, 13, 82, 35);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (36, 3, 16, 36);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (37, 22, 30, 37);
INSERT INTO Order_details (id, cargo_id, cargo_amount, order_id)
VALUES (38, 23, 22, 38);
SET IDENTITY_INSERT Order_details OFF;

COMMIT TRAN