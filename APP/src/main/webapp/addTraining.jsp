<%@page import="com.teji.dao.DB"%>
<%@page import="com.teji.model.Training"%>
<%@page import="com.teji.model.User"%>
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
  
 	

 	<%
 		
 		Training training= new Training();
 	training.userId = user._id;
 	training.name = request.getParameter("txtName");
	training.age = request.getParameter("txtAge");
	training.weight = Double.parseDouble(request.getParameter("numWeight"));
	training.sex = request.getParameter("txtSex");
 	
 		
 		DB db = new DB();
 		db.logTraining(training);
 		
 	%>

 	</div>
 	</div>
 	<body>
 		<div>
 		 	 <b style="color:red;"><%= user.name %></b>
 	<p style="color:red;">Your BASIC INFORMATION has been Recorded Successfully: <%= training.name%></p>
 	<br>
 	<br>
 			<h2>WHAT IS YOUR GOAL</h2>
 			
 		
 
 	
 	
  <input type="radio" id="BE MORE ACTIVE" name="goal" value="BE MORE ACTIVE">
  <label for="html">BE MORE ACTIVE</label>
  <a href='workout.jsp?goal=BE MORE ACTIVE'>NEXT</a>
  <br>
  <br>
  
		    

  <input type="radio" id="LOSS WEIGHT" name="goal" value="LOSS WEIGHT">
  <label for="LOSS WEIGHT">LOSS WEIGHT</label>
  <a href='workout.jsp?goal=LOSS WEIGHT'>NEXT</a>
 
  <br>
  <br>
  


  <input type="radio" id="STAY TONED" name="goal" value="STAY TONED">
  <label for="STAY TONED">STAY TONED</label>
 <a href='workout.jsp?goal=STAY TONED'>NEXT</a>

 	<br>
  <br>
 		
 
  <input type="radio" id="BUILD MUSCLE" name="goal" value="BUILD MUSCLE">
  <label for="BUILD MUSCLE">BUILD MUSCLE</label>
  <a href='workout.jsp?goal=BUILD MUSCLE'>NEXT</a>
 
  <br>
  <br>	
  
  
  
  <input type="radio" id="REDUCE STRESS" name="goal" value="REDUCE STRESS">
  <label for="REDUCE STRESS">REDUCE STRESS</label>
  <a href='workout.jsp?goal=REDUCE STRESS'>NEXT</a>
<br>
  <br>
 
 		
 		
 	


 


 </body>
 </html> 