import { React, useState } from "react";
import axios from "axios";

function BookRoom(props) {
  const baseURL = "http://localhost:3000";
  const [formData, setFormData] = useState({});
  const [err, setErr] = useState("");
  const [success, setSuccess] = useState(false);
  const [bookingId, setBookingId] = useState(null);

  const handleInputChange = (e) => {
    const target = e.target;
    const value = target.value;
    const name = target.name;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    //Reset Success/Error
    setSuccess(false);
    setErr("");
    setBookingId(null);

    e.preventDefault();
    axios
      .post(baseURL + "/api/customer/book", formData)
      .then((res) => {
        console.log(res);
        if (res.status === 200) {
          //Clear the form
          setFormData({});
          setSuccess(true);
          setBookingId(res.data.insertId);
        }
      })
      .catch((err) => {
        setErr(err.response.data || err.message);
        console.log(err);
      });
  };
  return (
    <form onSubmit={handleSubmit}>
      <h3>Book Room</h3>
      <div>
        <label htmlFor="customer_id">Your ID: </label>
        <input
          type="number"
          name="customer_id"
          placeholder="Your ID"
          value={formData.customer_id || ""}
          onChange={handleInputChange}
        />
      </div>
      <div>
        <label htmlFor="room_id">Room ID: </label>
        <input
          type="number"
          name="room_id"
          placeholder="Room ID"
          value={formData.room_id || ""}
          onChange={handleInputChange}
        />
      </div>
      <div>
        <label htmlFor="startDate">Check In Date: </label>
        <input
          type="date"
          name="startDate"
          value={formData.startDate || ""}
          onChange={handleInputChange}
        />
      </div>
      <div>
        <label htmlFor="endDate">Check Out Date: </label>
        <input
          type="date"
          name="endDate"
          value={formData.endDate || ""}
          onChange={handleInputChange}
        />
      </div>
      {err && <p>{err}</p>}
      {success && (
        <p>Room Booked Successfully! Your Booking ID is: {bookingId}</p>
      )}
      <button type="submit">Book</button>
    </form>
  );
}

export default BookRoom;
