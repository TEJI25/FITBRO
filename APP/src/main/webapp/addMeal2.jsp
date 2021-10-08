
<%@page import="com.teji.model.Dinner"%>
<%@page import="com.teji.dao.DB"%>

<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
      <%@ page errorPage="error.jsp" %>  
 <!DOCTYPE html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Add MEAL</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
body {
  background-image: url('wallpaper.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
 </head>
 <body>

 	<%
 		User user = (User)session.getAttribute("keyUser");
 	%>

 	<center>
 		<center>
 		
   <h3 style ="font-size:60px;">WELCOME TO MEAL PLANNER</h3>
   </div>
   <br>
   </center>
  
 	

 	<%
 		
 		Dinner dinner = new Dinner();
 	dinner.userId = user._id;
 	dinner.meal=request.getParameter("txtMeal");
 	dinner.calories = Double.parseDouble(request.getParameter("numCalories"));
 		
 		DB db = new DB();
 		db.logDinner(dinner);
 		
 	%>
<div class="container">
  <div class="jumbotron">
 <b><%= user.name %></b>
 	<p>Your MEAL has been Recorded Successfully: <%= dinner.meal%></p>
</div>
</div>



 	</center>


 </body>
 </html> 