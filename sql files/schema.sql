CREATE DATABASE ehotels_db;
USE ehotels_db;
CREATE TABLE Hotel_Chain (
    Chain_id INT PRIMARY KEY AUTO_INCREMENT,
    Central_office_address VARCHAR(255) NOT NULL,
    Central_office_city VARCHAR(255) NOT NULL,
    Number_of_hotels INT NOT NULL,
    Email_addresses VARCHAR(255),
    Phone_numbers VARCHAR(255)
);

CREATE TABLE Hotel (
    Hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    Stars INT NOT NULL CHECK (Stars > 0 AND Stars <= 5),
    Number_of_rooms INT NOT NULL CHECK (Number_of_rooms >= 0),
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_numbers VARCHAR(255),
    Manager_id INT,
    Chain_id INT,
    FOREIGN KEY (Chain_id) REFERENCES Hotel_Chain(Chain_id) ON DELETE CASCADE
);

CREATE TABLE Room (
    Room_id INT PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    Amenities VARCHAR(255),
    Capacity INT NOT NULL CHECK (Capacity > 0),
    View VARCHAR(255),
    Extendable BOOLEAN,
    Problems VARCHAR(255),
    Hotel_id INT NOT NULL,
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id) ON DELETE CASCADE
);

CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    SSN VARCHAR(255) UNIQUE NOT NULL,
    Registration_date DATE NOT NULL
);

CREATE TABLE Employee (
    Employee_id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    SSN VARCHAR(255) UNIQUE NOT NULL,
    Employee_Role VARCHAR(255),
    Hotel_id INT NOT NULL,
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id) ON DELETE CASCADE
);

CREATE TABLE Booking (
    Booking_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_id INT,
    Start_date DATE NOT NULL,
    End_date DATE NOT NULL,
    Price DECIMAL(10,2),
    Room_id INT,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

CREATE TABLE Renting (
    Rent_id INT PRIMARY KEY AUTO_INCREMENT,
    Booking_id INT NOT NULL,
    Start_date DATE NOT NULL,
    End_date DATE NOT NULL,
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);
