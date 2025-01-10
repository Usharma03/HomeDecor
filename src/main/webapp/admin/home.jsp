<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">


<style>
body {
   font-family: 'Arial', sans-serif;
   background-color: #f9f9f9;
   margin: 0;
   padding: 0;
}


/* Navbar Style */
.navbar {
   display: flex;
   justify-content: space-between;
   align-items: center;
   background-color: #1d3557;
   color: #f1faee;
   padding: 15px 30px;
   font-size: 18px;
   box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}


.navbar button {
   background-color: #e63946;
   color: white;
   border: none;
   padding: 10px 15px;
   border-radius: 5px;
   cursor: pointer;
   transition: background-color 0.3s ease, transform 0.3s ease;
}


.navbar button:hover {
   background-color: #f1faee;
   color: #1d3557;
   transform: scale(1.05);
}


/* Header Style */
h1 {
   text-align: center;
   color: #1d3557;
   margin-top: 30px;
   font-size: 36px;
   font-weight: 700;
}


/* Container for Buttons */
.container {
   display: flex;
   justify-content: space-around;
   margin: 40px auto;
   max-width: 1200px;

   flex-wrap: wrap;
}


/* Box Styling */
.box {
   display: flex;
   justify-content: center;
   align-items: center;
   flex: 1 1 30%; /* Flex items will take up at least 30% width */
   margin: 15px;
   padding: 30px;
   background-color: #fff;
   border: 1px solid #ddd;
   border-radius: 10px;
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
   transition: transform 0.3s ease, box-shadow 0.3s ease;
   text-align: center;

}


.box:hover {
   transform: translateY(-10px);
   box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}


/* Button inside the box */
.box button {
   width: 100%;
   height: 100%;
   background-color: #1d3557;
   color: #f1faee;
   border: none;
   border-radius: 8px;
   font-size: 18px;
   cursor: pointer;
   display: flex;
   justify-content: center;
   align-items: center;
   transition: transform 0.3s ease;
   text-align: center;
}


.box button:hover {
   background-color: #e63946;
   color: #fff;
   transform: scale(1.05);
}


/* Box Icons */
.box i {
   margin-right: 10px;
}


/* Responsive Design for Smaller Screens */
@media (max-width: 768px) {
   .container {
      flex-direction: column;
      align-items: center;
   }


   .box {
      flex: 1 1 100%;
      margin-bottom: 20px;

   }
}
</style>
</head>
<body>


<c:if test="${empty userobj }">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>


<!-- Navbar -->
<div class="navbar">
   <div>Admin</div>
   <div>
      <button onclick="location.href='../logout'">Logout</button>
   </div>
</div>


<!-- Main Heading -->
<h1>Admin Home</h1>


<!-- Action Buttons -->
<div class="container">
   <div class="box">
      <button onclick="location.href='additem.jsp'">
         <i class="fas fa-plus"></i> Add New Item
      </button>
   </div>
   <div class="box">
      <button onclick="location.href='allitems.jsp'">
         <i class="fas fa-list"></i> All Items
      </button>
   </div>
   <div class="box">
      <button onclick="location.href='allorders.jsp'">
         <i class="fas fa-shopping-cart"></i> All Orders
      </button>
   </div>
</div>


<!-- Add Bootstrap JS (for potential interactive elements in the future) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>





