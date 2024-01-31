<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to My Store</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url('img1.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
}

.container {
	position: fixed;
	top: 50px; /* Adjust the top distance as needed */
	left: 45px;
	width: 70%;
	background-color: rgba(255, 255, 255, 0.5);
	/* Decrease the alpha value for less transparency */
	z-index: 1000;
}

h1 {
	font-size: 3rem;
	margin-bottom: 20px;
	align
	=center;
}

p {
	font-size: 1.2rem;
	margin-bottom: 30px;
}

.btn-enter {
	background-color: #4caf50;
	color: #fff;
	border: none;
	padding: 10px 20px;
	font-size: 1.2rem;
	border-radius: 5px;
	cursor: pointer;
}
/* Footer Styles */
    footer {
        background-color: rgba(0, 0, 0, 0.5); /* Transparent black background */
        color: #fff;
        text-align: center;
        padding: 10px 0;
        position: fixed;
        bottom: 0;
        width: 100%;
        z-index: 1000;
    }
    footer h2 {
        margin-bottom: 5px;
    }
    footer small {
        font-size: 0.8rem;
        opacity: 0.8; /* Adjust the opacity for transparency */
    }
    footer p {
        margin-bottom: 0;
    }
    footer a {
        color: #fff;
    }
    footer a:hover {
        color: #ccc;
    }


</style>
</head>
<body>
	<div class="container fixed-top text-center">
		<h1 class="text-center">Welcome to Sahoo Jewellers</h1>
		<p class="text-center">Thank you for visiting our store. We are
			thrilled to have you here!</p>
		<a href="register.jsp" class="btn btn-enter d-inline-block">Click
			Here to Enter</a>
	</div>
	
	<footer>
    <div>
        <h3>CopyRight:&copy;Sahoo Jewellers</h3>
        <small>All Rights Are Reserved &reg;</small>
        <p>Developed & Maintained By : <a href="#">Prasannajit Das</a></p>
    </div>
</footer>

</body>
<!-- Footer -->


</html>


