<%@page import="com.yash.entity.User"%>
<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.db.DBConnect"%>
<%@page import="com.yash.dao.ItemDAOImpl"%>
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


<style>
/* General Styles */
body {
   font-family: 'Helvetica Neue', Arial, sans-serif;
   background-color: #f4f4f4; /* Light background */
   color: #333; /* Dark text for readability */
   margin: 0;
   padding: 0;
   box-sizing: border-box;
}


/* Navbar Styles */
.navbar {
   background-color: #007bff;
   color: white;
   padding: 15px;
   display: flex;
   justify-content: space-between;
   align-items: center;
}


.username {
   font-size: 18px;
   font-weight: 500;
}


.logout-button {
   background-color: #f44336;
   color: white;
   border: none;
   padding: 10px 15px;
   cursor: pointer;
   border-radius: 5px;
   transition: background-color 0.3s ease;
}


.logout-button:hover {
   background-color: #c1351d; /* Slightly darker red */
}


/* Quote Section Styles */
.quote-section {
   background: linear-gradient(to right, #ff7e5f, #feb47b);
   border-radius: 10px;
   padding: 40px;
   text-align: center;
   margin: 20px auto;
   max-width: 700px;
   box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}


.quote {
   font-size: 24px;
   font-style: italic;
   color: #fff;
   position: relative;
   padding: 20px;
   margin: 0;
   border-left: 4px solid #fff;
}


.author {
   display: block;
   margin-top: 20px;
   font-size: 18px;
   color: #fff;
   font-weight: bold;
}


/* Product Section Styles */
.product-section {
   display: flex;
   align-items: center;
   background: white;
   border-radius: 15px;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
   margin-bottom: 20px;
   padding: 20px;
   transition: transform 0.3s, box-shadow 0.3s;
   background-color: #ffffff;
}


.product-section:hover {
   transform: translateY(-5px);
   box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}


.product-image-container {
   flex: 1;
   overflow: hidden;
   border-radius: 15px;
   max-width: 200px;
   margin-right: 20px;
}


.product-image {
   width: 100%;
   height: auto;
   transition: transform 0.3s ease-in-out;
}


.product-image:hover {
   transform: scale(1.1); /* Slight zoom effect */
}


.product-info {
   flex-grow: 1;
}


.product-title {
   font-size: 20px;
   font-weight: bold;
   color: #333;
}


.card-description {
   font-size: 14px;
   color: #666;
}


.btn-shop {
   background-color: #007bff;
   color: white;
   padding: 12px 20px;
   border: none;
   border-radius: 5px;
   cursor: pointer;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   transition: background-color 0.3s ease;
}


.btn-shop:hover {
   background-color: #0056b3; /* Darker shade of blue */
}


.container {
   max-width: 1200px;
   margin: 0 auto;
   padding: 20px;
}
</style>
</head>
<body>


<%
   User u = (User) session.getAttribute("userobj");
%>


<%@include file="component/navbar.jsp"%>
<%@include file="component/carousel.jsp"%>



<!-- Collections Section -->
<div class="container p-3">
   <p class="text-center fs-2" style="font-weight: bold; color: #333;">Our Collections</p>
</div>


<!-- Product Sections -->
<div class="container">


   <!-- Product 1: Center Table -->
   <div class="product-section">
      <div class="product-image-container">
         <img src="image/hd2.jpg" class="product-image" alt="Center Table">
      </div>
      <div class="product-info">
         <h5 class="product-title">Center Table</h5>
         <p class="card-description">Illuminate your space with our stylish Center Table.</p>
         <form action="addToCart.jsp" method="post">
            <input type="hidden" name="productId" value="1">
            <%
               if (u == null) {
            %>
            <a href="login.jsp" class="btn-shop">Shop Now</a>
            <%
               } else {
            %>
            <a href="cartServlet" class="btn-shop">Shop Now</a>
            <%
               }
            %>
         </form>
      </div>
   </div>


   <!-- Product 2: Photo Frames -->
   <div class="product-section">
      <div class="product-image-container">
         <img src="image/hd2.jpg" class="product-image" alt="Photo Frames">
      </div>
      <div class="product-info">
         <h5 class="product-title">Photo Frames</h5>
         <p class="card-description">Showcase your memories with our elegant photo frames.</p>
         <form action="addToCart.jsp" method="post">
            <input type="hidden" name="productId" value="2">
            <%
               if (u == null) {
            %>
            <a href="login.jsp" class="btn-shop">Shop Now</a>
            <%
               } else {
            %>
            <a href="cartServlet" class="btn-shop">Shop Now</a>
            <%
               }
            %>
         </form>
      </div>
   </div>


   <!-- Product 3: Sofa_set -->
   <div class="product-section">
      <div class="product-image-container">
         <img src="image/hd2.jpg" class="product-image" alt="sofa_set">
      </div>
      <div class="product-info">
         <h5 class="product-title">Sofa set</h5>
         <p class="card-description">Add a touch of elegance with our beautiful Sofa set.</p>
         <form action="addToCart.jsp" method="post">
            <input type="hidden" name="productId" value="3">
            <%
               if (u == null) {
            %>
            <a href="login.jsp" class="btn-shop">Shop Now</a>
            <%
               } else {
            %>
            <a href="cartServlet" class="btn-shop">Shop Now</a>
            <%
               }
            %>
         </form>
      </div>
   </div>


</div>


</body>
</html>





