-- Hotel_chain data
INSERT INTO hotel_chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers, Chain_name)
VALUES 
    (1, '123 Main St', 'New York', 8, 'info@hotelchain.com', '555-1234', 'Hotel Chain Inc.'),
    (2, '456 Market St', 'San Francisco', 8, 'reservations@hotels-r-us.com', '555-5678', 'Hotels-R-Us'),
    (3, '789 Broad St', 'Chicago', 8, 'info@midwesthotels.com', '101-555-9101', 'Midwest Hotels'),
    (4, '321 Park Ave', 'Miami', 8, 'reservations@sunrisehotels.com', '555-1212', 'Sunrise Hotels'),
    (5, '555 Fifth Ave', 'Los Angeles', 8, 'info@luxuryhotels.com', '555-2323', 'Luxury Hotels');

-- Hotels for Hotel Chain 1
INSERT INTO hotel(Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES (1, 4, 5, '123 Main St', 'Seattle', 'hotel1@hotelchain.com', '111-555-1234', 'Seattle Hotel', 1, 1),
       (2, 3, 5, '456 First Ave', 'Miami', 'hotel2@hotelchain.com', '256-555-5678', 'Portland Inn', 2, 1),
       (3, 2, 5, '789 Second St', 'San Francisco', 'hotel3@hotelchain.com', '103-555-9012', 'San Fran Suites', 3, 1),
       (4, 4, 5, '555 Third St', 'Los Angeles', 'hotel4@hotelchain.com', '102-555-3456', 'LA Lodge', 4, 1),
       (5, 3, 5, '777 Fourth Ave', 'Chicago', 'hotel5@hotelchain.com', '101-555-7890', 'Chicago Plaza', 5, 1),
       (6, 2, 5, '888 Fifth St', 'New York', 'hotel6@hotelchain.com', '100-555-2345', 'NYC Suites', 6, 1),
       (7, 4, 5, '999 Sixth Ave', 'Houston', 'hotel7@hotelchain.com', '234-555-6789', 'Houston Inn', 7, 1),
       (8, 5, 5, '111 Seventh St', 'Miami', 'hotel8@hotelchain.com', '123-555-0123', 'Miami Suites', 8, 1);

-- Hotels for Hotel Chain 2
INSERT INTO hotel(Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES 
(9, 4, 5, '1234 Main St', 'Seattle', 'hotel9@hotels-r-us.com', '(555) 555-0009', 'Magnolia Hotel', 9, 2),
(10, 3, 5, '5678 Elm St', 'Portland', 'hotel10@hotels-r-us.com', '(555) 555-0010', 'Pine Hotel', 10, 2),
(11, 5, 5, '9101 Maple St', 'San Francisco', 'hotel11@hotels-r-us.com', '(555) 555-0011', 'Redwood Hotel', 11, 2),
(12, 4, 5, '1213 Oak St', 'Los Angeles', 'hotel12@hotels-r-us.com', '(555) 555-0012', 'Willow Hotel', 12, 2),
(13, 3, 5, '1415 Cedar St', 'San Diego', 'hotel13@hotels-r-us.com', '(555) 555-0013', 'Sequoia Hotel', 13, 2),
(14, 5, 5, '1617 Pine St', 'Los Angeles', 'hotel14@hotels-r-us.com', '(555) 555-0014', 'Sunrise Hotel', 14, 2),
(15, 4, 5, '1819 Birch St', 'Phoenix', 'hotel15@hotels-r-us.com', '(555) 555-0015', 'Canyon Hotel', 15, 2),
(16, 3, 5, '2021 Spruce St', 'Dallas', 'hotel16@hotels-r-us.com', '(555) 555-0016', 'Elm Hotel', 16, 2);

-- Hotels for Hotel Chain 3
INSERT INTO hotel(Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES
    (17, 5, 5, '123 Main St', 'Chicago', 'hotel17@midwesthotels.com', '123-456-7890', 'Midwest Plaza', 17, 3),
    (18, 5, 5, '456 Elm St', 'Chicago', 'hotel18@midwesthotels.com', '123-456-7890', 'Midwest Suites', 18, 3),
    (19, 5, 5, '789 Oak St', 'Chicago', 'hotel19@midwesthotels.com', '123-456-7890', 'Midwest Grand', 19, 3),
    (20, 4, 5, '321 Maple Ave', 'Milwaukee', 'hotel20@midwesthotels.com', '123-456-7890', 'Midwest Inn', 20, 3),
    (21, 2, 5, '654 Birch Rd', 'Milwaukee', 'hotel21@midwesthotels.com', '123-456-7890', 'Midwest Lodge', 21, 3),
    (22, 1, 5, '987 Walnut Blvd', 'Madison', 'hotel22@midwesthotels.com', '123-456-7890', 'Midwest House', 22, 3),
    (23, 5, 5, '147 Cherry St', 'Madison', 'hotel23@midwesthotels.com', '123-456-7890', 'Midwest View', 23, 3),
    (24, 3, 5, '258 Pine Rd', 'Madison', 'hotel24@midwesthotels.com', '123-456-7890', 'Midwest Garden', 24, 3);

-- Hotels for Hotel Chain 4
INSERT INTO hotel(Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES 
    (25, 4, 5, '123 Main St', 'Los Angeles', 'hotel25@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Los Angeles', 25, 4),
    (26, 5, 5, '456 Elm St', 'San Francisco', 'hotel26@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel San Francisco', 26, 4),
    (27, 3, 5, '789 Oak St', 'Seattle', 'hotel27@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Seattle', 27, 4),
    (28, 4, 5, '12 Pine St', 'Miami', 'hotel28@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Miami', 28, 4),
    (29, 5, 5, '34 Maple St', 'New York', 'hotel29@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel New York', 29, 4),
    (30, 3, 5, '56 Cedar St', 'Chicago', 'hotel30@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Chicago', 30, 4),
    (31, 4, 5, '78 Pineapple St', 'Austin', 'hotel31@sunrisehotels.com', '123-456-7890', 'Sunrise Hotel Austin', 31, 4),
    (32, 2, 5, '90 Peach St', 'Chicago', 'hotel32@sunrisehotels.com', '123-456-7890', 'Sunrise Inn Chicago', 32, 4);

-- Hotels for Hotel Chain 5
INSERT INTO hotel(Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Hotel_name, Manager_id, Chain_id)
VALUES
    (33, 4, 5, '1234 Main St', 'Los Angeles', 'hotel33@luxuryhotels.com', '123-456-7890', 'Luxury Inn', 33, 5),
    (34, 3, 5, '5678 Elm St', 'New York', 'hotel34@luxuryhotels.com', '123-456-7890', 'Luxury Suites', 34, 5),
    (35, 5, 5, '9101 Oak St', 'Chicago', 'hotel35@luxuryhotels.com', '123-456-7890', 'Luxury Lodge', 35, 5),
    (36, 5, 5, '1212 Maple St', 'New York', 'hotel36@luxuryhotels.com', '123-456-7890', 'Luxury Tower', 36, 5),
    (37, 5, 5, '1313 Oak St', 'Miami', 'hotel37@luxuryhotels.com', '123-456-7890', 'Luxury Mansion', 37, 5),
    (38, 3, 5, '1414 Pine St', 'San Francisco', 'hotel38@luxuryhotels.com', '123-456-7890', 'Luxury Inn and Suites', 38, 5),
    (39, 4, 5, '1515 Cedar St', 'Seattle', 'hotel39@luxuryhotels.com', '123-456-7890', 'Luxury Place', 39, 5),
    (40, 5, 5, '1616 Walnut St', 'Dallas', 'hotel40@luxuryhotels.com', '123-456-7890', 'Luxury Resort', 40, 5);

-- Room insertion data

-- Rooms for chain 1
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (1, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 1);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (2, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 1);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (3, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 1);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (4, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 1);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (5, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 1);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (6, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 2);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (7, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 2);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (8, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 2);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (9, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 2);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (10, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 2);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (11, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 3);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (12, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 3);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (13, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 3);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (14, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 3);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (15, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 3);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (16, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 4);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (17, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 4);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (18, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 4);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (19, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 4);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (20, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 4);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (21, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 5);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (22, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 5);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (23, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 5);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (24, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 5);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (25, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 5);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (26, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 6);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (27, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 6);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (28, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 6);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (29, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 6);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (30, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 6);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (31, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 7);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (32, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 7);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (33, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 7);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (34, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 7);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (35, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 7);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (36, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 8);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (37, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 8);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (38, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 8);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (39, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 8);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (40, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 8);

-- Rooms for chain 2
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (41, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 9);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (42, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 9);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (43, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 9);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (44, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 9);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (45, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 9);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (46, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 10);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (47, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 10);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (48, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 10);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (49, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 10);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (50, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 10);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (51, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 11);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (52, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 11);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (53, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 11);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (54, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 11);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (55, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 11);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (56, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 12);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (57, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 12);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (58, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 12);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (59, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 12);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (60, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 12);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (61, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 13);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (62, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 13);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (63, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 13);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (64, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 13);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (65, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 13);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (66, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 14);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (67, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 14);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (68, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 14);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (69, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 14);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (70, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 14);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (71, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 15);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (72, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 15);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (73, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 15);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (74, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 15);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (75, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 15);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (76, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 16);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (77, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 16);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (78, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 16);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (79, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 16);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (80, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 16);

-- Hotels in chain 3

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (81, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 17);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (82, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 17);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (83, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 17);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (84, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 17);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (85, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 17);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (86, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 18);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (87, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 18);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (88, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 18);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (89, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 18);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (90, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 18);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (91, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 19);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (92, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 19);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (93, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 19);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (94, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 19);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (95, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 19);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (96, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 20);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (97, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 20);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (98, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 20);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (99, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 20);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (100, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 20);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (101, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 21);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (102, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 21);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (103, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 21);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (104, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 21);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (105, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 21);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (106, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 22);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (107, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 22);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (108, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 22);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (109, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 22);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (110, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 22);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (111, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 23);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (112, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 23);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (113, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 23);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (114, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 23);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (115, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 23);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (116, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 24);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (117, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 24);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (118, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 24);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (119, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 24);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (120, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 24);

-- Rooms for chain 4
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (121, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 25);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (122, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 25);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (123, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 25);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (124, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 25);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (125, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 25);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (126, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 26);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (127, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 26);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (128, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 26);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (129, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 26);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (130, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 26);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (131, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 27);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (132, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 27);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (133, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 27);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (134, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 27);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (135, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 27);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (136, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 28);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (137, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 28);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (138, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 28);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (139, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 28);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (140, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 28);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (141, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 29);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (142, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 29);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (143, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 29);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (144, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 29);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (145, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 29);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (146, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 30);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (147, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 30);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (148, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 30);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (149, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 30);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (150, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 30);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (151, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 31);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (152, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 31);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (153, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 31);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (154, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 31);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (155, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 31);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (156, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 32);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (157, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 32);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (158, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 32);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (159, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 32);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (160, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 32);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (161, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 33);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (162, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 33);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (163, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 33);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (164, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 33);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (165, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 33);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (166, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 34);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (167, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 34);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (168, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 34);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (169, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 34);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (170, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 34);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (171, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 35);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (172, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 35);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (173, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 35);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (174, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 35);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (175, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 35);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (176, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 36);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (177, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 36);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (178, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 36);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (179, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 36);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (180, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 36);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (181, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 37);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (182, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 37);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (183, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 37);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (184, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 37);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (185, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 37);


INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (186, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 38);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (187, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 38);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (188, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 38);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (189, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 38);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (190, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 38);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (191, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 39);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (192, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 39);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (193, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 39);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (194, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 39);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (195, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 39);

INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (196, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 40);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (197, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 40);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (198, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 40);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (199, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 40);
INSERT INTO room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (200, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 40);

-- Example entries for the other tables
INSERT INTO customer (customer_name, address, city, ssn, registration_date)
VALUES 
    ('John Doe', '123 Main St', 'New York', '123-45-6789', '2022-01-01'),
    ('Jane Smith', '456 Oak Ave', 'Chicago', '987-65-4321', '2021-12-31'),
    ('Bob Johnson', '789 Maple Rd', 'Los Angeles', '555-55-5555', '2022-03-15'),
    ('Alice Lee', '321 Elm St', 'San Francisco', '111-11-1111', '2022-02-28'),
    ('Sam Rodriguez', '444 Pine Ave', 'Miami', '222-22-2222', '2022-04-01'),
    ('Emily Davis', '555 Cedar Blvd', 'Dallas', '333-33-3333', '2021-11-15'),
    ('Mike Wilson', '666 Spruce St', 'Atlanta', '444-44-4444', '2022-05-01'),
    ('Kelly Brown', '777 Birch Ln', 'Seattle', '999-99-9999', '2022-06-01');
    
INSERT INTO booking (customer_id, start_date, end_date, price, room_id)
VALUES 
(1, '2023-04-15', '2023-04-18', 150.00, 10),
(2, '2023-04-14', '2023-04-17', 200.00, 24),
(3, '2023-04-18', '2023-04-21', 175.00, 60),
(4, '2023-04-20', '2023-04-23', 225.00, 73),
(5, '2023-04-16', '2023-04-19', 190.00, 101),
(6, '2023-04-13', '2023-04-16', 165.00, 129),
(7, '2023-04-21', '2023-04-24', 210.00, 149),
(8, '2023-04-19', '2023-04-22', 180.00, 182),
-- These will trigger the rental creation since they are created before the current (submission date) date
(3, '2023-04-12', '2023-04-15', 450.00, 105),
(6, '2023-04-12', '2023-04-14', 300.00, 50),
(8, '2023-04-12', '2023-04-13', 200.00, 75),
(2, '2023-04-12', '2023-04-17', 650.00, 150),
(5, '2023-04-12', '2023-04-13', 120.00, 10);

-- Employee data
INSERT INTO employee (employee_name, address, city, ssn, employee_role, hotel_id)
VALUES 
    ('John Smith', '123 Main St', 'New York', '123-45-6789', 'Manager', 1),
    ('Jane Doe', '456 Elm St', 'Los Angeles', '234-56-7890', 'Receptionist', 2),
    ('Bob Johnson', '789 Oak St', 'Chicago', '345-67-8901', 'Housekeeper', 3),
    ('Alice Brown', '321 Pine St', 'Miami', '456-78-9012', 'Manager', 4),
    ('Mike Davis', '654 Cedar St', 'San Francisco', '567-89-0123', 'Maintenance', 5),
    ('Sarah Lee', '987 Maple St', 'Seattle', '678-90-1234', 'Concierge', 6),
    ('David Chen', '555 Birch St', 'Boston', '789-01-2345', 'Housekeeper', 7),
    ('Karen Kim', '222 Walnut St', 'Dallas', '890-12-3456', 'Receptionist', 8),
    ('Alex Johnson', '789 Oak St', 'Chicago', '345-67-8902', 'Maintenance', 9),
	('Maria Rodriguez', '111 Maple Ave', 'New York', '456-78-9022', 'Manager', 10),
	('William Lee', '222 Oak Ave', 'New York', '567-19-0123', 'Front Desk Clerk', 11),
	('Karen Brown', '333 Cedar Ave', 'New York', '678-90-1134', 'Housekeeping', 12),
	('Mike Davis', '444 Pine Ave', 'New York', '719-01-2345', 'Maintenance', 13),
	('Emily Garcia', '555 Maple St', 'New York', '810-12-3456', 'Manager', 14),
	('David Thompson', '666 Oak St', 'Boston', '901-23-4567', 'Front Desk Clerk', 15),
	('Susan Hernandez', '777 Pine St', 'Boston', '012-34-5678', 'Housekeeping', 16),
	('George Clark', '888 Cedar St', 'Boston', '123-45-6289', 'Maintenance', 17),
	('Lucas Gonzalez', '999 Maple Ave', 'Boston', '231-56-7890', 'Manager', 18),
	('Michelle Wright', '111 Oak Ave', 'Boston', '345-67-8101', 'Front Desk Clerk', 19),
	('Erica Johnson', '222 Cedar Ave', 'Miami', '456-74-9012', 'Housekeeping', 20),
	('Brian Wilson', '333 Pine Ave', 'Miami', '567-89-0023', 'Maintenance', 21),
	('Jessica Martinez', '444 Maple St', 'Miami', '670-90-1234', 'Manager', 22),
    ('Mohamed Elhabib', '293 Russell Ave', 'Madison', '291-22-9323', 'Manager', 23),
	('Ryan Taylor', '555 Oak St', 'Miami', '780-01-2345', 'Front Desk Clerk', 24),
	('John Smith', '123 Main St', 'Miami', '123-45-6709', 'Front Desk Clerk', 25),
	('Lisa Thompson', '456 Park Ave', 'Miami', '232-56-7890', 'Housekeeping Staff', 26),
	('Alex Johnson', '789 5th St', 'Miami', '345-67-2901', 'Hotel Manager', 27),
	('Olivia Lee', '321 Oak Rd', 'Miami', '456-28-9012', 'Room Service Attendant', 28),
	('William Davis', '654 Elm St', 'Miami', '567-89-0121', 'Concierge', 29),
	('Sophia Martinez', '987 Maple Ave', 'Miami', '628-90-1234', 'Maintenance Technician', 30),
	('Daniel Wilson', '741 Pine St', 'Miami', '711-01-2345', 'Security Officer', 31),
	('Mia Garcia', '852 Cedar Rd', 'Miami', '890-12-3426', 'Front Desk Manager', 32),
	('Mary Johnson', '456 Maple Ave', 'New York', '234-56-0890', 'Receptionist', 33),
	('David Lee', '789 Elm St', 'San Francisco', '305-67-8901', 'Housekeeping', 34),
	('Samantha Rodriguez', '321 Oak St', 'Los Angeles', '406-78-9012', 'Manager', 35),
	('Michael Chen', '654 Pine St', 'Chicago', '567-89-0129', 'Receptionist', 36),
	('Emily Kim', '987 Cedar St', 'Houston', '678-00-1234', 'Housekeeping', 37),
	('William Davis', '159 Walnut St', 'Miami', '789-01-2322', 'Manager', 38),
	('Sophia Martinez', '753 Cherry St', 'Dallas', '690-12-3456', 'Receptionist', 39),
	('Luna Lovegood', '369 Burrow St', 'Phoenix', '223-45-6789', 'Front Desk Clerk', 40);

    -- Indexes

-- We often filter hotels by city, this index will make such queries more efficient
CREATE INDEX ix_hotel_city
ON hotel(city);

-- Customers will often filter rooms most often by price
CREATE INDEX ix_room_price
ON room(price);

-- Customers will also filter by city and quality
CREATE INDEX ix_hotel_stars
ON hotel(city, stars);

-- This index helps search for rooms of a certain capacity while filtering by location
CREATE INDEX ix_room_hotel_capacity
ON room(hotel_id, capacity);