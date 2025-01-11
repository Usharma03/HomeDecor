<%@page import="com.yash.entity.User"%>
<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.db.DBConnect"%>
<%@page import="com.yash.daoImpl.ItemDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<%@include file="component/cssfile.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
/* General Styles */
body {
   font-family: 'Arial', sans-serif;
   background-color: #f9f9f9;
   color: #333;
   margin: 0;
   padding: 0;
}

h1, h5, p {
   font-family: 'Arial', sans-serif;
}

/* Navbar Styles */
.navbar {
   background-color: #4a4e69;
   color: #fff;
   padding: 15px 30px;
   display: flex;
   align-items: center;
   justify-content: space-between;
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.username {
   font-size: 20px;
}

.cart-icon {
   font-size: 28px;
   color: white;
   margin-right: 20px;
   transition: transform 0.3s ease;
}

.cart-icon:hover {
   transform: scale(1.1);
}

.logout-button {
   background-color: #f44336;
   color: white;
   border: none;
   padding: 12px 18px;
   cursor: pointer;
   border-radius: 5px;
   transition: background-color 0.3s ease;
}

.logout-button:hover {
   background-color: #d32f2f;
}

/* Product Section */
.product-section {
   display: flex;
   align-items: center;
   background: #fff;
   border-radius: 10px;
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
   margin-bottom: 30px;
   padding: 20px;
   transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-section:hover {
   transform: translateY(-10px);
   box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

.product-image-container {
   flex: 1;
   max-width: 250px;
   margin-right: 20px;
   overflow: hidden;
   border-radius: 10px;
}

.product-image {
   width: 100%;
   height: auto;
   object-fit: cover;
}

.product-info {
   flex-grow: 1;
}

.product-info h5 {
   font-size: 22px;
   color: #4a4e69;
}

.product-info p {
   color: #777;
   font-size: 16px;
}

/* Updated CSS for Shop Now Button */
.product-info a {
    display: inline-block;
    margin-top: 10px;
    padding: 10px 20px;
    background-color: #007bff;
    color: white; /* This makes the text color white */
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.product-info a:hover {
    background-color: #0056b3;
    color: white; /* Keep text color white on hover */
}

.text-primary {
    color: #ffff !important;
}

.author {
    margin-top: 15px;
    color: #fff;
    font-size: 18px;
}

/* Responsive Layout */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        text-align: center;
    }

    .product-section {
        flex-direction: column;
        align-items: flex-start;
    }

    .product-image-container {
        max-width: 100%;
        margin-bottom: 20px;
    }

    .product-info a {
        width: 100%;
        text-align: center;
    }
}
</style>

</head>

<body>

<%
User u = ( User ) session.getAttribute("userobj");
%>

<!-- Navbar -->
<div class="navbar">
<c:if test="${not empty userobj}">
    <div class="username">${userobj.name}</div>
    <div style="flex-grow: 1;"></div>
    <!-- This will push the next items to the right -->
    <a href="cart.jsp" class="cart-icon" title="View Cart"> <i class="fas fa-shopping-cart"></i></a>
    <form action="logout" method="get">
        <button type="submit" class="logout-button">Logout</button>
    </form>
</c:if>
</div>

<%@include file="component/carousel.jsp"%>

<div class="container p-3">
<p class="text-center fs-2">Our Collections</p>
</div>

<!-- Product Sections -->
<div class="container">

<!-- Product 1 -->
<div class="product-section">
    <div class="product-image-container">
        <img src="image/center_table.png" class="product-image" alt="Center Table">
    </div>
    <div class="product-info">
        <h5 class="card-title">Center Table</h5>
        <p class="card-description">Illuminate your space with our stylish Center Table.</p>
        <a href="center_table.jsp" class="text-decoration-none text-primary">Shop Now</a>
    </div>
</div>

<!-- Product 2 -->
<div class="product-section">
    <div class="product-image-container">
        <img src="image/photo_frame.webp" class="product-image" alt="Photo Frames">
    </div>
    <div class="product-info">
        <h5 class="card-title">Photo Frames</h5>
        <p class="card-description">Showcase your memories with our elegant photo frames.</p>
        <a href="photoframes.jsp" class="text-decoration-none text-primary">Shop Now</a>
    </div>
</div>

<!-- Product 3 -->
<div class="product-section">
    <div class="product-image-container">
        <img src="image/sofa_set.jfif" class="product-image" alt="Sofa_set">
    </div>
    <div class="product-info">
        <h5 class="card-title">Sofa sets</h5>
        <p class="card-description">Add a touch of elegance with our beautiful Sofa set.</p>
        <a href="sofa_set.jsp" class="text-decoration-none text-primary">Shop Now</a>
    </div>
</div>

</div>

</body>
</html>
