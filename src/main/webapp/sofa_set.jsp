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
<title>Sofa Set collections</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.navbar {
	background-color: #d6cfc7;
	color: #3E2723;
	padding: 10px;
	display: flex;
	align-items: center;
}

.logout-button {
	background-color: #f44336;
	color: white;
	border: none;
	padding: 10px 15px;
	cursor: pointer;
	border-radius: 5px;
}

.product-container {
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 15px;
	margin: 15px;
	transition: transform 0.2s;
}

.product-container:hover {
	transform: scale(1.05);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.product-image {
	max-width: 100%;
	height: auto;
	border-radius: 8px;
	object-fit: cover;
	width: 250px; /* Set a fixed width */
	height: 250px
}

.product-title {
	font-size: 1.25rem;
	margin: 10px 0;
}

.product-price {
	font-size: 1.1rem;
	color: #28a745;
}

.product-price {
	font-size: 1.5rem; /* Increased font size */
	color: #28a745; /* Green color */
	font-weight: bold; /* Bold text */
	background-color: #f8f9fa; /* Light background */
	padding: 5px 10px; /* Padding around the price */
	border-radius: 5px; /* Rounded corners */
	margin-right: 10px; /* Space between price and button */
}

.add-to-cart-btn {
	padding: 10px 20px; /* Padding for the button */
	font-size: 1rem; /* Font size for the button */
	border-radius: 5px; /* Rounded corners */
	transition: background-color 0.3s;
	/* Smooth transition for hover effect */
}

.add-to-cart-btn:hover {
	background-color: #0056b3; /* Darker blue on hover */
}

/* toast */
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
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */
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
			<a href="cart.jsp" class="cart-icon" title="View Cart"> <i
				class="fas fa-shopping-cart"></i>
			</a>
			<form action="logout" method="">
				<button type="submit" class="logout-button">Logout</button>
			</form>
		</c:if>
	</div>
	<div class="container">
		<h1 class="text-center my-4">Sofa Set Collections</h1>
		<div class="row">
			<!-- Product 1 -->

			<%
			ItemDAOImpl dao = new ItemDAOImpl();
			List<ItemDetails> list = dao.getSofaSetItem();
			for (ItemDetails b : list) {
			%>
			<div class="col-md-4">
				<div class="product-container text-center">
					<img src="wlimage/<%=b.getItem_image()%>" alt="Sofa Set 1"
						class="product-image">
					<h2 class="product-title"><%=b.getItem_name()%></h2>
					<div class="d-flex align-items-center justify-content-between">
						<div class="price-container"
							style="flex-grow: 1; text-align: right; margin-right: 20px;">
							<p class="product-price">
								₹<%=b.getItem_price()%></p>
						</div>
						<%
						if (u == null) {
						%>
						<a href="login.jsp" class="btn btn-primary add-to-cart-btn">Add
							to Cart</a>
						<%
						} else {
						%>
						<form action="cart" method="get">
							<input type="hidden" name="iid" value="<%=b.getItemId()%>">
							<input type="hidden" name="uid" value="<%=u.getId()%>"> <input
								type="hidden" name="iname" value="<%=b.getItem_name()%>">
							<input type="hidden" name="iprice" value="<%=b.getItem_price()%>">
							<input type="hidden" name="ic" value="<%=b.getItem_category()%>">
							<input type="hidden" name="iimage" value="<%=b.getItem_image()%>">
							<input type="hidden" name="uname" value="<%=u.getName()%>">
							<input type="hidden" name="pno" value="<%=u.getPhoneno()%>">
							<button type="submit" class="btn btn-primary add-to-cart-btn">Add
								to Cart</button>
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
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>