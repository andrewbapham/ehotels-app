import React from "react";

function RoomDisplay(props) {
  const roomElems = [];
  //console.log(props.rooms[0].amenities);

  props.rooms.forEach((room) => {
    roomElems.push(
      <tr key={room.room_id}>
        <td>{room.room_id}</td>
        <td>${room.price}</td>
        <td>{room.stars}</td>
        <td>{room.capacity}</td>
        <td>{room.amenities}</td>
        <td>{room.view}</td>
        <td>{room.hotel_name}</td>
        <td>{room.city}</td>
        <td>{room.chain_name}</td>
      </tr>
    );
  });

  return (
    <table>
      <thead>
        <tr>
          <th>Room ID</th>
          <th>Price</th>
          <th>Stars</th>
          <th>Capacity</th>
          <th>Amenities</th>
          <th>View</th>
          <th>Hotel Name</th>
          <th>City</th>
          <th>Hotel Chain</th>
        </tr>
      </thead>
      <tbody>
        {roomElems.length === 0 ? (
          <p>No rooms were found. Please try different criteria.</p>
        ) : (
          roomElems
        )}
      </tbody>
    </table>
  );
}

export default RoomDisplay;
