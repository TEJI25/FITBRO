
 <%@page import="com.teji.model.BreakFast"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.teji.dao.DB"%>
<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Fevers</title>

   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
  background-image: url('fit3.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
 </head>
 <body>

 	<%
 		User user = (User)session.getAttribute("keyUser");
 		DB db = new DB();
 	%>


 	<div class="container">
   <h2>BREAKFAST RECORDS</h2>
   <p>Dear <%= user.name%>, your Breakfast records till date: </p>   
   <br>
   <br>
   <div class="container mt-3">
  <h2>RECORDS Table</h2>
  <p>Type something in the input field to search the table for MEAL, CALORIES or DATE TIME:</p>  
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>         
   <table class="table table-striped">
     <thead>
       <tr>
         <th>Date Time</th>
         <th>MEAL</th>
         <th>CALORIES</th>
         <th>Action</th>
       </tr>
     </thead>
     
    <tbody id="myTable">
     <tbody>

    	   <%
 			ArrayList<BreakFast> breakfasts = db.fetchBreakfast(user._id);
 		
 			for(BreakFast breakfast : breakfasts){
 				
 		%>

 	      <tr>
 	        <td><%= breakfast.dateTimeStamp %></td>
 	        <td><%= breakfast.meal %></td>
 	         <td><%= breakfast.calories %></td>
 	      <td><a href='action.jsp?action=update&breakfastid=<%=breakfast._id%>&meal=<%=breakfast.meal%>&calories=<%=breakfast.calories%>'>UPDATE</a>  <a href='action.jsp?action=delete&breakfastid=<%=breakfast._id%>'>DELETE</a></td>
 	         </tr>

       	<%			
 				
 			}
 		%>
     </tbody>
   </table>
 </div>


 </body>
 </html> 