-- Inserting data for Hotel Chain 1
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city Number_of_hotels, Email_addresses, Phone_numbers)
VALUES (1, '123 Main St', 'New York, NY', 8, 'info@hotelchain1.com', '555-123-4567');

-- Inserting data for hotels in Hotel Chain 1
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (1, 3, 50, '123 Main St', 'New York, NY', 'nyhotel1@hotelchain1.com', '555-111-1111', 1, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (2, 4, 75, '456 5th Ave', 'New York, NY', 'nyhotel2@hotelchain1.com', '555-222-2222', 2, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (3, 2, 40, '123 Main St', 'Newark, NJ', 'njhotel3@hotelchain1.com', '555-333-3333', 3, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (4, 3, 60, '456 Oak St', 'Trenton, NJ', 'njhotel4@hotelchain1.com', '555-444-4444', 4, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (5, 5, 80, '789 Maple Ave', 'Jersey City, NJ', 'njhotel5@hotelchain1.com', '555-555-5555', 5, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (6, 3, 70, '1234 Main St', 'San Francisco, CA', 'cahotel6@hotelchain1.com', '555-666-6666', 6, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (7, 2, 45, '5678 Beverly Blvd', 'Los Angeles, CA', 'cahotel7@hotelchain1.com', '555-777-7777', 7, 1);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (8, 4, 100, '9012 Beach Blvd', 'Huntington Beach, CA', 'cahotel8@hotelchain1.com', '555-888-8888', 8, 1);

-- Inserting data for rooms in hotels of Hotel Chain 1
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












-- Inserting data for Hotel Chain 2
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers)
VALUES (2, '132 Main St', 'New York, NY', 8, 'info@hotelchain2.com', '555-123-7654');

-- Inserting data for hotels in Hotel Chain 2
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (11, 3, 50, '132 Main St', 'New York, NY', 'nyhotel1@hotelchain2.com', '555-101-1111', 11, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (12, 4, 75, '465 5th Ave', 'New York, NY', 'nyhotel2@hotelchain2.com', '555-202-2222', 12, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (13, 2, 40, '798 Broadway', 'New York, NY', 'nyhotel3@hotelchain2.com', '555-303-3333', 13, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (14, 3, 60, '132 Main St', 'Newark, NJ', 'njhotel4@hotelchain2.com', '555-404-4444', 14, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (15, 5, 80, '456 Oak St', 'Trenton, NJ', 'njhotel5@hotelchain2.com', '555-505-5555', 15, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (16, 3, 70, '789 Maple Ave', 'Jersey City, NJ', 'njhotel6@hotelchain2.com', '555-606-6666', 16, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (17, 2, 45, '1243 Main St', 'San Francisco, CA ', 'njhotel7@hotelchain2.com', '555-707-7777', 17, 2);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (18, 4, 100, '9021 Beach Blvd', 'Huntington Beach, CA', 'njhotel8@hotelchain2.com', '555-808-8888', 18, 2);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (41, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (42, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (43, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (44, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 11);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (45, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 11);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (46, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (47, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (48, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (49, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 12);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (50, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 12);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (51, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (52, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (53, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (54, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 13);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (55, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 13);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (56, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (57, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (58, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (59, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 14);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (60, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 14);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (61, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (62, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (63, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (64, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 15);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (65, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 15);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (66, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (67, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (68, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (69, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 16);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (70, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 16);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (71, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (72, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (73, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (74, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 17);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (75, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 17);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (76, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (77, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (78, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (79, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 18);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (80, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 18);














-- Inserting data for Hotel Chain 3
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers)
VALUES (3, '126 Oak St', 'Trenton, NJ', 8, 'info@hotelchain1.com', '555-321-4567');

-- Inserting data for hotels in Hotel Chain 3
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (21, 3, 50, '13 Main St', 'New York, NY', 'nyhotel1@hotelchain3.com', '555-011-1111', 21, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (22, 4, 75, '46 5th Ave', 'New York, NY', 'nyhotel2@hotelchain3.com', '555-022-2222', 22, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (23, 2, 40, '103 Main St', 'Newark, NJ', 'njhotel3@hotelchain3.com', '555-033-3333', 23, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (24, 3, 60, '126 Oak St', 'Trenton, NJ', 'njhotel4@hotelchain3.com', '555-044-4444', 24, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (25, 5, 80, '79 Maple Ave', 'Jersey City, NJ', 'njhotel5@hotelchain3.com', '555-055-5555', 25, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (26, 3, 70, '124 Main St', 'San Francisco, CA', 'cahotel6@hotelchain3.com', '555-066-6666', 26, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (27, 2, 45, '568 Beverly Blvd', 'Los Angeles, CA', 'cahotel7@hotelchain3.com', '555-077-7777', 27, 3);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (28, 4, 100, '912 Beach Blvd', 'Huntington Beach, CA', 'cahotel8@hotelchain3.com', '555-088-8888', 28, 3);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (81, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (82, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (83, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (84, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (85, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 21);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (86, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (87, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (88, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (89, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 22);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (90, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 22);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (91, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (92, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (93, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (94, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 23);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (95, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 23);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (96, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (97, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (98, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (99, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 24);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (100, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 24);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (101, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (102, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (103, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (104, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 25);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (105, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 25);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (106, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (107, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (108, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (109, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 26);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (110, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 26);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (111, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (112, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (113, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (114, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 27);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (115, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 27);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (116, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (117, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (118, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (119, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 28);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (120, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 28);









-- Inserting data for Hotel Chain 4
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers)
VALUES (4, '127 Main St', 'New York, NY', 8, 'info@hotelchain4.com', '555-123-4567');

-- Inserting data for hotels in Hotel Chain 4
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (31, 3, 50, '127 Main St', 'New York, NY', 'nyhotel1@hotelchain4.com', '555-111-0111', 31, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (32, 4, 75, '4506 5th Ave', 'New York, NY', 'nyhotel2@hotelchain4.com', '555-222-0222', 32, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (33, 2, 40, '7089 Broadway', 'New York, NY', 'nyhotel3@hotelchain4.com', '555-333-0333', 33, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (34, 3, 60, '100 Union Square E', 'New York, NY', 'nyhotel4@hotelchain4.com', '555-444-0444', 34, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (35, 5, 80, '1539 Broadway', 'New York, NY', 'nyhotel5@hotelchain4.com', '555-555-0555', 35, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (36, 3, 70, '1630 Broadway', 'New York, NY', 'nyhotel6@hotelchain4.com', '555-666-0666', 36, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (37, 2, 45, '721 7th Ave', 'New York, NY', 'nyhotel7@hotelchain4.com', '555-777-0777', 37, 4);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (38, 4, 100, '36 Central Park S', 'New York, NY', 'nyhotel8@hotelchain4.com', '555-888-0888', 38, 4);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (121, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (122, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 31);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (123, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (124, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 21);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (125, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 31);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (126, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (127, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (128, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (129, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 32);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (130, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 32);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (131, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (132, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (133, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (134, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 33);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (135, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 33);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (136, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (137, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (138, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (139, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 34);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (140, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 34);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (141, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (142, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (143, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (144, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 35);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (145, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 35);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (146, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (147, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (148, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (149, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 36);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (150, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 36);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (151, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (152, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (153, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (154, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 37);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (155, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 37);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (156, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (157, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (158, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (159, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 38);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (160, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 38);


-- Inserting data for Hotel Chain 5
INSERT INTO Hotel_Chain (Chain_id, Central_office_address, Central_office_city, Number_of_hotels, Email_addresses, Phone_numbers)
VALUES (5, '163 Main St', 'New York, NY', 10, 'info@hotelchain5.com', '555-123-4567');

-- Inserting data for hotels in Hotel Chain 5
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (41, 3, 50, '163 Main St', 'New York, NY', 'nyhotel1@hotelchain5.com', '555-111-1111', 41, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (42, 4, 75, '4256 5th Ave', 'New York, NY', 'nyhotel2@hotelchain5.com', '555-222-2222', 42, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (43, 2, 40, '389 Broadway', 'New York, NY', 'nyhotel3@hotelchain5.com', '555-333-3333', 43, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (44, 3, 60, '50 Union Square E', 'New York, NY', 'nyhotel4@hotelchain5.com', '555-444-4444', 44, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (45, 5, 80, '1935 Broadway', 'New York, NY', 'nyhotel5@hotelchain5.com', '555-555-5555', 45, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (46, 3, 70, '1833 Broadway', 'New York, NY', 'nyhotel6@hotelchain5.com', '555-666-6666', 46, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (47, 2, 45, '731 7th Ave', 'New York, NY', 'nyhotel7@hotelchain5.com', '555-777-7777', 47, 5);
INSERT INTO Hotel (Hotel_id, Stars, Number_of_rooms, Address, City, Email, Phone_numbers, Manager_id, Chain_id)
VALUES (48, 4, 100, '39 Central Park S', 'New York, NY', 'nyhotel8@hotelchain5.com', '555-888-8888', 48, 5);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (161, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 41);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (162, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 41);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (163, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 41);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (164, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 41);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (165, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 41);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (166, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 42);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (167, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 42);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (168, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 42);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (169, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 42);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (170, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 42);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (171, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 43);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (172, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 43);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (173, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 43);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (174, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 43);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (175, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 43);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (176, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 44);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (177, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 44);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (178, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 44);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (179, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 44);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (180, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 44);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (181, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 45);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (182, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 45);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (183, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 45);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (184, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 45);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (185, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 45);


INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (186, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 46);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (187, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 46);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (188, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 46);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (189, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 46);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (190, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 46);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (191, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 47);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (192, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 47);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (193, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 47);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (194, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 47);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (195, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 47);

INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (196, 150.00, 'Free Wi-Fi, TV, mini-bar', 2, 'City view', TRUE, NULL, 48);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (197, 250.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 3, 'City view', TRUE, NULL, 48);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (198, 100.00, 'Free Wi-Fi, TV', 1, 'Front view', TRUE, NULL, 48);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (199, 175.00, 'Free Wi-Fi, TV', 4, 'No view', TRUE, 'Broken AC', 48);
INSERT INTO Room (Room_id, Price, Amenities, Capacity, View, Extendable, Problems, Hotel_id)
VALUES (200, 350.00, 'Free Wi-Fi, TV, mini-bar, Room Service, Balcony, Jacuzzi', 5, 'City view', TRUE, NULL, 48);
