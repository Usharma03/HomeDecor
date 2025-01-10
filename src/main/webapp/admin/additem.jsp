<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item</title>
    <!-- Bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS for additional styling -->
    <style>
        /* Global body styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }


        /* Navigation bar styling */
        .navbar {

             background-color : #1d3557 !important;
        }


        .navbar a.nav-link {
            font-size: 18px;
            font-weight: 500;
            color: white !important;
        }


        .navbar a.nav-link:hover {
            color: #e0e0e0 !important;
        }


        /* Card styling */
        .card {
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }


        .card-body {
            padding: 30px;
        }


        /* Form heading */
        h2 {
            font-size: 32px;
            color: #007bff;
            font-weight: 600;
        }


        /* Form labels */
        .form-label {
            font-size: 16px;
            color: #333;
        }


        /* Input fields */
        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            padding: 10px;
        }


        .form-select {
            border-radius: 8px;
            border: 1px solid #ced4da;
            padding: 10px;
        }


        /* Button styling */
        button {
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            padding: 15px;
            border: none;
            font-size: 18px;
        }


        button:hover {
            background-color: #0056b3;
            cursor: pointer;
        }


        /* Alert message styling */
        .alert {
            font-size: 16px;
            padding: 12px;
            border-radius: 8px;
            margin-top: 15px;
        }


        /* Responsive design */
        @media (max-width: 767px) {
            .card-body {
                padding: 20px;
            }


            h2 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body class="bg-light">


    <!-- Check if user is logged in -->
    <c:if test="${empty userobj}">
        <c:redirect url="../login.jsp"></c:redirect>
    </c:if>


    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Item Management</a>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="home.jsp">Home</a>
                </li>
            </ul>
        </div>
    </nav>


    <!-- Add Item Form -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm border-light rounded">
                    <div class="card-body">
                        <h2 class="text-center mb-4 text-primary">Add New Item</h2>


                        <!-- Success and Error messages -->
                        <c:if test="${not empty SuccMsg }">
                            <div class="alert alert-success text-center">
                                ${SuccMsg}
                            </div>
                            <c:remove var="SuccMsg" scope="session" />
                        </c:if>


                        <c:if test="${not empty FailedMsg }">
                            <div class="alert alert-danger text-center">
                                ${FailedMsg}
                            </div>
                            <c:remove var="FailedMsg" scope="session" />
                        </c:if>


                        <!-- Form to add item -->
                        <form action="../add_items" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="itemName" class="form-label">Item Name</label>
                                <input type="text" class="form-control" id="itemName" name="itemName" placeholder="Enter item name" required>
                            </div>


                            <div class="mb-3">
                                <label for="itemPrice" class="form-label">Item Price</label>
                                <input type="number" class="form-control" id="itemPrice" name="itemPrice" placeholder="Enter item price" required>
                            </div>


                            <div class="mb-3">
                                <label for="itemImage" class="form-label">Item Image</label>
                                <input type="file" class="form-control" id="itemImage" name="itemImage" accept="image/*" required>
                            </div>


                            <div class="mb-3">
                                <label for="itemCategory" class="form-label">Item Category</label>
                                <select id="itemCategory" name="itemCategory" class="form-select" required>
                                    <option value="" disabled selected>Select item category</option>
                                    <option value="center_table">Center Table</option>
                                    <option value="photoframes">Photo Frames</option>
                                    <option value="sofa_set">Sofa set</option>
                                </select>
                            </div>


                            <div class="mb-3">
                                <label for="itemStatus" class="form-label">Item Status</label>
                                <select id="itemStatus" name="itemStatus" class="form-select" required>
                                    <option value="" disabled selected>Select item status</option>
                                    <option value="active">Active</option>
                                    <option value="inactive">Inactive</option>
                                </select>
                            </div>


                            <button type="submit" class="btn btn-primary w-100 py-2">Add Item</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>





