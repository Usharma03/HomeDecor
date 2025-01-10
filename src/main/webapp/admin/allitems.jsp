<%@page import="java.util.ArrayList"%>
<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.db.DBConnect"%>
<%@page import="com.yash.dao.ItemDAOImpl"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Items</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <!-- Link to your CSS file -->
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


        td img {
            width: 60px;
            height: 60px;
            border-radius: 5px;
            object-fit: cover;
        }


        /* Action Buttons */
        .action-buttons a {
            color: #e63946;
            text-decoration: none;
            font-weight: 500;
            border: 1px solid #e63946;
            padding: 8px 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }


        .action-buttons a:hover {
            background-color: #e63946;
            color: white;
        }


        .action-buttons a:focus {
            outline: none;
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


            td img {
                width: 50px;
                height: 50px;
            }
        }
    </style>
</head>
<body>


    <!-- Check if user is logged in -->
    <c:if test="${empty userobj }">
        <c:redirect url="../login.jsp"></c:redirect>
    </c:if>


    <!-- Navigation Bar -->
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
        </ul>
    </nav>


    <!-- Item List Table -->
    <div class="container">
        <h2>Item List</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Product Category</th>
                    <th>Product Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn2());
                    ArrayList<ItemDetails> list = dao.getAllItems();
                    for (ItemDetails b : list) {
                %>
                <tr>
                    <td><%=b.getItemId()%></td>
                    <td><img src="../wlimage/<%=b.getItem_image()%>" alt="Item Image"></td>
                    <td><%=b.getItem_name()%></td>
                    <td><%=b.getItem_price()%></td>
                    <td><%=b.getItem_category()%></td>
                    <td><%=b.getItem_status()%></td>
                    <td class="action-buttons">
                        <a href="../delete?id=<%=b.getItemId()%>"
                           onclick="return confirm('Are you sure you want to delete this item?');">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>


</body>
</html>





