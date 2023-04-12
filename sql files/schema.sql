CREATE DATABASE ehotels_db;
USE ehotels_db;
CREATE TABLE hotel_chain (
    chain_id INT PRIMARY KEY AUTO_INCREMENT,
    central_office_address VARCHAR(255) NOT NULL,
    central_office_city VARCHAR(255) NOT NULL,
    number_of_hotels INT NOT NULL,
    email_addresses VARCHAR(255),
    phone_numbers VARCHAR(255),
    chain_name VARCHAR(255) NOT NULL
);

CREATE TABLE hotel (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    stars INT NOT NULL CHECK (Stars > 0 AND Stars <= 5),
    number_of_rooms INT NOT NULL CHECK (number_of_rooms >= 0),
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_numbers VARCHAR(255),
    hotel_name VARCHAR(255) NOT NULL,
    manager_id INT,
    chain_id INT,
    FOREIGN KEY (chain_id) REFERENCES hotel_chain(chain_id) ON DELETE CASCADE
);

CREATE TABLE room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0),
    amenities VARCHAR(255),
    capacity INT NOT NULL CHECK (Capacity > 0),
    view VARCHAR(255),
    extendable BOOLEAN,
    problems VARCHAR(255),
    hotel_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    ssn VARCHAR(255) UNIQUE NOT NULL,
    registration_date DATE NOT NULL
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_Name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(255),
    ssn VARCHAR(255) UNIQUE NOT NULL,
    employee_role VARCHAR(255),
    hotel_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE
);

CREATE TABLE booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2),
    room_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE renting (
    renting_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    paid BOOLEAN,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);
