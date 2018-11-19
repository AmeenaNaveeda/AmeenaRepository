<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<!--<link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>-->
<!-- <link href="css/normalize.css" rel="stylesheet" type="text/css" />
<link href="css/datepicker.css" rel="stylesheet" type="text/css" /> -->
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
<script src="<c:url value="/resources/theme/Script/events.js" />"></script>

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
		data-setbg="resources/theme/img/headers-bg/7.jpg">
		<div class="breadcrumb-area">
			<a href="#">Home</a> / <span>Events</span>
		</div>
	</div>
	<div class="container-body">
		<section class="w3-row-padding w3-center sporty">
			<h2>Feeling Sporty?</h2>
			<article class="w3-half">
				<p class="event-name">Sand dune drive</p>
				<img class="safari-image"
					src="resources/theme/img/desert_safari.jpg" alt="Sand dune drive"
					style="width: 50%">
				<button class="book-slot" type="button">Book a slot</button>
			</article>
			<article class="w3-half">
				<p class="event-name">Camel ride</p>
				<img class="safari-image" src="resources/theme/img/camel2.jpg"
					alt="Camel ride" style="width: 50%">
				<button class="book-slot" type="button">Book a slot</button>
			</article>
		</section>
		<section class="w3-row-padding w3-center relaxation">
			<h2>Relax & enjoy</h2>
			<article class="w3-half">
				<p class="event-name">Diners</p>
				<img class="safari-image" src="resources/theme/img/diner2.jpg"
					alt="Random Name" style="width: 50%">
				<button class="book-slot" type="button">Book a slot</button>
			</article>
			<article class="w3-half">
				<p class="event-name">Cultural feast</p>
				<img class="safari-image"
					src="resources/theme/img/cultural-feast.jpg" alt="Random Name"
					style="width: 50%">
				<button class="book-slot" type="button">Book a slot</button>
			</article>
		</section>
		<section class="w3-row-padding w3-center all-day-event">
			<h2>All day events</h2>
			<div class="w3-row-padding all-events">
				<img class="all-safari-image"
					src="resources/theme/img/all-day-event.jpg" alt="Random Name"
					style="width: 100%">
				<button class="event-select" type="button">Customize events</button>
			</div>
		</section>
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
	<div id="book-slot-modal" class="modal">
			<span
				onclick="document.getElementById('book-slot-modal').style.display='none'"
				class="close" title="Close Modal">&times;</span>
				
				
				
		<form:form id="bookingForm" modelAttribute="booking" action="bookSafari" method="post"  class="modal-content" >
			
				<div class="modal-container">
					<h1>Book your slot</h1>
					<hr>
					
					<form:input path="name" name="name" id="name" class="slot-date" placeholder="Name" required="required"/>
					<form:input path="email" name="email" id="email" class="slot-date" placeholder="Email (abc@abc.com)" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter a valid email"/>
						
		             <form:input path="contact" name="contact" id="contact" class="slot-date" required="required" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="Mobile (123-456-7890)" title="(123-456-7890)"/>
					
					<!-- <input class="slot-date"
						name="contact" required="required" path="contact"
						type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="Mobile (123-456-7890)"> 
					 -->
					 
					 
					 <form:input path="dateofTour" class="slot-date" required="required"  laceholder="Select Date" id="datepicker" type="Date"/>
					<!-- <input id="datepicker" class="slot-date"
						 name="dte" required="required"
						type="date" placeholder="Select Date"> -->

					<dl class="dropdown">
						<dt>
							<a href="#">
								<div class="multiSel">
									<span class="hida select-items">Select your slot</span> <i
										class="fa fa-angle-down" style="float: right"></i>
								</div>
							</a>
						</dt>

						<dd>
							<div class="time-slot mutliSelect">
								<ul>
									<li><form:checkbox  value="Mornring" path="tourType"/>Morning</li>
									<li><form:checkbox  value="Noon" path="tourType"/>Noon</li>
									<li><form:checkbox  value="Evening" path="tourType"/>Evening</li>
								</ul>
							</div>

							<div class="event-slot mutliSelect">
								<ul>
									<li><form:checkbox value="Sand Dune Ride" path="tourType"/>Sand
										Dune Ride</li>
									<li><form:checkbox value="Camel Ride" path="tourType"/>Camel
										Ride</li>
									<li><form:checkbox value="Cultural Feast" path="tourType"/>Cultural
										Feast</li>
									<li><form:checkbox  value="Food & Bevarages" path="tourType"/>Food
										& Bevarages</li>
								</ul>
							</div>

						</dd>
					</dl>
					<div class="clearfix">
						<button class="cancel-button" type="button"
							onclick="document.getElementById('book-slot-modal').style.display='none'">Cancel</button>
							
							<form:button id="submit" name="submit"
							class="submit-button">Submit</form:button>
						
					</div>
				</div>
				 <form:hidden name="userId" id="userId" path="userId" />
			</form:form>
		</div>
</body>
</html>
