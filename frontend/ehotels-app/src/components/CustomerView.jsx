import React from "react";
import RoomSearch from "./customer_view/RoomSearch";
import CreateCustomer from "./customer_view/CreateCustomer";
import UpdateUserInfo from "./customer_view/UpdateUserInfo";

function CustomerView(props) {
  return (
    <div>
      <h3>Customer</h3>

      <RoomSearch />
      <CreateCustomer />
      <UpdateUserInfo />
    </div>
  );
}

export default CustomerView;
