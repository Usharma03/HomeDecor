<%@page import="com.yash.db.DBConnect"%>
<%@page import="com.yash.dao.ItemOrderDAOImpl"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<%@page import="com.yash.entity.ItemOrder"%>
<%@page import="com.yash.dao.ItemOrderDAOImpl"%>
<%@page import="com.yash.dao.CartDAOImpl"%>
<%@page import="com.yash.entity.User"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="com.yash.entity.Cart"%>


<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.db.DBConnect"%>
<%@page import="com.yash.dao.ItemDAOImpl"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Orders</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7f9;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        /* Navigation Bar */
        nav {
            background-color: #1d3557;
            padding: 15px 30px;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }


        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }


        nav ul li {
            margin-right: 20px;
        }


        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: 600;
            transition: color 0.3s ease;
        }


        nav ul li a:hover {
            color: #f1faee;
        }


        /* Container for Item List */
        .container {
            max-width: 1000px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }


        h2 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
            font-weight: 700;
        }


        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }


        th, td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
            font-size: 16px;
        }


        th {
            background-color: #1d3557;
            color: white;
            font-weight: bold;
        }


        tr:nth-child(even) {
            background-color: #f1faee;
        }


        tr:hover {
            background-color: #e0fbfc;
        }


        /* Making links more interactive */
        td a {
            color: #e63946;
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: 500;
            transition: background-color 0.3s ease, color 0.3s ease;
        }


        td a:hover {
            background-color: #e63946;
            color: white;
        }


        /* Responsive Design */
        @media (max-width: 767px) {
            nav {
                flex-direction: column;
                align-items: flex-start;
            }


            nav ul {
                flex-direction: column;
                padding-left: 0;
            }


            nav ul li {
                margin-bottom: 10px;
            }


            .container {
                padding: 20px;
                margin: 20px;
                max-width: 90%;
            }


            table, th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>


<c:if test="${empty userobj }">
    <c:redirect url="../login.jsp"></c:redirect>
</c:if>


<!-- Navigation Bar -->
<nav>
    <ul>
        <li><a href="home.jsp">Home</a></li>
    </ul>
</nav>


<!-- Orders Table -->
<div class="container">
    <h2>Order List</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone No</th>
                <th>Address</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Payment Type</th>
            </tr>
        </thead>
        <tbody>
            <%
                ItemOrderDAOImpl dao = new ItemOrderDAOImpl(DBConnect.getConn2());
                List<ItemOrder> ordersList = dao.getItems();
                for (ItemOrder order : ordersList) {
            %>
            <tr>
                <th scope="row"><%= order.getOrderId() %></th>
                <td><%= order.getUserName() %></td>
                <td><%= order.getPhno() %></td>
                <td><%= order.getAddress() %></td>
                <td><%= order.getItemName() %></td>
                <td><%= order.getPrice() %></td>
                <td><%= order.getPaymentType() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>


</body>
</html>





