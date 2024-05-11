import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import "./PaymentsByRestaurant.css";
import axios from "axios";
const PaymentsByRestaurant = () => {
  const { restaurantId } = useParams();
  const [payments, setPaymentsbyrestaurant] = useState([]);
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
    const fetchPaymentsByRestaurant = async () => {
      try {
        const auth = localStorage.getItem("auth");
        const userObject = JSON.parse(auth);
        const key = userObject.token;
        const response = await axios.get(
          `https://localhost:7157/api/Restaurant/GetAllPaymentsByRestaurants?restaurantId=${restaurantId}`,{
            headers: {
              Authorization: `Bearer ${key}`,
            },
          }
        );
        setPaymentsbyrestaurant(response.data);
      } catch (error) {
        console.error("Error while fetching payments", error);
      }
    };
    if (restaurantId) {
      // setNewMenuByRestaurant(prevState => ({ ...prevState, restaurantId }));
      fetchPaymentsByRestaurant();
    } else {
      console.error("Restaurant ID is missing in URL parameters");
    }
  }, [restaurantId]);
  return (
    <div className="container">
      <h2>Payments</h2>
      <table>
        <thead>
          <tr>
            <th>PaymentID</th>
            <th>Payment Mode</th>
            <th>Amount</th>
            <th>Status</th>
            <th> PaymentDate and Time</th>
            <th>Order Id</th>
          </tr>
        </thead>
        <tbody>
          {payments.map((payment) => (
            <tr key={payment.paymentId}>
              <td>{payment.paymentId}</td>
              <td>{payment.paymentMode}</td>
              <td>{payment.amount}</td>
              <td>{payment.status}</td>
              <td>{formatDate(payment.date)}</td>

              <td>{payment.orderId}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default PaymentsByRestaurant;
