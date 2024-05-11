import { useState, useEffect } from "react";
import { Table } from "react-bootstrap";

const OrderHistory = () => {
  const [orders, setOrders] = useState([]);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(true);

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
    const fetchOrders = async () => {
      try {
        const customerId = localStorage.getItem("customerId");
        const auth = localStorage.getItem("auth");
        const userObject = JSON.parse(auth);
        const key = userObject.token;
        const response = await fetch(
          `https://localhost:7157/api/Customer/ViewOrderHistoryForCustomer?customerId=${customerId}`,{
            headers: {
              Authorization: `Bearer ${key}`,
            },
          }
        );
        if (!response.ok) {
          throw new Error(`Error: ${response.statusText}`);
        }
        const data = await response.json();
        setOrders(data);
        console.log(data);
        setLoading(false);
      } catch (error) {
        setError(error.message);
        setLoading(false);
      }
    };

    fetchOrders();
  }, []);

  return (
    <div className="customer-content">
      {loading && <p>Loading...</p>}
      {error && <p>Error: {error}</p>}
      {orders.length === 0 && !loading && !error && <p>No orders found.</p>}
      {orders.length > 0 && (
        <Table striped bordered hover>
          <thead>
            <tr>
              <th>RestaurantName</th>
              <th>MenuItemName</th>
              <th>Total Amount</th>
              <th>OrderDate and Time</th>
              {/* Add more columns as needed */}
            </tr>
          </thead>
          <tbody>
            {orders.map((order, index) => (
              <tr key={order.orderId}>
                <td>{order.restaurantName}</td>
                <td>{order.menuName?.[0]?.manuItemName}</td> {/* Use optional chaining */}
                 <td>{order.menuName?.[0]?.quantity * order.price}</td> {/* Use optional chaining */}
                 <td>{formatDate(order.orderDate)}</td>
                {/* Add more cells with order details */}
              </tr>
            ))}
          </tbody>
        </Table>
      )}
    </div>
  );
};

export default OrderHistory;
