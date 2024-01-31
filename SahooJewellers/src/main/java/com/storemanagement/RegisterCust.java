package com.storemanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registerinfo")
public class RegisterCust extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String customerId=req.getParameter("customerId");
		String customerName=req.getParameter("customerName");
		String customerEmail=req.getParameter("customerEmail");
		String customerPassword=req.getParameter("customerPassword");
		String customerMobile=req.getParameter("customerMobile");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "Das@2023#");
			PreparedStatement ps=con.prepareStatement("insert into customer(cid,cname,email,password,mobno) values(?,?,?,?,?)"); 
			ps.setInt(1, Integer.parseInt(customerId));
			ps.setString(2, customerName);
			ps.setString(3, customerEmail);
			ps.setString(4, customerPassword);
			ps.setLong(5, Long.parseLong(customerMobile));
			ps.execute();
			
			PrintWriter pw=resp.getWriter();
			pw.print("<h3 style='color:red'>Registration successful...</h3>");
			
			RequestDispatcher rd=req.getRequestDispatcher("mainpage.jsp");
			rd.forward(req, resp);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}