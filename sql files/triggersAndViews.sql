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
    SET MESSAGE_TEXT = 'Errorm cannot delete from table renting.';
END //
DELIMITER ;

CREATE VIEW occupiedRooms AS
SELECT r.room_id, b.start_date, b.end_date FROM room r, booking b WHERE r.room_id = b.room_id