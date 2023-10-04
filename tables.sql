CREATE TABLE Addresses
(
	address_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	town VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	house_type VARCHAR(12) NOT NULL,
	address_status VARCHAR(12) NOT NULL
);

CREATE TABLE Water_Meter_Reading
(
	water_meter_reading_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	create_date DATE NOT NULL,
	fixation_date DATE NOT NULL,
	finish_date DATE NOT NULL,
	meter_reading INT,
	meter_status VARCHAR(20) NOT NULL
);

CREATE TABLE Many_To_Many
(
	many_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	address_id INT REFERENCES Addresses(address_id),
	water_meter_reading_id INT REFERENCES Water_Meter_Reading(water_meter_reading_id)
);

CREATE TABLE Users
(
	User_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	first_name VARCHAR(50) NOT NULL,
	second_name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	water_meter_reading_id INT REFERENCES Water_Meter_Reading(water_meter_reading_id)
);

DROP TABLE Addresses;
DROP TABLE Water_Meter_Reading;
DROP TABLE Many_To_Many;
DROP TABLE Users;