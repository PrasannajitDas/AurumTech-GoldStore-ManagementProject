<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gold Store Management</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('img3.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
  }
  
  header {
    background-color: #ffd700;
    padding: 20px;
    text-align: center;
    color: #333;
    font-size: 24px;
  }
  
  section {
    padding: 40px;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.5); /* Add a semi-transparent white background */
    border-radius: 10px;
    margin: 20px auto;
    max-width: 800px;
  }
  
  .section-title {
    font-size: 32px;
    margin-bottom: 20px;
  }
  
  .item {
    display: inline-block;
    margin: 20px;
    border: 1px solid #ccc;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  }
  
  .item img {
    max-width: 100%;
    height: auto;
  }
</style>
</head>
<body>
  <header>
    Gold Store Management
  </header>
  
  <section id="necklace">
    <div class="section-title">Necklaces</div>
    <div class="item">
      <img src="necklace1.jpeg" alt="Necklace 1">
      <p>Necklace 1 description</p>
    </div>
    <div class="item">
      <img src="necklace2.jpeg" alt="Necklace 2">
      <p>Necklace 2 description</p>
    </div>
    <div class="item">
      <img src="necklace3.jpeg" alt="Necklace 3">
      <p>Necklace 3 description</p>
    </div>
    <!-- Add more items here -->
  </section>
  
  <section id="bangles">
    <div class="section-title">Bangles</div>
    <div class="item">
      <img src="bangles1.jpeg" alt="Bangles 1">
      <p>Bangles 1 description</p>
    </div>
    <div class="item">
      <img src="bangles2.jpg" alt="Bangles 2">
      <p>Bangles 2 description</p>
    </div>
    <div class="item">
      <img src="bangles3.jpg" alt="Bangles 3">
      <p>Bangles 3 description</p>
    </div>
    <!-- Add more items here -->
  </section>
  
  <section id="others">
    <div class="section-title">Others</div>
    <div class="item">
      <img src="others1.jpg" alt="Others 1">
      <p>Others 1 description</p>
    </div>
    <div class="item">
      <img src="others2.jpg" alt="Others 2">
      <p>Others 2 description</p>
    </div>
    <!-- Add more items here -->
  </section>
</body>
</html>
