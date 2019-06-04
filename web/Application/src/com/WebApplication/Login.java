package com.WebApplication;

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		String enteredEmail = request.getParameter("email");
		String enteredpass = request.getParameter("pass");
		
		
		String query = " SELECT * FROM registerData WHERE `Email` = "+"'"+enteredEmail+"'"+" AND `Password` = '"+enteredpass+"'";
		
		String name="",username="",password="";
		
		Connection conn=null;
		Statement stmnt = null;
		ResultSet rs=null;
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/regData","admin123","admin123");
			
			stmnt = conn.createStatement();
			
			rs = stmnt.executeQuery(query);
			
			System.out.println();
			
			while(rs.next()){
				 name = rs.getString(1);
				 username = rs.getString(5);
				 password = rs.getString(6);
			
				
			}
		}
		catch(Exception e){
			System.out.println("Error :-"+e);
		}
		finally{
			try{
				if(stmnt!=null){
					stmnt.close();
				}
			}catch(Exception e){
				System.out.println("Error in stmnt close :-"+e);
			}
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(Exception e){
				System.out.println("Error in conn close :-"+e);
			}
		}
		
		if(enteredEmail.equals(username) && enteredpass.equals(password)){
			HttpSession session = request.getSession();
			session.setAttribute("name",name);
			response.sendRedirect("Welcome.jsp");
			
		}
		
		else{
			response.sendRedirect("Login.jsp");
		}
	}

}
