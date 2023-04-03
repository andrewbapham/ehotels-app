import React from "react";

function CustomerView(props) {
  return (
    <div>
      <h3>Customer</h3>
      <label htmlFor="customer-name">Name:</label>
      <input type="text" id="customer-name" name="customer-name" />
      <label htmlFor="customer-email">Email:</label>
      <input type="email" id="customer-email" name="customer-email" />
      <label htmlFor="customer-phone">Phone:</label>
      <input type="tel" id="customer-phone" name="customer-phone" />
    </div>
  );
}

export default CustomerView;
