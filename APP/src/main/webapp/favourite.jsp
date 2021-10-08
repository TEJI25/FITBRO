
<%@page import="com.teji.model.User"%>
<%@page import="com.teji.model.Training"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page errorPage="error.jsp" %>  
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

 	
 
 			<h2>SELECT YOUR FAVOURITE TYPE OF CLASS <%= user.name %>?</h2>
 			
 		
 
 	
 	
  <input type="radio" id="cardio" name="exercise" value="cardio">
  <label for="CARDIO">CARDIO</label>
<a href='class.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=<%=request.getParameter("time")%>&class=CARDIO'>NEXT</a>
  <br>
  <br>
 
 
  
		    

  <input type="radio" id="STRENGTH" name="exercise" value="STRENGTH">
  <label for="STRENGTH">STRENGTH</label>
  <a href='class.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=<%=request.getParameter("time")%>&class=STRENGTH'>NEXT</a>
  <br>
  <br>
 

 
 		
 
  
  <input type="radio" id="TREADMILL" name="exercise" value="TREADMILL">
  <label for="TREADMILL">TREADMILL</label>
 <a href='class.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=<%= request.getParameter("time")%>&class=TREADMILL'>NEXT</a>
  <br>
  <br>
  
   <input type="radio" id="MEDITATION" name="exercise" value="MEDITATION">
  <label for="MEDITATION">MEDITATION</label>
 <a href='class.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%= request.getParameter("workouts")%> &time=<%= request.getParameter("time")%>&class=MEDITATION'>NEXT</a>
  <br>
  <br>
  
  <input type="radio" id="YOGA" name="exercise" value="YOGA">
  <label for="YOGA">YOGA</label>
 <a href='class.jsp?goal=<%=request.getParameter("goal")%>&workouts=<%=request.getParameter("workouts")%>&time=<%=request.getParameter("time")%>&class=YOGA'>NEXT</a>
  <br>
  <br>
 
 </div>
 

 </body>
 </html> 