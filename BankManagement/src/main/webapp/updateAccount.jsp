<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DTO.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Account - Bank Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('image.png'); /* Match the welcome page background */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: #ffffff; /* Set default text color for contrast */
        }
        .navbar {
            background-color: rgba(0, 33, 71, 0.9); /* Semi-transparent deep navy blue */
        }
        .navbar-brand {
            font-size: 1.5em;
            font-weight: bold;
            color: #ffffff;
        }
        .form-section {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent overlay for readability */
        }
        .form-card {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            margin-bottom: 20px;
        }
        .form-card h2 {
            text-align: center;
            color: #002147; /* Deep navy blue */
            margin-bottom: 20px;
            font-family: 'Verdana', sans-serif;
            font-size: 1.8rem;
            font-weight: bold;
        }
        .form-label {
            color: #002147;
            font-weight: bold;
        }
        .btn-primary {
            background-color: #d4af37;
            border-color: #d4af37;
        }
        .btn-primary:hover {
            background-color: #b58d2b;
            border-color: #b58d2b;
        }
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: rgba(0, 33, 71, 0.9); /* Match navbar color */
            color: #f8f9fa; /* Light gray */
        }
        .message {
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 4px;
            text-align: center;
            font-weight: bold;
            font-size: 14px;
        }
       .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            margin-bottom: 20px;
        }
        .failure {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Bank Management System</a>
            <div class="navbar-nav">
                <a class="nav-link text-white" href="bankDasboard.jsp">Home</a> 
            </div>
        </div>
    </nav>
    <% 
	Customer cust = (Customer) session.getAttribute("customer");
	if (cust == null) {
        response.sendRedirect("login.jsp");
    }
	%>
	<%
            String success = (String) request.getAttribute("ss");
            String failure = (String) request.getAttribute("ff");
        %>
        <% if (success != null) { %>
            <div class="message success">
                <%= success %>
            </div>
        <% } else if (failure != null) { %>
            <div class="message failure">
                <%= failure %>
            </div>
        <% } %>

    <section class="form-section">
        <div class="form-card">
            <h2>Update Account</h2>
            <form action="updateAccount" method="post"> <!-- Change the action to your backend servlet or controller -->
                <div class="mb-3">
                    <label for="name" class="form-label">Update Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter new name" required>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Update Phone Number</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter new phone number" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Update Email ID</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter new email ID" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Confirm Pin</label>
                    <input type="password" class="form-control" id="password" name="pin" placeholder="Enter your pin" required>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Update Account</button>
                </div>
            </form>
        </div>
    </section>

    <footer>
        &copy; 2024 Bank Management System. All Rights Reserved.
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
