<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gold Store Management</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url('img2.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
}

.header {
	background-color: #4caf50;
	color: #fff;
	padding: 20px;
	text-align: center;
}

.container {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
}

form {
	margin-top: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

.signup-link {
	text-align: center;
	margin-top: 15px;
}

.signup-link a {
	color: red;
	text-decoration: underlined;
}
.signup-link a:hover{
	color:blue;
}

</style>
</head>
<body>
	<div class="header">
		<h1>Welcome to Gold Store Management</h1>
	</div>

	<div class="container">
		<h2>User Login</h2>
		<form action="UserLoginServlet" method="get">
			<div class="form-group">
				<label for="customerEmail">Email:</label> <input type="email"
					id="customerEmail" name="customerEmail" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" class="form-control" required>
			</div>
			<input type="submit" value="Login" class="btn btn-primary">
		</form>
		<div class="signup-link">
			<a href="signup.jsp">New user? Sign up here</a>
		</div>
	</div>

	<div class="container">
		<h2>Admin Login</h2>
		<form action="AdminLoginServlet" method="get">
			<div class="form-group">
				<label for="adminUsername">Username:</label> <input type="text"
					id="adminUsername" name="adminUsername" class="form-control"
					required>
			</div>
			<div class="form-group">
				<label for="adminPassword">Password:</label> <input type="password"
					id="adminPassword" name="adminPassword" class="form-control"
					required>
			</div>
			<input type="submit" value="Login" class="btn btn-primary">
		</form>
	</div>

	
</body>
</html>