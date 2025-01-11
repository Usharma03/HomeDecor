<%@page import="com.yash.entity.ItemOrder"%>
<%@page import="com.yash.daoImpl.ItemOrderDAOImpl"%>
<%@page import="com.yash.daoImpl.CartDAOImpl"%>
<%@page import="com.yash.entity.User"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="com.yash.entity.Cart"%>

<%@page import="com.yash.entity.ItemDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.yash.daoImpl.ItemDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Settings Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.navbar {
	background-color: #d6cfc7;
	color: #3E2723;
	padding: 10px;
	display: flex;
	justify-content: space-between; /* Align items to the edges */
	align-items: center;
}

gin-right: 20px ; tran

.username {
	font-size: 18px;
}

.cart-icon {
	color: white;
	font-size: 24px;
	marsition: transform 0.3s;
}

.cart-icon:hover {
	transform: scale(1.2);
}

.logout-button {
	background-color: #f44336;
	color: white;
	border: none;
	padding: 10px 15px;
	cursor: pointer;
	border-radius: 5px;
}

.logout-button:hover {
	background-color: #d73833;
}

.section {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}
</style>
</head>
<body>

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<!-- Navbar -->
	<div class="navbar">
		<c:if test="${not empty userobj}">
			<div class="username">${userobj.name}</div>
			<div style="flex-grow: 1;"></div>
			<!-- This will push the logout button to the right -->

			<form action="logout" method="get" style="margin-left: auto;">
				<!-- Add margin-left: auto to push it to the right -->
				<button type="submit" class="logout-button">Logout</button>
			</form>

		</c:if>
	</div>


		<div class="section">
			<h2>My Orders</h2>
			<table class="table">
				<thead>
					<tr>
						<th>Order ID</th>
						<th>Name</th>
						<th>Item Name</th>
						<th>Price</th>
						<th>Payment Method</th>
					</tr>
				</thead>

				<tbody>

				<%
			//	User u2 =(User)session.getAttribute("userobj");
				ItemOrderDAOImpl dao = new ItemOrderDAOImpl();
				List<ItemOrder> blist = dao.getItem(u.getPhoneno());
				for(ItemOrder b:blist){
					%>

					<tr>
					    <th scope="row"><%=b.getOrderId() %></th>
						<td><%=b.getUserName() %></td>
						<td><%=b.getItemName() %></td>
						<td><%=b.getPrice() %></td>
						<td><%=b.getPaymentType() %></td>
					</tr>
					<%
				}

				%>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>