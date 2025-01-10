<%@page import="com.yash.entity.User"%>
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
<title>Center Table</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
<style>
/* Global Styles */
body {
   font-family: 'Poppins', sans-serif;
   background-color: #f4f7f6;
   color: #333;
}


.navbar {
   background-color: #4CAF50;
   color: white;
   padding: 15px 30px;
   display: flex;
   align-items: center;
   box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}


.navbar .username {
   font-size: 1.2rem;
   font-weight: 500;
   color: white;
}


.logout-button {
   background-color: #f44336;
   color: white;
   border: none;
   padding: 10px 15px;
   cursor: pointer;
   border-radius: 25px;
   transition: background-color 0.3s ease;
}


.logout-button:hover {
   background-color: #d32f2f;
}


.cart-icon {
   font-size: 1.8rem;
   color: white;
   transition: transform 0.3s;
   margin-right: 30px;
}


.cart-icon:hover {
   transform: scale(1.2);
}


.product-container {
   background-color: #fff;
   border-radius: 12px;
   overflow: hidden;
   box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
   transition: transform 0.3s ease, box-shadow 0.3s ease;
   margin-bottom: 20px;
}


.product-container:hover {
   transform: translateY(-5px);
   box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
}


.product-image {
   width: 100%;
   height: 250px;
   object-fit: cover;
}


.product-title {
   font-size: 1.5rem;
   font-weight: 500;
   color: #333;
   padding: 10px 15px;
   text-align: center;
}


.product-price {
   font-size: 1.25rem;
   color: #28a745;
   font-weight: bold;
   padding: 10px 15px;
   background-color: #f8f9fa;
   border-radius: 5px;
   margin-top: 10px;
}


.add-to-cart-btn {
   background-color: #007bff;
   color: white;
   padding: 10px 20px;
   border-radius: 30px;
   font-size: 1.1rem;
   border: none;
   cursor: pointer;
   transition: background-color 0.3s ease;
}


.add-to-cart-btn:hover {
   background-color: #0056b3;
}


/* Toast Notification */
#toast {
   min-width: 300px;
   position: fixed;
   bottom: 30px;
   left: 50%;
   margin-left: -125px;
   background: #333;
   padding: 10px;
   color: white;
   text-align: center;
   z-index: 1;
   font-size: 18px;
   visibility: hidden;
   box-shadow: 0px 0px 100px #000;
}


#toast.display {
   visibility: visible;
   animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
}


@keyframes fadeIn {
   from {
      bottom: 0;
      opacity: 0;
   }
   to {
      bottom: 30px;
      opacity: 1;
   }
}


@keyframes fadeOut {
   from {
      bottom: 30px;
      opacity: 1;
   }
   to {
      bottom: 0;
      opacity: 0;
   }
}


/* Responsive Design */
@media (max-width: 768px) {
   .product-container {
      margin-bottom: 15px;
   }
}
</style>
</head>
<body>


<%
User u = (User) session.getAttribute("userobj");
%>


<div class="navbar">
   <c:if test="${not empty userobj}">
      <a href="home.jsp">
         <div class="username">Home</div>
      </a>
      <div style="flex-grow: 1;"></div>
      <!-- This will push the next items to the right -->
      <a href="cart.jsp" class="cart-icon" title="View Cart"> <i class="fas fa-shopping-cart"></i></a>
      <form action="logout" method="">
         <button type="submit" class="logout-button">Logout</button>
      </form>
   </c:if>
</div>


<div class="container my-5">
   <h1 class="text-center my-4">Center Table Collection</h1>
   <div class="row">
      <!-- Product List -->
      <%
      ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn2());
      List<ItemDetails> list = dao.getCenterTableItem();
      for (ItemDetails b : list) {
      %>
      <div class="col-md-4">
         <div class="product-container text-center">
            <img src="wlimage/<%=b.getItem_image()%>" alt="<%=b.getItem_name()%>" class="product-image">
            <h2 class="product-title"><%=b.getItem_name()%></h2>
            <div class="d-flex justify-content-center">
               <p class="product-price">₹<%=b.getItem_price()%></p>
            </div>
            <div class="mt-3">
               <%
               if (u == null) {
               %>
               <a href="login.jsp" class="btn add-to-cart-btn">Add to Cart</a>
               <%
               } else {
               %>
               <form action="cart" method="get">
                  <input type="hidden" name="iid" value="<%=b.getItemId()%>">
                  <input type="hidden" name="uid" value="<%=u.getId()%>">
                  <input type="hidden" name="iname" value="<%=b.getItem_name()%>">
                  <input type="hidden" name="iprice" value="<%=b.getItem_price()%>">
                  <input type="hidden" name="ic" value="<%=b.getItem_category()%>">
                  <input type="hidden" name="iimage" value="<%=b.getItem_image()%>">
                  <input type="hidden" name="uname" value="<%=u.getName()%>">
                  <input type="hidden" name="pno" value="<%=u.getPhoneno()%>">
                  <button type="submit" class="btn add-to-cart-btn">Add to Cart</button>
               </form>
               <%
               }
               %>
            </div>
         </div>
      </div>
      <%
      }
      %>
   </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>





