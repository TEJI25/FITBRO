<%@page import="com.teji.dao.DB"%>

 <%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
      <%@ page errorPage="error.jsp" %>  
 <!DOCTYPE html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Action</title>
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

 	<center>

 	<%
 		DB db = new DB();
 	
 		String action = request.getParameter("action");
 		String dinnerId = request.getParameter("dinnerid");
 		String meal = request.getParameter("meal");
 		String calories = request.getParameter("calories");
 		
 		
 		if(action.equals("delete")){
 			// delete the fever record
 			db.deleteDinner(dinnerId);
 			
 	%>
 			<h3> DINNER MEAL Deleted</h3>
 	<%			
 		}else{
 			
 	%>	
 		<h3>UPDATE Dinner</h3>	
 		<div class="container">
  <div class="jumbotron">

<form action="updateAction2.jsp" method="post">

<div class="container">
  <div class="jumbotron">
<ol>
<div class="form-group">
 <li> <label for="usr">MEAL:</label></li>
  <input type="text" class="form-control" id="usr" name="txtMeal" value="<%=meal%>">
</div>
<div class="form-group">
<li><label for="cal">CALORIES:</label></li>
  <input type="calorie" class="form-control" id="cal" name="numCalories" value="<%=calories%>">
  <div class="form-group">


	<input type="hidden"  name="dinnerid" value="<%=dinnerId%>">
	
  
  </ol>
</div>

	<input type="submit" value="UPDATE MEAL">
	
	</form>
	</div>

</div>
</form>
</div>
 		
	
 	<%			// update the fever record
 		}
 	%>
 	</center>

 </body>
 </html> 