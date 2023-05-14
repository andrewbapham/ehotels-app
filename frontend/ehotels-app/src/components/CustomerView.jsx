import React from "react";
import RoomSearch from "./customer_view/RoomSearch";
import CreateCustomer from "./customer_view/CreateCustomer";
import UpdateUserInfo from "./customer_view/UpdateUserInfo";
import { Link } from "react-router-dom";

function CustomerView(props) {
  return (
    <div>
      <h3>Change role:</h3>
      <Link to={"/customer"}>
        <button>Customer</button>
      </Link>
      <Link to={"/employee"}>
        <button>Employee</button>
      </Link>
      <h3>Customer</h3>
      <RoomSearch />
      <CreateCustomer />
      <UpdateUserInfo />
    </div>
  );
}

export default CustomerView;
