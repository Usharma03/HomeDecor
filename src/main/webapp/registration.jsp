<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Create Account</title>
   <style>
       /* Body */
       body {
           display: flex;
           justify-content: center;
           align-items: center;
           height: 100vh;
           margin: 0;
           font-family: 'Arial', sans-serif;
           background-color: #f9f9f9;
       }


       /* Form Container */
       .container {
           background: #fff;
           padding: 30px 40px;
           border-radius: 8px;
           box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
           width: 350px;
           text-align: center;
       }


       h2 {
           margin-bottom: 20px;
           color: #333;
           font-size: 24px;
           font-weight: bold;
       }


       label {
           font-size: 14px;
           color: #555;
           text-align: left;
           display: block;
           margin-bottom: 5px;
       }


       /* Input Fields */
       input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
           border: 1px solid #ccc;
           padding: 10px;
           width: 100%;
           font-size: 14px;
           color: #333;
           margin-bottom: 20px;
           border-radius: 5px;
           outline: none;
           transition: border-color 0.3s ease;
       }


       input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus, input[type="tel"]:focus {
           border-color: #4CAF50;
       }


       /* Button Styling */
       button {
           background-color: #4CAF50;
           color: white;
           border: none;
           padding: 12px 15px;
           font-size: 16px;
           border-radius: 5px;
           cursor: pointer;
           width: 100%;
           transition: background-color 0.3s ease;
       }


       button:hover {
           background-color: #45a049;
       }


       /* Login Link */
       .login-link {
           margin-top: 20px;
           font-size: 14px;
           color: #555;
       }


       .login-link a {
           color: #4CAF50;
           text-decoration: none;
           font-weight: bold;
       }


       .login-link a:hover {
           color: #45a049;
       }
   </style>
</head>
<body>


   <div class="container">
       <h2>Create Account</h2>


       <form action="register" method="post">
           <div style="text-align: left;">
               <label for="username">Your Name</label>
               <input type="text" id="username" name="fname" placeholder="Enter your name" required />
           </div>


           <div style="text-align: left;">
               <label for="email">Email</label>
               <input type="email" id="email" name="email" placeholder="Enter your email" required />
           </div>


           <div style="text-align: left;">
               <label for="phoneno">Phone no</label>
               <input type="tel" id="phoneno" name="phoneno" placeholder="Enter phone number" required />
           </div>


           <div style="text-align: left;">
               <label for="password">Password</label>
               <input type="password" id="password" name="password" placeholder="Enter your password" required />
           </div>


           <button type="submit">Create Account</button>
       </form>


       <div class="login-link">
           <p>Already have an account? <a href="login.jsp">Log in</a></p>
       </div>
   </div>


</body>
</html>





