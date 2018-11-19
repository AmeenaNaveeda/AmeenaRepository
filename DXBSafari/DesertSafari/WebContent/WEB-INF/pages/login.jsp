<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="description" content="DXBSafari">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<link href="<c:url value="/resources/theme/css/index.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<c:url value="/resources/theme/Script/index.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/bootstrap.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/mixitup.min.js" />"></script>
<script
	src="<c:url value="/resources/theme/Script/circle-progress.min.js" />"></script>
<script src="<c:url value="/resources/theme/Script/main.js" />"></script>

</head>

<body>
	<div class="container-body">
		<div class="nameplate-header">
			<label>DXBSafari</label>
		</div>
		<div class="login-container">
			<%--  <form class="login-form" action="home.html"> --%>
			<form:form id="logForm" modelAttribute="user" action="validateLogin"
				method="post" class="login-form">
				<div class="login-label">
					<label>Login</label>
				</div>
				<div class="col">

					<form:input path="username" name="username" id="username"
						placeholder="Username" class="username" required="required"/>

					<form:input class="password" path="password" name="password"
						id="password" placeholder="Password" required="required"
						 type="password" />


					<!--  <input class="username" type="text" name="username" placeholder="Username" required>
          <input class="password" type="password" name="password" placeholder="Password" required> -->
					<div class="mng-password-desktop">
						<label class="remember-me"> <input type="checkbox"
							checked="checked" name="remember" style="margin-bottom: 15px">
							Remember me
						</label> <span class="forgot-password"><a href="#">Forgot
								password?</a></span>
					</div>
					<div class="mng-password-cellphone">
						<div>
							<label class="remember-me"> <input type="checkbox"
								checked="checked" name="remember" style="margin-bottom: 15px">
								Remember me
							</label>
						</div>
						<div>
							<span class="forgot-password"><a href="#">Forgot
									password?</a></span>
						</div>
					</div>
				</div>
				<div class="col">
					<input class="submit-buttton" type="submit" value="Login">
				</div>
				<div>
					<span class="create-account"> <span>New to our page?
					</span> <a class="sign-up" href="#">Create an account</a>
					</span>
				</div>
			</form:form>
			<%--   </form> --%>
		</div>
		<div id="signup-modal" class="modal">
			<span
				onclick="document.getElementById('signup-modal').style.display='none'"
				class="close" title="Close Modal">&times;</span>
			<form:form id="regForm" modelAttribute="user" action="registerUser"
				method="post" class="modal-content signup-form">
				<div class="modal-container">
					<h1>Sign Up</h1>
					<p>Please fill in this form to create an account.</p>
					<hr>


					<form:input class="first-name form-input" path="username"
						name="username" id="signup-username" placeholder="UserName" required="required"/>

					<form:input path="firstname" name="firstname" id="firstname"
						class="first-name form-input side-side" placeholder="FirstName" required="required"/>
					<form:input path="lastname" name="lastname" id="lastname"
						class="last-name form-input side-side" placeholder="LastName" required="required"/>
					<form:input path="password" name="password" id="signup-password"
						class="signup-password form-input side-side"
						placeholder="Password" required="required"
						type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
					<form:input path="cofirmPassword" name="cofirmPassword"
						id="cofirmPassword"
						class="signup-reconfirm-password form-input side-side"
						placeholder="Repeat Password" required="required"
						type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
					<form:input path="phone" name="phone" id="phone"
						class="mobile form-input side-side" required="required" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="Mobile (123-456-7890)" title="(123-456-7890)"/>
					<form:input path="phone1" name="phone1" id="phone1"
						class="landline form-input side-side" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="Landline (123-456-7890)" title="(123-456-7890)"/>
					<form:input path="email" name="email" id="email"
						class="email form-input" placeholder="Email (abc@abc.com)" required="required" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter a valid email"/>
					<form:input path="address" name="address" id="address"
						class="address form-input" placeholder="Address" required="required"/>

					<label> <input type="checkbox" checked="checked"
						name="remember" style="margin-bottom: 15px"> Remember me
					</label>

					<p>
						By creating an account you agree to our <a href="#"
							style="color: dodgerblue">Terms & Privacy</a>.
					</p>

					<div class="clearfix">
						<button class="cancel-button" type="button"
							onclick="document.getElementById('signup-modal').style.display='none'">Cancel</button>

						<form:button id="register" name="register"
							class="signup-submit-button">Sign Up</form:button>

					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>

</html>