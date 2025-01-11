<%@page import="com.yash.daoImpl.CartDAOImpl"%>
<%@page import="com.yash.entity.User"%>
<%@page import="com.yash.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart - Online Home Decor</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <style>
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
        }


        body {
          font-family: 'Arial', sans-serif;
          background-color: #f3f4f6;
          color: #333;
        }


        .navbar {
          background-color : #1d3557 !important;
          color: white;
          padding: 15px;
          display: flex;
          justify-content: space-between;
          align-items: center;
        }


        .navbar .username {
          font-size: 18px;
        }


        .cart-icon {
          color: white;
          font-size: 24px;
          transition: transform 0.3s;
        }


        .cart-icon:hover {
          transform: scale(1.2);
        }


        .logout-button {
          background-color: #f44336;
          color: white;
          border: none;
          padding: 10px 15px;
          cursor: pointer;
          border-radius: 5px;
          transition: background-color 0.3s;
        }


        .logout-button:hover {
          background-color: #d73833;
        }


        .container {
          width: 100%;
          padding: 30px;
        }


        h2 {
          text-align: center;
          font-size: 30px;
          color: #4E342E;
          margin-bottom: 20px;
        }


        .cart-section {
          width: 80%;
          margin: 30px auto;
          padding: 20px;
          background-color: white;
          border-radius: 8px;
          box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }


        .cart-item {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 15px 20px;
          border-bottom: 1px solid #eee;
        }


        .cart-item:last-child {
          border-bottom: none;
        }


        .cart-item img {
          width: 120px;
          height: 120px;
          border-radius: 10px;
          object-fit: cover;
        }


        .cart-item-details {
          flex: 1;
          margin-left: 20px;
        }


        .cart-item-details h4 {
          margin-bottom: 10px;
          font-size: 18px;
          color: #4E342E;
        }


        .cart-item-details p {
          font-size: 14px;
          color: #777;
        }


        .cart-item-actions button {
          background-color: #e63946;
          color: white;
          border: none;
          padding: 8px 12px;
          border-radius: 5px;
          cursor: pointer;
          font-size: 14px;
          transition: background-color 0.3s;
        }


        .cart-item-actions button:hover {
          background-color: #c72c3b;
        }


        .cart-summary {
          text-align: right;
          margin-top: 20px;
          font-size: 20px;
          font-weight: bold;
          color: #4E342E;
        }


        .checkout-section {
          width: 80%;
          margin: 30px auto;
          padding: 20px;
          background-color: white;
          border-radius: 8px;
          box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }


        .checkout-section h3 {
          font-size: 24px;
          margin-bottom: 20px;
          color: #4E342E;
        }


        .form-group {
          margin-bottom: 15px;
        }


        .form-group label {
          font-size: 16px;
          color: #555;
        }


        .form-group input,
        .form-group select {
          width: 100%;
          padding: 10px;
          font-size: 14px;
          border: 1px solid #ccc;
          border-radius: 5px;
        }


        .button-group {
          display: flex;
          justify-content: center;
          margin-top: 15px;
        }


        .button-group button {
          width: 150px;
          margin: 0 10px;
          padding: 10px;
          font-size: 16px;
          border: none;
          border-radius: 5px;
          cursor: pointer;
          transition: background-color 0.3s;
        }


        .btn-order {
          background-color: #4CAF50;
          color: white;
        }


        .btn-order:hover {
          background-color: #45a049;
        }


        .btn-shopping {
          background-color: #2196F3;
          color: white;
        }


        .btn-shopping:hover {
          background-color: #1e88e5;
        }


        /* Tooltip styling */
        .tooltip {
          display: none;
          position: absolute;
          background-color: black;
          color: white;
          padding: 5px;
          border-radius: 5px;
          top: -30px;
          left: 50%;
          transform: translateX(-50%);
          white-space: nowrap;
        }


        a:hover .tooltip {
          display: block;
        }
      </style>
</head>
<body>
<%
    // Fetch the logged-in user object
    User user = (User) session.getAttribute("userobj");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if user is not logged in
        return;
    }

    // Fetch user's cart items
    CartDAOImpl dao = new CartDAOImpl();
    List<Cart> cartItems = dao.getItembyUser(user.getId());
    double totalPrice = 0.00;
%>

<!-- Navbar -->
<div class="navbar">
    <div class="username">Welcome, <%= user.getName() %></div>
    <form action="logout" method="get" style="margin-left: auto;">
        <button type="submit" class="logout-button">Logout</button>
    </form>
</div>

<!-- Cart Section -->
<div class="container">
    <h2>Your Cart</h2>
    <div class="cart-section">
        <% if (cartItems != null && !cartItems.isEmpty()) { %>
            <% for (Cart item : cartItems) {
                totalPrice += item.getTotalPrice(); %>
                <div class="cart-item">
                    <img src="wlimage/<%= item.getIimage() %>" alt="<%= item.getItemname() %>" width="120" height="120">
                    <div class="cart-item-details">
                        <h4><%= item.getItemname() %></h4>
                        <p>Price: Rs<%= item.getPrice() %></p>
                    </div>
                    <div class="cart-item-actions">
                        <form action="removeItem" method="get">
                            <input type="hidden" name="iid" value="<%= item.getIid() %>">
                            <input type="hidden" name="uid" value="<%= item.getUserId() %>">
                            <input type="hidden" name="cid" value="<%= item.getCid() %>">
                            <button type="submit">Remove</button>
                        </form>
                    </div>
                </div>
            <% } %>
            <div class="cart-summary">Total: Rs <%= totalPrice %></div>
        <% } else { %>
            <p>Your cart is empty.</p>
        <% } %>
    </div>

    <!-- Checkout Section -->
    <div class="checkout-section">
        <h3>Checkout</h3>
        <form action="order" method="post">
            <input type="hidden" name="id" value="<%= user.getId() %>">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="username" required value="<%= user.getName() %>">
            </div>
            <div class="form-group">
                <label for="number">Number</label>
                <input type="text" name="number" required>
            </div>
            <div class="form-group">
                <label for="address">Shipping Address</label>
                <input type="text" name="address" required>
            </div>
            <div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                <select name="paymentMethod" required>
                    <option value="Credit Card">Credit Card</option>
                    <option value="Debit Card">Debit Card</option>
                    <option value="Net Banking">Net Banking</option>
                    <option value="UPI">UPI</option>
                </select>
            </div>
            <div class="button-group">
                <button type="submit" class="btn-order">Order Now</button>
                <button type="button" class="btn-shopping" onclick="window.location.href='home.jsp'">Continue Shopping</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>