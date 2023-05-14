package com.xenontask.registration;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;


@WebServlet("/contact")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
    	HttpSession session= request.getSession();
    	session.invalidate();
    	response.sendRedirect("contactus.jsp");
	}
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("contact");
		String messege = request.getParameter("messege");
		
		RequestDispatcher dispatcher = null;
		Connection con= null;
//		 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xenon?useSSL=false","root","123");
			PreparedStatement p=con.prepareStatement("insert into contact(uname,uemali,umobile,messege) values(?,?,?,?)");
			
			p.setString(1, uname);
			p.setString(2, uemail);
			p.setString(3, umobile);
			p.setString(4, messege);
			
			int rowCount = p.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("contactus.jsp");
			
		if(rowCount > 0) {
			request.setAttribute("Status", "Success");
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
