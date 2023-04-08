import { useState, React, useEffect } from "react";
import RoomDisplay from "./RoomDisplay";
import RoomSearchForm from "./RoomSearchForm";
import axios from "axios";
import qs from "qs";

function RoomSearch(props) {
  const [searchParams, setSearchParams] = useState({
    stars: 3,
    priceLessThan: 150,
  });
  const [rooms, setRooms] = useState([]);
  useEffect(() => {
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
      });
  }, [searchParams]);

  const changeState = () => {
    setSearchParams({
      stars: 4,
      priceLessThan: 200,
    });
  };
  return (
    <div>
      <h3>Room Search</h3>
      <RoomDisplay rooms={rooms} />
      <RoomSearchForm setSearchParams={setSearchParams} />
      <button onClick={changeState}> Change params </button>
    </div>
  );
}

export default RoomSearch;
