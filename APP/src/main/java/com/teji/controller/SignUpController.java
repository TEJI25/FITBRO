package com.teji.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teji.dao.DB;
import com.teji.model.User;


@WebServlet({ "/SignUpController", "/SignUp" })


public class SignUpController extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		User user = new User();
 		
 		user.name = request.getParameter("txtName");
 		user.email = request.getParameter("txtEmail");
 		user.password = request.getParameter("txtPassword");
 		user.city = request.getParameter("txtCity");
 		//user.country = request.getParameter("txtCountry");
 		//user.phoneNumber = request.getParameter("numPhone");
 		//user.makePasswordSecure();

 		System.out.println(user);


 		// 2. Logical Processing
 		//    Dump the data in Mongo DB/ MySQL / FirebaseFirestore
 		DB db = new DB();

 		// 3. Send Back some Response
 		response.setContentType("text/html");
 		PrintWriter writer = response.getWriter();
 		boolean result = db.SignUpUser(user);


 		if(result) {
 			writer.println("Thank You. We have Registered You Successfully");
 			
 		}else {
 			writer.println("OOPS. Something Went Wrong");
 		}




 	}

		
		
	// String strTest = "100";
	 //   int iTest = Integer.parseInt(strTest);
		
		
		
		
	



		
		
		
		
		
		
	}


