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
<link href="<c:url value="/resources/theme/css/events.css" />"
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
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	margin: 0 auto;
	/* Center website */
	max-width: 100%;
}

.heading {
	font-size: 25px;
	margin-right: 25px;
}

.fa {
	font-size: 25px;
}

.checked {
	color: orange;
}

/* Three column layout */
.side {
	float: left;
	width: 15%;
	margin-top: 10px;
}

.middle {
	margin-top: 10px;
	float: left;
	width: 70%;
}

/* Place text to the right */
.right {
	text-align: right;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* The bar container */
.bar-container {
	width: 100%;
	background-color: #f1f1f1;
	text-align: center;
	color: white;
}

/* Individual bars */
.bar-5 {
	width: 60%;
	height: 18px;
	background-color: #4CAF50;
}

.bar-4 {
	width: 30%;
	height: 18px;
	background-color: #2196F3;
}

.bar-3 {
	width: 10%;
	height: 18px;
	background-color: #00bcd4;
}

.bar-2 {
	width: 4%;
	height: 18px;
	background-color: #ff9800;
}

.bar-1 {
	width: 15%;
	height: 18px;
	background-color: #f44336;
}

.review-bar {
	padding: 20px;
	margin: 50px;
}

.heading {
	font: 200 30px/0.8 'Great Vibes', Helvetica, sans-serif !important;
	color: #404040;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
	padding-top: 15px;
}
/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media ( max-width : 400px) {
	.side, .middle {
		width: 100%;
	}
	.right {
		display: none;
	}
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
		data-setbg="resources/theme/img/headers-bg/6.jpg">
		<div class="breadcrumb-area">
			<a href="#">Home</a> / <span>Reviews</span>
		</div>
	</div>
	<div class="review-bar">
		<span class="heading">User Rating</span> <span
			class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span> <span
			class="fa fa-star checked"></span> <span class="fa fa-star"></span>
		<p>4.1 average based on 254 reviews.</p>
		<hr style="border: 3px solid #f1f1f1">

		<div class="row">
			<div class="side">
				<div>5 star</div>
			</div>
			<div class="middle">
				<div class="bar-container">
					<div class="bar-5"></div>
				</div>
			</div>
			<div class="side right">
				<div>150</div>
			</div>
			<div class="side">
				<div>4 star</div>
			</div>
			<div class="middle">
				<div class="bar-container">
					<div class="bar-4"></div>
				</div>
			</div>
			<div class="side right">
				<div>63</div>
			</div>
			<div class="side">
				<div>3 star</div>
			</div>
			<div class="middle">
				<div class="bar-container">
					<div class="bar-3"></div>
				</div>
			</div>
			<div class="side right">
				<div>15</div>
			</div>
			<div class="side">
				<div>2 star</div>
			</div>
			<div class="middle">
				<div class="bar-container">
					<div class="bar-2"></div>
				</div>
			</div>
			<div class="side right">
				<div>6</div>
			</div>
			<div class="side">
				<div>1 star</div>
			</div>
			<div class="middle">
				<div class="bar-container">
					<div class="bar-1"></div>
				</div>
			</div>
			<div class="side right">
				<div>20</div>
			</div>
		</div>
	</div>
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
