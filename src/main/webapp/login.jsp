<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login Page</title>
   <style>
      /* General Styles */
      body {
         display: flex;
         justify-content: center;
         align-items: center;
         height: 100vh;
         margin: 0;
         font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
         background-color: #f0f4f8;
      }

      /* Login Box Styles */
      .login-box {
         background-color: #fff;
         padding: 25px;
         border-radius: 10px;
         box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
         width: 100%;
         max-width: 400px; /* Increased max-width for better appearance */
         text-align: center;
         transition: transform 0.3s ease-in-out;
      }

      .login-box:hover {
         transform: translateY(-5px);
      }

      .login-box h2 {
         color: #333;
         margin-bottom: 20px;
         font-size: 26px;
         font-weight: bold;
      }

      /* Error Message */
      .error-msg {
         color: #f44336;
         font-size: 14px;
         margin-bottom: 20px;
      }

      /* Input Fields */
      .input-container {
         margin-bottom: 20px;
         position: relative;
         width: 100%; /* Full width */
      }

      .input-container input {
         width: 90%; /* Full width */
         padding: 15px 17px;
         margin: 0;
         border: 1px solid #ccc;
         border-radius: 25px;
         font-size: 14px;
         color: #333;
         transition: all 0.3s ease;
         outline: none;
      }

      .input-container input:focus {
         border-color: #007bff;
         box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
      }

      /* Remember me checkbox */
      .remember-me {
         text-align: left;
         font-size: 14px;
         color: #555;
         margin-bottom: 20px;
      }

      /* Submit Button */
      button {
         background-color: #007bff;
         color: white;
         border: none;
         padding: 12px;
         font-size: 16px;
         border-radius: 30px;
         cursor: pointer;
         width: 50%;
         transition: background-color 0.3s ease, transform 0.2s ease;
      }

      button:hover {
         background-color: #0056b3;
         transform: scale(1.05);
      }

      /* Link Styling */
      .link {
         color: #007bff;
         text-decoration: none;
         transition: color 0.3s ease;
      }

      .link:hover {
         color: #0056b3;
      }

      /* Footer Section */
      .footer {
         margin-top: 15px;
         font-size: 14px;
         color: #555;
      }

      .footer a {
         text-decoration: none;
         color: #007bff;
      }

      .footer a:hover {
         color: #0056b3;
      }
   </style>
</head>
<body>

   <div class="login-box">
      <h2>Sign In</h2>

      <c:if test="${not empty failedmsg}">
         <div class="error-msg">${failedmsg}</div>
         <c:remove var="failedmsg" scope="session" />
      </c:if>

      <form action="login" method="post">
         <!-- Username Field -->
         <div class="input-container">
            <label for="username" style="font-size: 14px; color: #555; text-align: left; display: block;">Your Name</label>
            <input type="text" id="username" name="username" placeholder="Your Name " required />
         </div>

         <!-- Password Field -->
         <div class="input-container">
            <label for="password" style="font-size: 14px; color: #555; text-align: left; display: block;">Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required />
         </div>



         <!-- Submit Button -->
         <button type="submit">Log In</button>
      </form>

      <div class="footer">
         <p>Don't have an account? <a href="registration.jsp" class="link">Create Account</a></p>
      </div>
   </div>

</body>
</html>