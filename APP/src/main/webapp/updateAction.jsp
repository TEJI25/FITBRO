
<%@page import="com.teji.model.BreakFast"%>
<%@page import="com.teji.dao.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
			<center>
<%
   
   
   
    String meal = request.getParameter("txtMeal");
  
    String breakfastId = request.getParameter("breakfastid");
 	

  	DB db = new DB();
  	
     db.updateBreakfast(meal, breakfastId);
     
 %>		
 
   
    <h3>UPDATE BREAKFAST</h3>
    
    
    
           </center>
</body>
</html>