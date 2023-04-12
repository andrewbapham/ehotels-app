import { useState, React, useEffect } from "react";
import RoomDisplay from "./RoomDisplay";
import RoomSearchForm from "./RoomSearchForm";
import axios from "axios";
import qs from "qs";
import BookRoom from "./BookRoom";

function RoomSearch(props) {
  const [searchParams, setSearchParams] = useState({
    stars: "any",
    priceLessThan: 1000,
    priceGreaterThan: 0,
    capacity: "any",
    amenities: [],
    view: "any",
    hotel_name: "",
    city: "'New York'",
    chain: "any",
    priceAny: true,
    numRoomsInHotel: 0,
  });
  const [rooms, setRooms] = useState([]);
  const [error, setError] = useState("");
  useEffect(() => {
    setError("");
    axios
      .get(
        "http://localhost:3000/api/customers/findroom?" +
          qs.stringify(searchParams),
        {}
      )
      .then((res) => {
        setRooms(res.data);
      })
      .catch((err) => {
        console.error(err);
        setError("Couldn't fetch data from server.");
      });
  }, [searchParams]);

  return (
    <div>
      <h3>Room Search</h3>
      <RoomDisplay rooms={rooms} />
      <RoomSearchForm
        searchParams={searchParams}
        setSearchParams={setSearchParams}
      />
      <BookRoom />
    </div>
  );
}

export default RoomSearch;
