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

DELIMITER ;
CREATE VIEW occupiedRooms AS
SELECT r.room_id, b.start_date, b.end_date FROM room r, booking b WHERE r.room_id = b.room_id