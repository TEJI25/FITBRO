<%@page import="com.teji.dao.DB"%>
<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>	SIGN UP</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
  background-image: url('logo.png');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
</head>
     <center>
     <div class="container">
  <div class="jumbotron">

<%!

     User user = new User();
     DB db = new DB();

%>

<%   

	//user.name = request.getParameter("txtName");
   
	user.name = request.getParameter("txtName");
	user.email = request.getParameter("txtEmail");
	user.password = request.getParameter("txtPassword");
	user.city = request.getParameter("txtCity");
%>




<%


out.println(user);
out.println("HELLO BYE BYE");

%>



<% 
response.setContentType("text/html");
 		response.getWriter();
 		boolean result = db.SignUpUser(user);


 		if(result) {
 			out.println("Thank You. We have Registered You Successfully");
 			
 			
 			 
 			
 			
 			
 			
 		}else {
 			out.println("OOPS. Something Went Wrong");
 		}
%>

        <a href="Login.html">Login</a>




     </center>
</body>
</html>