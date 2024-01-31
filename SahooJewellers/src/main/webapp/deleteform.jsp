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
	String cid = request.getParameter("cid");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "Das@2023#");
	PreparedStatement ps = con.prepareStatement("delete from customer where cid=?");
	ps.setInt(1, Integer.parseInt(cid));
	ps.execute();

	RequestDispatcher rd = request.getRequestDispatcher("FetchAllData.jsp");
	rd.forward(request, response);
	%>
</body>
</html>