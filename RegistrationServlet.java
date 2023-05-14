package com.xenontask.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/regi")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upsd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		
		RequestDispatcher dispatcher = null;
		Connection con= null;
//		PrintWriter out= response.getWriter();
//		out.print(uname);
//		out.print(uemail);
//		out.print(upwd);
//		out.print(umobile);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xenon?useSSL=false","root","Rupesh@123");
			PreparedStatement p=con.prepareStatement("insert into users(uname,upsd,uemail,umobile) values(?,?,?,?)");
			p.setString(1, uname);
			p.setString(2, upsd);
			p.setString(3, uemail);
			p.setString(4, umobile);
			
			//it shows no, of rows 
			int rowCount = p.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
		if(rowCount > 0) {
			request.setAttribute("Status", "Success");
		}else {
			request.setAttribute("Status", "Failed");
		}
		
		dispatcher.forward(request, response);	
		
		}catch(Exception e) {
		
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
