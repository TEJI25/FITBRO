
<%@page import="com.teji.model.User"%>
<%@page import="com.teji.model.Training"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <html lang="en" dir="ltr">
 	<head>
 		<meta charset="utf-8">
 		<title>ABC</title>
 	</head>
<%
     User user = (User)session.getAttribute("keyUser");

%>


 	<style media="screen">
 		body{
 			margin: 0;
 			padding: 0;
 			text-align: center;
 			font-family: sans-serif;
 			background-image: linear-gradient(120deg,#ff6b6b, #5f27cd);
 			min-height: 500vh;
 		}
 		div{
 			width: 500px;
 			position: absolute;
 			top: 50%;
 			left: 50%;
 			background-color: #fff;
 			transform: translate(-50%, -50%);
 			padding: 60px;
 			border-radius: 10px;
 			box-shadow: 4px 4px 50px #ee5253;
 		}
 		h2{
 			font-size: 30px;
 			font-weight: 600;
 		}
 		.text{
 			text-align: left;
 			margin-left: 150px;
 		}
 		#w, #h{
 			color: #222f3e;
 			text-align: left;
 			font-size: 20px;
 			font-weight: 200;
 			outline: none;
 			border: none;
 			background: none;
 			border-bottom: 1px solid #341f97;
 			width: 200px;
 		}
 			#w:focus, #h:focus{
 				border-bottom: 2px solid #341f97;
 				width: 300px;
 				transition: 0.5s;
 			}
 			#result{
 				color: #341f97;
 			}
 			#btn{
 				font-family: inherit;
 				margin-top: 10px;
 				border: none;
 				color: #fff;
 				background-image: linear-gradient(120deg,#ff6b6b, #5f27cd);
 				width: 150px;
 				padding: 10px;
 				border-radius: 30px;
 				outline: none;
 				cursor: pointer;
 			}
 			#btn:hover{
 				box-shadow: 1px 1px 10px #341f97;
 			}
 			#info{
 				font-size: 12px;
 				font-family: inherit;
 			}
 			
 	</style>
 	<script type="text/javascript">
 		
 		
 		
 		
 		
 				
 	
 	</script>
  
 	<body>
 		<div>
 		
 		
 			<h2>HOW MUCH TIME DO YOU HAVE TO WORKOUT <%= user.name %>?</h2>
 			
 		
 
 	
 	
  <input type="radio" id="5 - 10 minutes" name="time" value="5 - 10 minutes">
  <label for="5 - 10 minutes">5 - 10 minutes</label>
 <a href='favourite.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=5 - 10 minutes'>NEXT</a>
  <br>
  <br>
  
		    

  <input type="radio" id="15 - 20 minutes" name="time" value="15 - 20 minutes">
  <label for="15 - 20 minutes">15 - 20 minutes</label>
 <a href='favourite.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=15 - 20 minutes'>NEXT</a>
  <br>
  <br>
  


  <input type="radio" id="25 - 30 minutes" name="time" value="25 - 30 minutes">
  <label for="25 - 30 minutes">25 - 30 minutes</label>
 <a href='favourite.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=25 - 30 minutes'>NEXT</a>
 	<br>
  <br>
 		
 
  <input type="radio" id="30 + minutes" name="time" value="30 + minutes">
  <label for="30 + minutes"> 30 + minutes</label>
 <a href='favourite.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=30+ minutes'>NEXT</a>
  <br>
  <br>	
  
  
 
 		
 		
 	


 


 </body>
 </html> 