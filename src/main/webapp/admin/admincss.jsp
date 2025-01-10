<%@ page contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* General Body Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }


        /* Navbar Styles */
        .navbar {
            background-color: #007bff;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }


        .navbar h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
        }


        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
            font-weight: 500;
        }


        .navbar a:hover {
            text-decoration: underline;
        }


        /* Admin Container */
        .admin-container {
            text-align: center;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 30px 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 40px auto;
            max-width: 450px;
            font-size: 18px;
        }


        .admin-container h1 {
            color: #333;
            margin-bottom: 20px;
            font-size: 32px;
            font-weight: 700;
        }


        /* Button Styles */
        button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 12px 25px;
            margin: 10px 0;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
            width: 100%;
            box-sizing: border-box;
        }


        button:hover {
            background-color: #0056b3;
        }


        button:focus {
            outline: none;
        }


        /* Add New Product Button Style */
        .add-product-button {
            background-color: #28a745;
        }


        .add-product-button:hover {
            background-color: #218838;
        }


        /* Logout Button Style */
        .logout-button {
            background-color: #dc3545;
        }


        .logout-button:hover {
            background-color: #c82333;
        }


        /* Responsive Design */
        @media (max-width: 767px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }


            .navbar h1 {
                font-size: 24px;
            }


            .admin-container {
                max-width: 90%;
            }


            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>


    <!-- Check if user is logged in -->
    <c:if test="${empty userobj}">
        <c:redirect url="../login.jsp"></c:redirect>
    </c:if>


    <!-- Navbar -->
    <div class="navbar">
        <h1>Admin Dashboard</h1>
        <div>
            <a href="allProducts.jsp">All Products</a>
            <a href="allOrders.jsp">All Orders</a>
            <form action="logout.jsp" method="post" style="display: inline;">
                <button type="submit" class="logout-button">Logout</button>
            </form>
        </div>
    </div>


    <!-- Main Content -->
    <div class="admin-container">
        <h1>Welcome, Admin!</h1>
        <p>Select an option below to manage the system:</p>


        <!-- Action Buttons -->
        <form action="allProducts.jsp" method="get">
            <button type="submit">All Products</button>
        </form>
        <form action="allOrders.jsp" method="get">
            <button type="submit">All Orders</button>
        </form>
        <form action="addProduct.jsp" method="get">
            <button type="submit" class="add-product-button">Add New Product</button>
        </form>
    </div>


</body>
</html>





