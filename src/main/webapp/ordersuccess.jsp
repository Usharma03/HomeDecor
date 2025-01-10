<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Order Confirmation</title>
   <style>
       /* General Body Styling */
       body {
           font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           margin: 0;
           padding: 0;
           background-color: #f0f4f8;
           color: #333;
       }


       /* Navbar Styling */
       .navbar {
           display: flex;
           align-items: center;
           justify-content: space-between;
          background-color : #1d3557 !important;
           padding: 15px 30px;
           box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
       }


       .navbar .logo {
           font-size: 26px;
           color: white;
           text-decoration: none;
           font-weight: bold;
       }


       .navbar a {
           color: white;
           text-decoration: none;
           padding: 8px 15px;
           border-radius: 5px;
           font-size: 16px;
           transition: background-color 0.3s;
       }


       .navbar a:hover {
           background-color: #575757;
       }


       /* Main Content Container */
       .container {
           max-width: 600px;
           margin: 50px auto;
           background: white;
           padding: 30px;
           border-radius: 12px;
           box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
           text-align: center;
           transition: transform 0.3s ease-in-out;
       }


       .container:hover {
           transform: translateY(-5px);
       }


       .container h1 {
           color: #4CAF50;
           font-size: 28px;
           margin-bottom: 20px;
       }


       .container p {
           font-size: 16px;
           color: #555;
           line-height: 1.6;
       }


       .container p strong {
           color: #333;
       }


       /* Button Styling */
       .button-container {
           margin-top: 30px;
       }


       .button-container a {
           text-decoration: none;
           padding: 15px 25px;
           background-color : #1d3557 !important;
           color: white;
           font-size: 16px;
           border-radius: 30px;
           transition: background-color 0.3s ease, transform 0.2s ease;
           display: inline-block;
       }


       .button-container a:hover {
           background-color: #45a049;
           transform: scale(1.05);
       }


       .button-container a:focus {
           outline: none;
           box-shadow: 0 0 8px rgba(76, 175, 80, 0.6);
       }
   </style>
</head>
<body>
   <!-- Navbar -->
   <div class="navbar">
       <a href="home.jsp" class="logo">MyHomeDecor</a>
       <a href="home.jsp">Home</a>
   </div>


   <!-- Main Content -->
   <div class="container">
       <h1>Order Placed Successfully!</h1>
       <p>Thank you for your purchase!</p>
       <p><strong>Stay tuned for updates on your order, and keep visiting us for exciting offers.</strong></p>


       <!-- Button Links -->
       <div class="button-container">
           <a href="home.jsp">Continue Shopping</a>
       </div>

       <div class="button-container">
           <a href="settings.jsp">View Orders</a>
       </div>
   </div>
</body>
</html>





