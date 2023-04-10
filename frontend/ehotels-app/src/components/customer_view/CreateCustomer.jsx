import { React, useState } from "react";

function CreateCustomer(props) {
  const [data, setData] = useState({});
  return (
    <>
      <form>
        <label htmlFor="customer-name">Name:</label>
        <input type="text" id="customer-name" name="customer-name" />
        <label htmlFor="customer-email">Email:</label>
        <input type="email" id="customer-email" name="customer-email" />
        <label htmlFor="customer-phone">Phone:</label>
        <input type="tel" id="customer-phone" name="customer-phone" />
      </form>
    </>
  );
}

export default CreateCustomer;
