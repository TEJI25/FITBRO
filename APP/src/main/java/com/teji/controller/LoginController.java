package com.teji.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.teji.dao.DB;
import com.teji.model.User;


@WebServlet({ "/LoginController", "/Login" })
public class LoginController extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
 		user.email = request.getParameter("txtEmail");
 		user.password = request.getParameter("txtPassword");

 		System.out.println(user);

 		// 2. Perform some Logical Operation

 		DB db = new DB();
 		boolean result = db.loginUser(user);



 		// 3. Send RESPOSNE to client ->  Either Text or HTML
 		response.setContentType("text/html");

 		PrintWriter writer = response.getWriter();

 		//String message = "Thank You "+user.name;
 		
 		if(result) {
 			
 			HttpSession session = request.getSession();
 		    session.setAttribute("keyUser",user);
 			String html = "<html><body><center>THANK YOU "+user.email+"<br>Login Success</center></body></html>"
 			+" <a href='index.html' >ENTER HOME</a>"
 					+"</center></body></html>";
 			
 			writer.println(html);
 		}else {
 			String html = "<html><body><center>Invalid Credentials"+user.email+"<br>Please try Again</center></body></html>";
 			writer.println(html);
 		}

 		//writer.println(message);
 		//writer.println(html);



 	



	}

}
