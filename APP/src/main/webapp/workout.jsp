
<%@page import="com.teji.model.Training"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <html lang="en" dir="ltr">
 	<head>
 		<meta charset="utf-8">
 		<title>ABC</title>
 	</head>


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

 			
 			<h2>HOW MANY WEEKS DO YOU WANT TO START WITH ?</h2>
 			
 		
 
 	
 
  <input type="radio" id="4 WEEKS" name="workout" value="4 WEEKS">
  <label for="4 WEEKS">4 WEEKS</label>
<a href='time.jsp?goal=<%=request.getParameter("goal")%>&workouts=4 WEEKS'>NEXT</a>
 
  <br>
  <br>
  
		    

  <input type="radio" id="8 WEEKS" name="workout" value="8 WEEKS">
  <label for="8 WEEKS">8 WEEKS</label>
 <a href='time.jsp?goal=<%=request.getParameter("goal")%>&workouts=8 WEEKS'>NEXT</a>
  <br>
  <br>
  


  <input type="radio" id="12 WEEKS" name="workout" value="12 WEEKS">
  <label for="12 WEEKSs">12 WEEKS</label>
<a href='time.jsp?goal=<%=request.getParameter("goal")%>&workouts=12 WEEKS'>NEXT</a>
 	<br>
  <br>
 		
 
  <input type="radio" id="ONGOING " name="workout" value="ONGOING ">
  <label for=" ONGOING">ONGOING </label>
 <a href='time.jsp?goal=<%=request.getParameter("goal")%>&workouts=ONGOING'>NEXT</a>
  <br>
  <br>	
  
  
 
 


 </body>
 </html> 