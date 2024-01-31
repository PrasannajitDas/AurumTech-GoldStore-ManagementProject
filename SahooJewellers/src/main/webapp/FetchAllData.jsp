<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SahooJewellersDatabase</title>
<style>
.header {
	background-color: #4caf50;
	color: #fff;
	padding: 20px;
	text-align: center;
}

</style>
</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "Das@2023#");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from customer");
	%>
	<div class="header">
		<h1>Welcome to Gold Store Management Database</h1>
	</div>
	<table cellPadding="20px" align="center" border="2px">
		<th>cid</th>
		<th>cname</th>
		<th>email</th>
		<th>password</th>
		<th>Mob No</th>
		<th>Block Customer</th>
		<th>Edit Details</th>


		<%
		while (rs.next()) {
		%>
		
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getLong(5)%></td>
			<td><a href="deleteform.jsp?cid=<%=rs.getInt(1)%>">Block User</a></td>
			<td><a href="editform.jsp?cid=<%=rs.getInt(1)%>">Edit Details</a></td>
		</tr>
		
			<%
			}
			%>
	
		
	</table>
</body>
</html>