<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BASIC INFORMATION</title>
</head>
<body>

<%
     User user = (User)session.getAttribute("keyUser");

%>

</body>
<style media="screen">
 		body{
 			margin: 0;
 			padding: 0;
 			text-align: center;
 			font-family: sans-serif;
 			background-image: linear-gradient(120deg,#ff6b6b, #5f27cd);
 			min-height: 100vh;
 		}
 		div{
 			width: 500px;
 			position: absolute;
 			top: 50%;
 			left: 50%;
 			background-color: #fff;
 			transform: translate(-50%, -50%);
 			padding: 20px;
 			border-radius: 10px;
 			box-shadow: 1px 1px 20px #ee5253;
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
 		function BMI() {
 			var h=document.getElementById('h').value;
 			var w=document.getElementById('w').value;
 			var bmi=w/(h/100*h/100);
 			var bmio=(bmi.toFixed(2));

 			document.getElementById("result").innerHTML="Your BMI is " + bmio;
 		}
 		
 		function information(){
 			var h=document.getElementById('h').value;
 			var w=document.getElementById('w').value;
 			var bmi=w/(h/100*h/100);
 			var bmio=(bmi.toFixed(2));
 			let info;
 			let fun;
 			if(bmio<16){
 				info = "SEVERE THINNESS";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='gain.html' >PLAN</a>"
 	 	 					+"</center></body></html>";
 	 	 			
 			}
 			
 			else if(bmio>17&&bmio<18.5){
 				info = "MILD THINNESS";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='gain.html' >PLAN</a>"
 	 	 					+"</center></body></html>";
 	 	 			
 			}
 			
 			else if(bmio>=18.5&&bmio<25){
 				info =  "YOU ARE NORMAL";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 			+" <a href='Home.html' >PLAN</a>"
 	 					+"</center></body></html>";
 	 			
 			}
 			
 			else if(bmio>25&&bmio<30){
 				info = "YOU ARE OVERWEIGHT";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='loss6.html' >PLAN-1</a>"
 	 	 			+" <a href='inter.html' >PLAN-2</a>"
 	 	 					+"</center></body></html>";
 	 	 			
 			}
 			

 			else if(bmio>30&&bmio<35){
 				info ="OBESE CLASS - 1";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='loss6.html' >PLAN-1</a>"
 	 	 			+" <a href='inter.html' >PLAN-2</a>"
 	 	 			+" <a href='vegan.html' >PLAN-3</a>"
 	 	 					+"</center></body></html>";
 	 	 			
 			}
 			else if(bmio>35&&bmio<40){
 				info ="OBESE CLASS - 2";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='loss6.html' >PLAN-1</a>"
 	 	 			+" <a href='inter.html' >PLAN-2</a>"
 	 	 			+" <a href='vegan.html' >PLAN-3</a>"
 	 	 					+"</center></body></html>";
 			}
 			
 			else if(bmio>40){
 				info ="OBESE CLASS - 3";
 				fun  = "<html><body><center>CHECK OUT YOUR DIET PLAN</center></body></html>"
 	 	 			+" <a href='loss6.html' >PLAN-1</a>"
 	 	 			+" <a href='inter.html' >PLAN-2</a>"
 	 	 			+" <a href='vegan.html' >PLAN-3</a>"
 	 	 					+"</center></body></html>";
 			}
 			
 			
 			document.getElementById("result1").innerHTML = info +fun ;
 			
 			
 			
 		}
 		
 		
 				
 	
 	</script>
 	<body>
 		<div>
 		 	
 			<h2>BASIC INFORMATION</h2>
 			<h3>WELCOME TO MEAL PLANNER,DEAR <%= user.name %></h3>
 			<h4><%=user.email %></h4>
 			<form action="addTraining.jsp" method="post">
 			<p class="text">NAME</p>
 			<input type="text" id="n"  name="txtName">
 			<p class="text">AGE</p>
 			<input type="text" id="a"  name="txtAge">
 			<p class="text">Weight</p>
 			<input type="text" id="w"  name="numWeight">
 			<p class="text">SEX</p>
 			<input type="text" id="s"  name="txtSex">
 			<br>
 			<br>
 			<input type="submit" value="NEXT">
		    </form>
 			
 			
 		</div>
 		
 	

</body>
</html>