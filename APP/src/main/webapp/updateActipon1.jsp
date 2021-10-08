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
    String lunchId = request.getParameter("lunchid");
 	

  	DB db = new DB();
  	
      db.updateLunch(meal,lunchId);
 %>		
 
   
    <h3>UPDATE LUNCH</h3>
    
    
    
           </center>
</body>
</html>