<%@page import="com.teji.model.User"%>
<%@page import="com.teji.dao.DB"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="01, 02, 03, 04, 05, 06, INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.24.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kalam:300,400,700">
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-7a8e"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          
           <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-center u-black u-clearfix u-section-1" id="carousel_95d4">
      <img class="u-expand-resize u-expanded-width u-image u-image-1" src="images/wdq-min.jpg">
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1">
        
        
        <body>

<%
     User user = (User)session.getAttribute("keyUser");

%>

                       <center></center>

							<div class="container">
 							 <div class="jumbotron">

							<h3>WELCOME TO MEAL PLANNER,DEAR <%= user.name %></h3>
												<h4><%=user.email %></h4>
														</div>
										<a href="viewBreakfast.jsp">VIEW ALL BREAKFAST DETAILS</a>
 														<br>
 																<br>
 																
 														

												<h3 style="color:red;">BREAKFAST.</h3>
												<center>
									<img src="kid.gif" alt="Dance" width="600" height="300">
									
																	<div class="container">
  																			<div class="jumbotron">
	
													<form action="addMeal.jsp" method="post">

																	<div class="container">
  																		<div class="jumbotron">
																						<ol>
																			<div class="form-group">
 										<li> <label for="usr">MEAL-1:</label></li>
 										 <input type="text" class="form-control" id="usr" name="txtMeal">
																								</div>
																<div class="form-group">
                               <li><label for="cal">CALORIES:</label></li>
                             <input type="calorie" class="form-control" id="cal" name="numCalories">
  </ol>
</div>
</div>
</form>
</center>
	<input type="submit" value="ADD MEAL">
	
	

<div class="container">
  <div class="jumbotron">

	 <a href='meal1.jsp' >LUNCH</a>
	 </div>
	 
	 </div>
	 </div>
	 </div>
	 
	


	</div>
</form>


</body>
</div>
</div>
</section>






</body>
</html>