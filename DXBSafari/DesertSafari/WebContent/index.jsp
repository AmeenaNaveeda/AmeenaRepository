<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Stylesheets -->
<link href="<c:url value="/resources/theme/css/bootstrap.min.css" />"
	rel="stylesheet type="text/css"">
<link href="<c:url value="/resources/theme/css/font-awesome.min.css" />"
	rel="stylesheet type="text/css"">
<link href="<c:url value="/resources/theme/css/flaticon.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.carousel.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/home.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<c:url value="/resources/theme/Script/main.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/bootstrap.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/mixitup.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/circle-progress.min.js" />"></script>
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
		<!-- <li><a href="events">Events</a></li> -->
				<li><a href="contactHome">Contact</a></li>
				<li><a href="login">Login</a></li>
			</ul>
		</nav>
	</header>
	<div class="page-top-area set-bg"
		data-setbg="resources/theme/img/headers-bg/5.jpg"
		style="height: 700px">
		<div class="breadcrumb-area">
		</div>
	</div>
	<section class="w3-container w3-center w3-content"
		style="max-width: 600px; opacity: 0.9;">
		<h2 class="w3-wide">Desert Safari</h2>
		<p class="w3-opacity">
			<i>We love Dubai</i>
		</p>
		<p class="w3-justify">We have the best desert safari in Dubai.
			This is one experience you can't miss when in Dubai. Choose from the
			various options we offer ! Our desert safari drivers are all professional
			and have a passion for giving you a thrilling ride. So all you need
			to do is mail us and we will take care of the rest.</p>
	</section>

	<section class="w3-row-padding w3-center w3-light-grey"
		style="opacity: 0.9">
		<h2>DXB Featured Events</h2>
		<hr style="border: 3px solid #ffffff">
		<article class="w3-third">
			<p>Sand Dune Drive</p>
			<img src="resources/theme/img/1.jpg" alt="Random Name"
				style="width: 90%">
			<p style="padding-top:10px">Feel the adrenaline pump.</p>
		</article>
		<article class="w3-third">
			<p>Camel Ride</p>
			<img src="resources/theme/img/camel2.jpg" alt="Random Name"
				style="width: 85%">
			<p style="padding-top:10px">Enjoy the lazy ride.</p>
		</article>
		<article class="w3-third">
			<p>Cultural Feast</p>
			<img src="resources/theme/img/cultural-feast.jpg" alt="Random Name"
				style="width: 79%">
			<p style="padding-top:10px">Get a visual treat from the best</p>
		</article>
	</section>

	<!-- Footer -->
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
