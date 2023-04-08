-- Hotel_chain data
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers, Chain_name)
VALUES 
    (1, '123 Main St', 'New York', 10, 'info@hotelchain.com', '555-1234', 'Hotel Chain Inc.'),
    (2, '456 Market St', 'San Francisco', 15, 'reservations@hotels-r-us.com', '555-5678', 'Hotels-R-Us'),
    (3, '789 Broad St', 'Chicago', 12, 'info@midwesthotels.com', '101-555-9101', 'Midwest Hotels'),
    (4, '321 Park Ave', 'Miami', 8, 'reservations@sunrisehotels.com', '555-1212', 'Sunrise Hotels'),
    (5, '555 Fifth Ave', 'Los Angeles', 20, 'info@luxuryhotels.com', '555-2323', 'Luxury Hotels');

-- Hotels for Hotel Chain 1
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES (1, 4, 5, '123 Main St', 'Seattle', 'hotel1@hotelchain.com', '111-555-1234', 'Seattle Hotel', 1, 1),
       (2, 3, 6, '456 First Ave', 'Miami', 'hotel2@hotelchain.com', '256-555-5678', 'Portland Inn', 2, 1),
       (3, 2, 7, '789 Second St', 'San Francisco', 'hotel3@hotelchain.com', '103-555-9012', 'San Fran Suites', 3, 1),
       (4, 4, 5, '555 Third St', 'Los Angeles', 'hotel4@hotelchain.com', '102-555-3456', 'LA Lodge', 4, 1),
       (5, 3, 6, '777 Fourth Ave', 'Chicago', 'hotel5@hotelchain.com', '101-555-7890', 'Chicago Plaza', 5, 1),
       (6, 2, 7, '888 Fifth St', 'New York', 'hotel6@hotelchain.com', '100-555-2345', 'NYC Suites', 6, 1),
       (7, 4, 5, '999 Sixth Ave', 'Houston', 'hotel7@hotelchain.com', '234-555-6789', 'Houston Inn', 7, 1),
       (8, 5, 6, '111 Seventh St', 'Miami', 'hotel8@hotelchain.com', '123-555-0123', 'Miami Suites', 8, 1);

-- Hotels for Hotel Chain 2
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES 
(9, 4, 6, '1234 Main St', 'Seattle', 'hotel9@hotels-r-us.com', '(555) 555-0009', 'Magnolia Hotel', 1, 2),
(10, 3, 7, '5678 Elm St', 'Portland', 'hotel10@hotels-r-us.com', '(555) 555-0010', 'Pine Hotel', 2, 2),
(11, 5, 6, '9101 Maple St', 'San Francisco', 'hotel11@hotels-r-us.com', '(555) 555-0011', 'Redwood Hotel', 3, 2),
(12, 4, 5, '1213 Oak St', 'Los Angeles', 'hotel12@hotels-r-us.com', '(555) 555-0012', 'Willow Hotel', 4, 2),
(13, 3, 5, '1415 Cedar St', 'San Diego', 'hotel13@hotels-r-us.com', '(555) 555-0013', 'Sequoia Hotel', 5, 2),
(14, 5, 6, '1617 Pine St', 'Los Angeles', 'hotel14@hotels-r-us.com', '(555) 555-0014', 'Sunrise Hotel', 6, 2),
(15, 4, 7, '1819 Birch St', 'Phoenix', 'hotel15@hotels-r-us.com', '(555) 555-0015', 'Canyon Hotel', 7, 2),
(16, 3, 5, '2021 Spruce St', 'Dallas', 'hotel16@hotels-r-us.com', '(555) 555-0016', 'Elm Hotel', 8, 2);

-- Hotels for Hotel Chain 3
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES
    (17, 5, 7, '123 Main St', 'Chicago', 'hotel17@midwesthotels.com', '123-456-7890', 'Midwest Plaza', NULL, 3),
    (18, 5, 7, '456 Elm St', 'Chicago', 'hotel18@midwesthotels.com', '123-456-7890', 'Midwest Suites', NULL, 3),
    (19, 5, 6, '789 Oak St', 'Chicago', 'hotel19@midwesthotels.com', '123-456-7890', 'Midwest Grand', NULL, 3),
    (20, 4, 5, '321 Maple Ave', 'Milwaukee', 'hotel20@midwesthotels.com', '123-456-7890', 'Midwest Inn', NULL, 3),
    (21, 2, 6, '654 Birch Rd', 'Milwaukee', 'hotel21@midwesthotels.com', '123-456-7890', 'Midwest Lodge', NULL, 3),
    (22, 1, 5, '987 Walnut Blvd', 'Madison', 'hotel22@midwesthotels.com', '123-456-7890', 'Midwest House', NULL, 3),
    (23, 5, 7, '147 Cherry St', 'Madison', 'hotel23@midwesthotels.com', '123-456-7890', 'Midwest View', NULL, 3),
    (24, 3, 7, '258 Pine Rd', 'Madison', 'hotel24@midwesthotels.com', '123-456-7890', 'Midwest Garden', NULL, 3);

-- Hotels for Hotel Chain 4
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES 
    (25, 4, 7, '123 Main St', 'Los Angeles', 'hotel25@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Los Angeles', NULL, 4),
    (26, 5, 5, '456 Elm St', 'San Francisco', 'hotel26@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel San Francisco', NULL, 4),
    (27, 3, 6, '789 Oak St', 'Seattle', 'hotel27@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Seattle', NULL, 4),
    (28, 4, 5, '12 Pine St', 'Miami', 'hotel28@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Miami', NULL, 4),
    (29, 5, 6, '34 Maple St', 'New York', 'hotel29@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel New York', NULL, 4),
    (30, 3, 5, '56 Cedar St', 'Chicago', 'hotel30@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Chicago', NULL, 4),
    (31, 4, 7, '78 Pineapple St', 'Austin', 'hotel31@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Austin', NULL, 4),
    (32, 2, 6, '90 Peach St', 'Chicago', 'hotel32@sunrisehotels.com', '123-456-7890', 'Sunrise Inn Chicago', NULL, 4);

-- Hotels for Hotel Chain 5
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES
    (33, 4, 5, '1234 Main St', 'Los Angeles', 'hotel33@luxuryhotels.com', '123-456-7890', 'Luxury Inn', NULL, 5),
    (34, 3, 6, '5678 Elm St', 'New York', 'hotel34@luxuryhotels.com', '123-456-7890', 'Luxury Suites', NULL, 5),
    (35, 5, 7, '9101 Oak St', 'Chicago', 'hotel35@luxuryhotels.com', '123-456-7890', 'Luxury Lodge', NULL, 5),
    (36, 5, 5, '1212 Maple St', 'New York', 'hotel36@luxuryhotels.com', '123-456-7890', 'Luxury Tower', NULL, 5),
    (37, 5, 6, '1313 Oak St', 'Miami', 'hotel37@luxuryhotels.com', '123-456-7890', 'Luxury Mansion', NULL, 5),
    (38, 3, 7, '1414 Pine St', 'San Francisco', 'hotel38@luxuryhotels.com', '123-456-7890', 'Luxury Inn and Suites', NULL, 5),
    (39, 4, 5, '1515 Cedar St', 'Seattle', 'hotel39@luxuryhotels.com', '123-456-7890', 'Luxury Place', NULL, 5),
    (40, 5, 7, '1616 Walnut St', 'Dallas', 'hotel40@luxuryhotels.com', '123-456-7890', 'Luxury Resort', NULL, 5);

-- Room insertion data

-- Rooms for chain 1
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (1, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 1);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (2, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 1);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (3, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 1);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (4, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 1);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (5, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 1);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (6, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 2);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (7, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 2);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (8, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 2);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (9, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 2);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (10, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 2);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (11, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 3);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (12, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 3);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (13, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 3);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (14, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 3);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (15, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 3);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (16, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 4);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (17, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 4);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (18, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 4);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (19, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 4);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (20, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 4);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (21, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 5);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (22, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 5);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (23, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 5);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (24, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 5);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (25, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 5);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (26, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 6);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (27, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 6);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (28, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 6);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (29, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 6);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (30, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 6);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (31, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 7);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (32, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 7);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (33, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 7);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (34, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 7);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (35, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 7);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (36, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 8);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (37, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 8);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (38, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 8);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (39, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 8);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (40, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 8);

-- Rooms for chain 2
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (41, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 9);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (42, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 9);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (43, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 9);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (44, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 9);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (45, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 9);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (46, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 10);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (47, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 10);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (48, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 10);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (49, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 10);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (50, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 10);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (51, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (52, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (53, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (54, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (55, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 11);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (56, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (57, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (58, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (59, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (60, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 12);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (61, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (62, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (63, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (64, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (65, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 13);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (66, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (67, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (68, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (69, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (70, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 14);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (71, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (72, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (73, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (74, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (75, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 15);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (76, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (77, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (78, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (79, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (80, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 16);

-- Hotels in chain 3

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (81, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (82, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (83, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (84, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (85, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 17);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (86, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (87, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (88, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (89, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (90, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 18);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (91, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 19);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (92, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 19);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (93, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 19);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (94, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 19);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (95, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 19);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (96, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 20);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (97, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 20);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (98, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 20);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (99, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 20);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (100, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 20);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (101, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (102, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (103, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (104, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (105, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 21);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (106, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (107, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (108, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (109, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (110, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 22);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (111, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (112, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (113, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (114, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (115, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 23);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (116, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (117, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (118, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (119, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (120, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 24);

-- Rooms for chain 4
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (121, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (122, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (123, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (124, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (125, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 25);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (126, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (127, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (128, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (129, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (130, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 26);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (131, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (132, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (133, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (134, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (135, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 27);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (136, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (137, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (138, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (139, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (140, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 28);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (141, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 29);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (142, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 29);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (143, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 29);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (144, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 29);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (145, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 29);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (146, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 30);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (147, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 30);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (148, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 30);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (149, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 30);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (150, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 30);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (151, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 31);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (152, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 31);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (153, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 31);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (154, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 31);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (155, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 31);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (156, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (157, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (158, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (159, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (160, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 32);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (161, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (162, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (163, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (164, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (165, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 33);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (166, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (167, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (168, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (169, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (170, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 34);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (171, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (172, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (173, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (174, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (175, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 35);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (176, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (177, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (178, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (179, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (180, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 36);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (181, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (182, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (183, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (184, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (185, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 37);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (186, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (187, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (188, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (189, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (190, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 38);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (191, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 39);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (192, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 39);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (193, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 39);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (194, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 39);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (195, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 39);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (196, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 40);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (197, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 40);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (198, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 40);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (199, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 40);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (200, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 40);







