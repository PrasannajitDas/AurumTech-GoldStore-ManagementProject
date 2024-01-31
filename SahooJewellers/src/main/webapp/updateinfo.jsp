<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String cid = request.getParameter("customerId");
	String cname = request.getParameter("customerName");
	String email = request.getParameter("customerEmail");
	String password = request.getParameter("customerPassword");
	String mobno = request.getParameter("customerMobile");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "Das@2023#");
	PreparedStatement ps = con.prepareStatement("update customer set cname=?,email=?,password=?,mobno=? where cid=?");
	ps.setString(1, cname);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setLong(4, Long.parseLong(mobno));
	ps.setInt(5, Integer.parseInt(cid));
	ps.execute();

	RequestDispatcher rd = request.getRequestDispatcher("FetchAllData.jsp");
	rd.forward(request, response);
	%>
</body>
</html>