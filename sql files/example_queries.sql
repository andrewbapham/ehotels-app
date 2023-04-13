-- Example Queries
-- 1: Select hotel rooms in seattle
SELECT r.* FROM Room r LEFT JOIN Hotel h ON r.hotel_id = h.hotel_id WHERE h.city LIKE 'Seattle' LIMIT 0, 1000;

-- 2: Show all hotel rooms that have 5 or more available rooms on the given dates
SELECT Room.hotel_id, count(*) FROM Room, hotel h WHERE  Room.room_id NOT IN (SELECT r.room_id FROM occupiedrooms r WHERE
r.start_date <= '2023-04-14' AND r.end_date>= '2023-04-08') AND Room.hotel_id = h.hotel_id GROUP BY Room.hotel_id HAVING COUNT(*) > 4;

-- 3 : Example query from room search form (Any price, amenities include Free wifi, TV, Mini-bar, Balcony, hotel locaated in New York, Hotel has any number of available rooms, rooms are available between April 12 and April 14 2023).
SELECT availRooms.*, hotel.hotel_name, hotel.address, hotel.city, hotel.stars, hotel_chain.chain_name FROM 
(SELECT room.* FROM room, hotel WHERE TRUE AND  room.price <= 1000 AND  room.price >= 0 AND  room.amenities LIKE '%Free wi-fi%' 
	AND room.amenities LIKE '%TV%' AND room.amenities LIKE '%Mini-bar%' AND room.amenities LIKE '%Balcony%' AND hotel.city LIKE 'New York' AND  room.hotel_id 
		IN (SELECT counts.hotel_id FROM (SELECT room.hotel_id, count(*) FROM room, hotel h WHERE 
        room.room_id NOT IN (SELECT r.room_id FROM occupied_rooms r WHERE r.start_date <= '2023-04-14' AND r.end_date>= '2023-04-12') 
		AND room.hotel_id = h.hotel_id GROUP BY room.hotel_id HAVING COUNT(*) >= 0) counts) 
	AND  room.room_id NOT IN (SELECT r.room_id FROM occupied_rooms r WHERE r.start_date <= '2023-04-14' AND r.end_date >= '2023-04-12') AND room.hotel_id = hotel.hotel_id) 
availRooms, hotel, hotel_chain WHERE availRooms.hotel_id = hotel.hotel_id AND hotel.chain_id = hotel_chain.chain_id;


-- 4: Show all rooms available between April 8 and April 14 with price less than or equal to 300
SELECT Room.* FROM Room, Hotel WHERE Room.room_id NOT IN (SELECT r.room_id FROM occupied_rooms r WHERE
r.start_date <= '2023-04-14' AND r.end_date>= '2023-04-08') AND Room.price <= 300 AND Room.hotel_id = Hotel.hotel_id;