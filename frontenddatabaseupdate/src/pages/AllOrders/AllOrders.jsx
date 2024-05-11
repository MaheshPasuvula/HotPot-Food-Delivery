import React, { useState, useEffect } from "react";
import axios from "axios";
import "./AllOrders.css";

export default function AllOrders() {
  const [orders, setOrders] = useState([]);

  const formatDate = (dateString) => {
    const date = new Date(dateString);
    const day = date.getDate();
    const month = date.getMonth() + 1; // Month indexes are 0-based
    const year = date.getFullYear();
    const hours = date.getHours();
    const minutes = date.getMinutes();

    // Add leading zeros if needed
    const formattedDay = day < 10 ? '0' + day : day;
    const formattedMonth = month < 10 ? '0' + month : month;
    const formattedHours = hours < 10 ? '0' + hours : hours;
    const formattedMinutes = minutes < 10 ? '0' + minutes : minutes;
    

    return `${formattedDay}-${formattedMonth}-${year} ${formattedHours}:${formattedMinutes}`;

  };

  useEffect(() => {
    fetchAllOrders();
  }, []);

  const fetchAllOrders = async () => {
    try {
      const auth = localStorage.getItem("auth");
      const userObject = JSON.parse(auth);
      const key = userObject.token;
      const response = await axios.get(
        "https://localhost:7157/api/Restaurant/GetAllOrders",{
          headers: {
            Authorization: `Bearer ${key}`,
          },
        }
      );
      setOrders(response.data);
    } catch (error) {
      console.error("Error while fetching orders", error);
    }
  };
  const handleChangeOrderStatus = async (orderId, newStatus) => {
    try {
      const auth = localStorage.getItem("auth");
      const userObject = JSON.parse(auth);
      const key = userObject.token;
      const response = await axios.put(
        `https://localhost:7157/api/Restaurant/ChangeOrderStatus?orderId=${orderId}&newStatus=${newStatus}`,null,{
          headers: {
            Authorization: `Bearer ${key}`,
          },
        }
      );
      console.log("Order status changed:", response.data);
      fetchAllOrders();
    } catch (error) {
      console.error("Error while changing order status:", error);
    }
  };
  return (
    <div className="container">
      <h2>All Orders</h2>
      <table>
        <thead>
          <tr>
            <th>OrderID</th>
            <th>OrderDate and Time</th>
            <th>Amount</th>
            <th>Status</th>
            <th>CustomerId</th>
            <th>RestaurantId</th>
            <th>change Order Status</th>
          </tr>
        </thead>
        <tbody>
          {orders.map((order) => (
            <tr key={order.orderId}>
              <td>{order.orderId}</td>
              <td>{formatDate(order.orderDate)}</td>

              <td>{order.amount}</td>
              <td>{order.status}</td>
              <td>{order.customerId}</td>
              <td>{order.restaurantId}</td>
              <td>
                <button
                  className="change-status"
                  onClick={() =>
                    handleChangeOrderStatus(order.orderId, "Delivered")
                  }
                >
                  Change Status
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
