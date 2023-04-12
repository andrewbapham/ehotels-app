DELIMITER //

CREATE TRIGGER delete_booking 
BEFORE DELETE ON Booking
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error, cannot delete from table booking.';
END //

CREATE TRIGGER delete_renting
BEFORE DELETE ON Renting
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error, cannot delete from table renting.';
END //

-- Automatically makes a renting if the booking is made for the same day or earlier
CREATE TRIGGER make_renting
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
    IF DATE(NEW.start_date) <= DATE(NOW()) AND DATE(NEW.end_date) >= DATE(NOW()) THEN
    BEGIN
		INSERT INTO Renting (booking_id, start_date, end_date, paid) VALUE (NEW.booking_id, NEW.start_date, NEW.end_date, 0);
	END;
    END IF;
    
END//


-- Stops insertion if date range is an invalid value (end date before start date)
CREATE TRIGGER bad_date_range_booking
BEFORE INSERT ON Booking
FOR EACH ROW
BEGIN
	IF NOT DATE(NEW.start_date) <= DATE(NEW.end_date) THEN
    BEGIN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error, end date is before start date.';
	END;
	END IF;
END//

-- Calculates the price of a booking on insertion
CREATE TRIGGER calculate_booking_price
BEFORE INSERT ON Booking
FOR EACH ROW
BEGIN
	SET NEW.price = (DATEDIFF(NEW.end_date, NEW.start_date) * (SELECT Room.price FROM Room WHERE Room.room_id = NEW.room_id));
END //

CREATE TRIGGER calculate_booking_price_on_update
BEFORE UPDATE ON Booking
FOR EACH ROW
BEGIN
	IF NEW.start_date <> OLD.start_date OR NEW.end_date <> OLD.end_date THEN
		SET NEW.price = (DATEDIFF(NEW.end_date, NEW.start_date) * (SELECT Room.price FROM Booking INNER JOIN Room ON Room.room_id = Booking.room_id WHERE Room.room_id = NEW.room_id AND Booking.booking_id = NEW.booking_id));
	END IF;
END //

DELIMITER ;
CREATE VIEW occupiedRooms AS
SELECT r.room_id, b.start_date, b.end_date FROM room r, booking b WHERE r.room_id = b.room_id;

CREATE VIEW room_capacity_by_hotel AS
SELECT h.hotel_name, SUM(r.capacity) AS total_capacity
FROM hotel h
JOIN room r ON h.hotel_id = r.hotel_id
GROUP BY h.hotel_name;

CREATE VIEW available_rooms_per_area AS
SELECT h.city, COUNT(r.room_id) AS num_available_rooms
FROM hotel h
JOIN room r ON h.hotel_id = r.hotel_id
LEFT JOIN booking b ON r.room_id = b.room_id AND (CURDATE() BETWEEN b.start_date AND b.end_date)
WHERE b.booking_id IS NULL
GROUP BY h.city;
