<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
body {
  background-image: url('wallpaper1.png');
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

<div class="container">
  <div class="jumbotron">

<h3>WELCOME TO DINNER,DEAR <%= user.name %></h3>
<h4><%=user.email %></h4>
</div>
<a href="viewDinner.jsp">VIEW ALL DINNER DETAILS</a>
 		<br>
 		<br>

<h3 style="color:red;">DINNER.</h3>
<img src="kid.gif" alt="Dance" width="600" height="300">

<div class="container">
  <div class="jumbotron">

<form action="addMeal2.jsp" method="post">

<div class="container">
  <div class="jumbotron">
<ol>
<div class="form-group">
 <li> <label for="usr">MEAL-3:</label></li>
  <input type="text" class="form-control" id="usr" name="txtMeal">
</div>
<div class="form-group">
<li><label for="cal">CALORIES:</label></li>
  <input type="calorie" class="form-control" id="cal" name="numCalories">
  </ol>
</div>

	<input type="submit" value="ADD MEAL">
	</div>
	</form>
	</div>
	


	 <a href='index50.html' >HOME</a>
	 </div>
	 


	</div>
</form>
</center>








</body>
</html>