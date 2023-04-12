import React from "react";
import RoomSearch from "./customer_view/RoomSearch";
import CreateCustomer from "./customer_view/CreateCustomer";

function CustomerView(props) {
  return (
    <div>
      <h3>Customer</h3>

      <RoomSearch />
      <CreateCustomer />
    </div>
  );
}

export default CustomerView;
