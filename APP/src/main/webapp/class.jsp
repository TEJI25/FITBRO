<%@page import="com.teji.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html>
 <html lang="en" dir="ltr">
 	<head>
 		<meta charset="utf-8">
 		<title>BMI Calculator</title>
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
 	
  
 	<body>
 	<div>
 		
 		
 		<%
 		 String goal = request.getParameter("goal");
 		String workout = request.getParameter("workouts");
 		String classes = request.getParameter("class");
 		
 		%>	
 		
 		
 		
 		

 	<h3>YOUR GOAL IS - <%= request.getParameter("goal") %></h3>
 		<h3>NUMBER OF WORKOUTS PER WEEK - <%= request.getParameter("workouts") %></h3>
 <h3>TIME FOR WORKOUTS - <%= request.getParameter("time") %></h3>
 <h3>FAVOURITE  TYPE OF CLASS - <%= request.getParameter("class") %></h3>
 
 <%
 if(goal.equals("LOSS WEIGHT")&&workout.equals("8 WEEKS")&&classes.equals("CARDIO")){
	 %>
	
 			 <a href=cardio1.jsp>NEXT</a>
 <%	 
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("8 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 
	        <a href=str1.jsp>NEXT</a>
<%
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("8 WEEKS")&&classes.equals("TREADMILL")){
	 %>
	 
     <a href=tread1.jsp>NEXT</a>
<%
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("8 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 
     <a href=med1.jsp>NEXT</a>
<% 
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("8 WEEKS")&&classes.equals("YOGA")){
	 %>
	 
     <a href=yoga2.jsp>NEXT</a>
<%
} else if(goal.equals("LOSS WEIGHT")&&workout.equals("4 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 
      <a href=cardio.jsp>NEXT</a>
<%
 	
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("4 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 
      <a href=str.jsp>NEXT</a>
<%
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("4 WEEKS")&&classes.equals("TREADMILL")){
	 %>
	 
    <a href=tread.jsp>NEXT</a>
<%
 }	else if(goal.equals("LOSS WEIGHT")&&workout.equals("4 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 
     <a href=med.jsp>NEXT</a>
<%
 } else if(goal.equals("LOSS WEIGHT")&&workout.equals("4 WEEKS")&&classes.equals("YOGA")){
	 %>
	 
     <a href=yoga3.jsp>NEXT</a>
<%
 }
 else if(goal.equals("LOSS WEIGHT")&&workout.equals("12 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 
      <a href=cardio2.jsp>NEXT</a>
<%
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("12 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 
     <a href=str2.jsp>NEXT</a>
<%
 	
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("12 WEEKS")&&classes.equals("TREADMILL")){
	 %>
	 
    <a href=tread2.jsp>NEXT</a>
<%
 }	else if(goal.equals("LOSS WEIGHT")&&workout.equals("12 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 
     <a href=med2.jsp>NEXT</a>
<%
 } else if(goal.equals("LOSS WEIGHT")&&workout.equals("12 WEEKS")&&classes.equals("YOGA")){
	 %>
	 
     <a href=yoga1.jsp>NEXT</a>
<%
 }
 else if(goal.equals("LOSS WEIGHT")&workout.equals("ONGOING")&classes.equals("CARDIO")){
	 %>
	 
     <a href=cardio3.jsp>NEXT</a>
<%
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("ONGOING")&&classes.equals("STRENGTH")){
	 %>
	 
     <a href=str3.jsp>NEXT</a>
<%
 	
 }else if(goal.equals("LOSS WEIGHT")&&workout.equals("ONGOING")&&classes.equals("TREADMILL")){
	 %>
	 
     <a href=tread3.jsp>NEXT</a>
<%
 }	else if(goal.equals("LOSS WEIGHT")&&workout.equals("ONGOING")&&classes.equals("MEDITATION")){
	 %>
	 
     <a href=med2.jsp>NEXT</a>
<%
 } else if(goal.equals("LOSS WEIGHT")&&workout.equals("ONGOING")&&classes.equals("YOGA")){
	 %>
	 
     <a href=yoga.jsp>NEXT</a>
<%
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("4 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 
	       <a href=cardio.jsp>NEXT</a>
<%
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("4 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 
      <a href=str.jsp>NEXT</a>
<%
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("4 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	 
    <a href=tread.jsp>NEXT</a>
<%
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("4 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 
      <a href=yoga3.jsp>NEXT</a>
<%
 
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("4 WEEKS")&&classes.equals("YOGA")){
	 %>
	 
     <a href=BMI.html>frf5f</a>
<%
 }else if(goal.equals("BE MORE ACTIVE")&&workout.equals("8 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 
     <a href=cardio1.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("8 WEEKS")&&classes.equals("STRENGTH")){
%>

 <a href=str1.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("8 WEEKS")&&classes.equals("TREADMIL")){
%>

<a href=tread1.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("8 WEEKS")&&classes.equals("MEDITATION")){
%>

<a href=med1.jsp>NEXT</a>
<%

}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("8 WEEKS")&&classes.equals("YOGA")){
%>

 <a href=yoga2.jsp>NEXT</a>
<%
 
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("12 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 
      <a href=cardio2.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("12 WEEKS")&&classes.equals("STRENGTH")){
%>

 <a href=str2.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("12 WEEKS")&&classes.equals("TREADMIL")){
%>

<a href=tread2.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("12 WEEKS")&&classes.equals("MEDITATION")){
%>

<a href=med2.jsp>NEXT</a>
<%

}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("12 WEEKS")&&classes.equals("YOGA")){
%>

 <a href=yoga1.jsp>NEXT</a>
<%

}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("ONGOING")&&classes.equals("CARDIO")){
	 %>
	 
 <a href=cardio3.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("ONGOING")&&classes.equals("STRENGTH")){
	 %>
	 
     <a href=str3.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("ONGOING")&&classes.equals("TREADMIL")){
	 %>
	 
   <a href=tread3.jsp>NEXT</a>
<%
}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("ONGOING")&&classes.equals("MEDITATION")){
	 %>
	 
    <a href=med.jsp>NEXT</a>
<%

}else if(goal.equals("BE MORE ACTIVE")&&workout.equals("ONGOING")&&classes.equals("YOGA")){
	 %>
	 
     <a href=yoga.jsp>NEXT</a>
<%
}else if(goal.equals("STAY TONED")&&workout.equals("4 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 <a href=cardio.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("4 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str.jsp>NEXT</a>
<% 
} 
else if(goal.equals("STAY TONED")&&workout.equals("4 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("4 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	<a href=med.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("4 WEEKS")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga3.jsp>NEXT</a>
<% 

}else if(goal.equals("STAY TONED")&&workout.equals("8 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio1.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("8 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str1.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("8 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	<a href=tread1.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&workout.equals("8 WEEKS")&classes.equals("MEDITATION")){
	 %>
	 <a href=med1.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("8 WEEKS")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga2.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("12 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 <a href=cardio2.jsp>NEXT</a>
<% 
} 
else if(goal.equals("STAY TONED")&&workout.equals("12 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str2.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("12 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread2.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("12 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	<a href=med2.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("12 WEEKS")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga1.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("ONGOING")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio3.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("ONGOING")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str3.jsp>NEXT</a>
<% 
}
else if(goal.equals("STAY TONED")&&workout.equals("ONGOING")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread3.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("ONGOING")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med2.jsp>NEXT</a>
<% 
}else if(goal.equals("STAY TONED")&&workout.equals("ONGOING")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga.jsp>NEXT</a>
<% 
}else if(goal.equals("BUILD MUSCLE")&&workout.equals("4 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("4 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 <a href=str.jsp>NEXT</a>
<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("4 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	<a href=tread.jsp>NEXT</a>

<%
}else if(goal.equals("BUILD MUSCLE")&&workout.equals("4 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("4 WEEKS")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga3.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("8 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio1.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("8 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str1.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("8 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	<a href=tread1.jsp>NEXT</a>

<%
}else if(goal.equals("BUILD MUSCLE")&&workout.equals("8 WEEKS ")&&classes.equals("MEDITATION")){
	 %>
	<a href=med1.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("8 WEEKS")&&classes.equals("YOGA")){
	 %>
	 <a href=yoga2.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("12 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio2.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("12 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	 <a href=str2.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("12 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	<a href=tread2.jsp>NEXT</a>

<%
}else if(goal.equals("BUILD MUSCLE")&&workout.equals("12 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	<a href=med2.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("12 WEEKS")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga1.jsp>NEXT</a>
<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("ONGOING")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio3.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("ONGOING")&&classes.equals("STRENGTH")){
	 %>
	 <a href=str3.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("ONGOING")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread3.jsp>NEXT</a>

<%
}else if(goal.equals("BUILD MUSCLE")&&workout.equals("ONGOING")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med.jsp>NEXT</a>

<%
}
else if(goal.equals("BUILD MUSCLE")&&workout.equals("ONGOING")&&classes.equals("YOGA")){
	 %>
	  <a href=yoga.jsp>NEXT</a>
<%
}else if(goal.equals("REDUCE STRESS")&&workout.equals("4 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio.jsp>NEXT</a>
<% 	 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("4 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("4 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("4 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("4 WEEKS")&&classes.equals("YOGA")){
	 %>
	 <a href=yoga1.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("8 WEEKS")&&classes.equals("CARDIO")){
	 %>
	 <a href=cardio1.jsp>NEXT</a>
<% 	 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("8 WEEKS")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str1.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("8 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	<a href=tread1.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("8 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med1.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("8 WEEKS")&&classes.equals("YOGA")){
	 %>
	 <a href=yoga2.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("12 WEEKS")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio2.jsp>NEXT</a>
<% 	 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("12 WEEKS ")&&classes.equals("STRENGTH")){
	 %>
	 <a href=str2.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("12 WEEKS")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread2.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("12 WEEKS")&&classes.equals("MEDITATION")){
	 %>
	<a href=med2.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("12 WEEKS")&&classes.equals("YOGA")){
	 %>
	 <a href=yoga1.jsp>NEXT</a>
<% 
}
else if(goal.equals("REDUCE STRESS")&&workout.equals("ONGOING")&&classes.equals("CARDIO")){
	 %>
	  <a href=cardio3.jsp>NEXT</a>
<% 	 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("ONGOING")&&classes.equals("STRENGTH")){
	 %>
	  <a href=str3.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("ONGOING")&&classes.equals("TREADMIL")){
	 %>
	 <a href=tread3.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("ONGOING")&&classes.equals("MEDITATION")){
	 %>
	 <a href=med.jsp>NEXT</a>
<% 
}else if(goal.equals("REDUCE STRESS")&&workout.equals("ONGOING")&&classes.equals("YOGA")){
	 %>
	 <a href=yoga.jsp>NEXT</a>
<%
}else{
	%>
	<a href=error.jsp>SOMETHING WENT WRONG, TRY AGAIN</a>
	<%} %>
	
	
	</div>
 		

 </body>
 </html>