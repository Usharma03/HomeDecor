<%@page import="com.yash.entity.User"%>
<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.daoImpl.ItemDAOImpl"%>
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
   <style>
      /* Navbar */
      .navbar {
         background-color: #4CAF50;
         color: white;
         padding: 15px 30px;
         display: flex;
         align-items: center;
         box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      }


      .navbar a {
         color: white;
         text-decoration: none;
         margin-left: 20px;
         font-size: 16px;
         font-weight: 600;
         transition: color 0.3s ease;
      }


      .navbar a:hover {
         color: #fff2b3;
      }


      /* Logout button */
      .logout-button {
         background-color: #f44336;
         color: white;
         border: none;
         padding: 10px 20px;
         cursor: pointer;
         border-radius: 30px;
         font-weight: 600;
         transition: background-color 0.3s ease;
      }


      .logout-button:hover {
         background-color: #d32f2f;
      }


      /* Product Container */
      .product-container {
         border: 1px solid #ddd;
         border-radius: 10px;
         padding: 20px;
         margin: 15px;
         transition: transform 0.3s, box-shadow 0.3s;
         background-color: #fff;
         box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }


      .product-container:hover {
         transform: translateY(-5px);
         box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
      }


      .product-image {
         max-width: 100%;
         height: auto;
         border-radius: 8px;
         margin-bottom: 15px;
      }


      .product-title {
         font-size: 1.3rem;
         font-weight: 600;
         color: #333;
         margin-bottom: 10px;
      }


      .product-price {
         font-size: 1.2rem;
         color: #28a745;
         font-weight: bold;
         background-color: #f8f9fa;
         padding: 5px 10px;
         border-radius: 5px;
         margin-right: 10px;
         margin-bottom: 15px;
      }


      .add-to-cart-btn {
         padding: 12px 20px;
         font-size: 1.1rem;
         border-radius: 25px;
         background-color: #007bff;
         color: white;
         border: none;
         cursor: pointer;
         transition: background-color 0.3s, transform 0.2s;
         font-weight: 600;
      }


      .add-to-cart-btn:hover {
         background-color: #0056b3;
         transform: scale(1.05);
      }


      /* Toast Notification */
      #toast {
         min-width: 300px;
         position: fixed;
         bottom: 30px;
         left: 50%;
         margin-left: -150px;
         background: #333;
         padding: 15px;
         color: white;
         text-align: center;
         z-index: 9999;
         font-size: 18px;
         visibility: hidden;
         border-radius: 5px;
         box-shadow: 0px 0px 10px #000;
      }


      #toast.display {
         visibility: visible;
         animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
      }


      @keyframes fadeIn {
         from { bottom: 0; opacity: 0; }
         to { bottom: 30px; opacity: 1; }
      }


      @keyframes fadeOut {
         from { bottom: 30px; opacity: 1; }
         to { bottom: 0; opacity: 0; }
      }


      /* Additional Styling */
      .container {
         margin-top: 50px;
      }


      .product-title, .product-price {
         margin-bottom: 10px;
      }
   </style>
</head>
<body>
   <% User u = (User) session.getAttribute("userobj"); %>


   <c:if test="${not empty addCart}">
      <div id="toast">${addCart}</div>
      <script type="text/javascript">
         showToast();
         function showToast() {
            $('#toast').addClass("display");
            setTimeout(function() {
               $("#toast").removeClass("display");
            }, 2500);
         }
      </script>
   </c:if>


   <!-- Navbar -->
   <div class="navbar">
      <c:if test="${not empty userobj}">
         <a href="home.jsp">Home</a>
         <div style="flex-grow: 1;"></div>
         <a href="cart.jsp" class="cart-icon" title="View Cart"><i class="fas fa-shopping-cart"></i></a>
         <form action="logout" method="">
            <button type="submit" class="logout-button">Logout</button>
         </form>
      </c:if>
   </div>


   <!-- Main Content -->
   <div class="container">
      <h1 class="text-center my-4">Photo Frames Collection</h1>
      <div class="row">
         <%
         ItemDAOImpl dao = new ItemDAOImpl();
         List<ItemDetails> list = dao.getPItem();
         for (ItemDetails b : list) {
         %>
         <div class="col-md-4">
            <div class="product-container text-center">
               <img src="wlimage/<%=b.getItem_image()%>" alt="Photo Frames 1" class="product-image">
               <h2 class="product-title"><%=b.getItem_name()%></h2>
               <div class="d-flex align-items-center justify-content-between">
                  <div class="price-container" style="flex-grow: 1; text-align: right; margin-right: 20px;">
                     <p class="product-price">₹<%=b.getItem_price()%></p>
                  </div>


                  <% if (u == null) { %>
                  <a href="login.jsp" class="btn btn-primary add-to-cart-btn">Add to Cart</a>
                  <% } else { %>
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
                  <% } %>
               </div>
            </div>
         </div>
         <% } %>
      </div>
   </div>


   <!-- Scripts -->
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>