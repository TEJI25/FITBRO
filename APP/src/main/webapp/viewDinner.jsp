

<%@page import="com.teji.model.Dinner"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.teji.dao.DB"%>
<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Dinner</title>

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
   <h2>LUNCH RECORDS</h2>
   <p>Dear <%= user.name%>, your Breakfast records till date: </p>            
   <table class="table table-striped">
     <thead>
       <tr>
         <th>Date Time</th>
         <th>MEAL</th>
         <th>CALORIES</th>
         <th>Action</th>
       </tr>
     </thead>
     <tbody>

    	   <%
 			ArrayList<Dinner> dinners = db.fetchDinner(user._id);
    	   
 			for(Dinner dinner: dinners){
 				
 		%>

<div class="container">
  <div class="jumbotron">

	 <a href='total.jsp' >CHECK TOTAL CALORIES INTAKED IN WHOLE DAY</a>
	 </div>
	 </div>
	 </div>



 	      <tr>
 	        <td><%= dinner.dateTimeStamp %></td>
 	        <td><%= dinner.meal %></td>
 	         <td><%= dinner.calories %></td>
 	      <td><a href='action2.jsp?action=update&dinnerid=<%=dinner._id%>&meal=<%=dinner.meal%>&calories=<%=dinner.calories%>'>UPDATE</a>  <a href='action2.jsp?action=delete&dinnerid=<%=dinner._id%>'>DELETE</a></td>
 	         </tr>

       	<%			
 				
 			}
 		%>
     </tbody>
   </table>
 </div>


 </body>
 </html> 