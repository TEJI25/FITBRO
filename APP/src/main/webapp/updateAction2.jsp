<%@page import="com.teji.dao.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

			<center>
<%
   
   
   
    String meal = request.getParameter("txtMeal");
    String dinnerId = request.getParameter("dinnerid");
 	

  	DB db = new DB();
  	
      db.updateDinner(meal,dinnerId);
 %>		
 
   
    <h3>UPDATE LUNCH</h3>
    
    
    
           </center>

</body>
</html>