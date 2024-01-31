<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Registration</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url('img4.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.8);
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

input[type="text"], input[type="email"], input[type="password"], input[type="tel"]
	{
	width: calc(100% - 22px);
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

.form-group {
	position: relative;
}

.form-group input[type="password"] {
	padding-right: 40px; /* space for the show/hide password button */
}

.show-hide-password {
	position: absolute;
	top: 50%;
	right: 5px;
	transform: translateY(-50%);
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Customer Registration</h2>
		<form action="registerinfo" method="post">
			<div class="form-group">
				<label for="customerId">Customer ID:</label> <input type="text"
					id="customerId" name="customerId" required>
			</div>
			<div class="form-group">
				<label for="customerName">Name:</label> <input type="text"
					id="customerName" name="customerName" required>
			</div>
			<div class="form-group">
				<label for="customerEmail">Email:</label> <input type="email"
					id="customerEmail" name="customerEmail" required>
			</div>
			<div class="form-group">
				<label for="customerPassword">Password:</label> <input
					type="password" id="customerPassword" name="customerPassword"
					required> <span class="show-hide-password"
					onclick="togglePasswordVisibility(this)"> <i
					class="fas fa-eye"></i>
				</span>
			</div>
			<div class="form-group">
				<label for="customerMobile">Mobile No:</label> <input type="tel"
					id="customerMobile" name="customerMobile" pattern="[0-9]{10}"
					required>
			</div>
			<input type="submit" value="Register">
		</form>
	</div>

	<!-- Font Awesome for eye icon -->
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script>
		function togglePasswordVisibility(element) {
			var input = element.previousElementSibling;
			if (input.type === "password") {
				input.type = "text";
				element.innerHTML = '<i class="fas fa-eye-slash"></i>';
			} else {
				input.type = "password";
				element.innerHTML = '<i class="fas fa-eye"></i>';
			}
		}
	</script>
</body>
</html>