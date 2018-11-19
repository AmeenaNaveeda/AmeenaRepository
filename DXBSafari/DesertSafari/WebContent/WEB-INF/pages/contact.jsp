<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport"
	content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<!--<link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>-->
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">

<!-- Stylesheets -->
<link href="<c:url value="/resources/theme/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/flaticon.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.carousel.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/style.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="<c:url value="/resources/theme/Script/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/bootstrap.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/mixitup.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/circle-progress.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/main.js" />"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYf-Ztn_pL3wpxvpIW9bEZRTEJXbsc830&sensor=false&libraries=places&language=en"></script>
<script src="<c:url value="/resources/theme/Script/map.js" />"></script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container-body {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	height: -webkit-fill-available;
}

h2 {
	text-align: center;
	font: 200 40px/0.8 'Great Vibes', Helvetica, sans-serif !important;
	color: #404040;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
	padding-top: 15px;
}
</style>
</head>

<body>
	<header class="header-section sp-pad">
		<h3 class="site-logo">DXBSafari</h3>
		<form class="search-top">
			<button class="se-btn">
				<i class="fa fa-search"></i>
			</button>
			<input type="text" placeholder="Search.....">
		</form>
		<div class="nav-switch">
			<i class="fa fa-bars"></i>
		</div>
		<nav class="main-menu">
			<ul>
				<li><a href="home?id=${id}">Home</a></li>
				<li><a href="events?id=${id}">Events</a></li>
				<li><a href="review?id=${id}">Reviews</a></li>
				<li><a href="contact?id=${id}">Contact</a></li>
				<li><a href="signout">Sign Out</a></li>
			</ul>
		</nav>
	</header>
	<div class="page-top-area set-bg"
		data-setbg="resources/theme/img/headers-bg/9.jpg">
		<div class="breadcrumb-area">
			<a href="#">Home</a> / <span>Contact</span>
		</div>
	</div>
	<div class="map-area" id="map-canvas"></div>


	<!-- Contact section start -->
	<section class="contact-section set-bg spad"
		data-setbg="resources/theme/img/camel2.jpg">
		<div class="container-fluid contact-warp">
			<div class="contact-text">
				<div class="container p-0">
					<h3 class="sp-title">Stay in touch</h3>
					<p>Shoot your queries to us</p>

					<ul class="con-info">
						<li><i class="flaticon-phone-call"></i>+45 677 8993000 223</li>
						<li><i class="flaticon-envelope"></i>office@dss.com</li>
						<li><i class="flaticon-placeholder"></i>XL Tower, Business
							Bay<br> Duabi, UAE</li>
					</ul>
				</div>
			</div>
			<div class="container p-0">
				<div class="row">
					<div class="col-xl-8 offset-xl-4">
					
					
					<form:form id="contactForm" class="contact-form" modelAttribute="contact" action="sendMessage" method="post">
					
					<div class="row">
								<div class="col-md-6">
								<form:input path="name" name="name" id="name"  placeholder="Your name" required="required"/>
							
								</div>
								<div class="col-md-6">
								<form:input path="email" name="email" id="email"  placeholder="E-mail (abc@abc.com)" required="required" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter a valid email"/>
								</div>
								<div class="col-md-12">
								<form:input path="subject" name="subject" id="subject"  placeholder="Subject" required="required"/>
								
								<form:textarea path="message" name="message" id="subject"  placeholder="Message"/>
				
				    			<form:button id="send" name="send" class="site-btn light">Send</form:button>
				    			
								</div>
							</div>
					 <form:hidden name="userId" id="userId" path="userId" />
					</form:form>
				
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer-section spad">
		<div class="container text-center">
			<h2>Create your best memories with us!</h2>
			<p>office@dss.com</p>
			<div class="social">
				<a href="#"><i class="fa fa-pinterest"></i></a> <a href="#"><i
					class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-dribbble"></i></a> </br> </br>
			</div>
		</div>
	</footer>
</body>

</html>
