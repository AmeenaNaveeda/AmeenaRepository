
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>

<head>

<title>Book Your Desert Safari Tour</title>

</head>

<body>

	<form:form id="bookingForm" modelAttribute="booking" action="bookSafari" method="post">

		<table align="center">

			<th><h3><u>Book Your Desert Safari Tour</u></h3>
			

			<tr>
				<td></td>

				<td></td>

			</tr>

			<tr>
				<td><form:label path="name"> Name</form:label></td>

				<td><form:input path="name" name="name" id="name" /></td>

			</tr>
			<tr>

				<td><form:label path="email">Email</form:label></td>

				<td><form:input path="email" name="email" id="email" /></td>

			</tr>

			<tr>

				<td><form:label path="contact">Contact Number</form:label></td>

				<td><form:input path="contact" name="contact" id="contact" />

				</td>

			</tr>

			<tr>

				<td><form:label path="tourType">Choose Tour</form:label></td>

				<td><form:radiobutton path="tourType" value="ED" />Evening
					Desert Safari <form:radiobutton path="tourType" value="MD" />Morning
					Desert Safari <form:radiobutton path="tourType" value="CM" />Camel
					Safari</td>

			</tr>


			<tr>
				<td><form:label path="dateofTour">Date Of Tour</form:label></td>

				<td><form:input  path="dateofTour" name="dateofTour" id="dateofTour"/></td>

			</tr>
			
			<tr>
				<td><form:label path="pickupLocation">Pickup Location </form:label></td>

				<td><form:input path="pickupLocation" name="pickupLocation"
						id="pickupLocation" /></td>

			</tr>

			<tr>
				<td><form:label path="adult">Adult</form:label></td>

				<td><form:input path="adult" name="adult" id="adult" /></td>

			</tr>


			<tr>
				<td><form:label path="child">Child</form:label></td>

				<td><form:input path="child" name="child" id="child" /></td>

			</tr>


			<tr>
				<td><form:label path="message">Message</form:label></td>

				<td><form:textarea path="message" name="message" id="message" /></td>

			</tr>

			<tr>

				<td></td>

				<td><form:button id="book" name="book">Book</form:button></td>

			</tr>
			<form:hidden name="userId" id="userId" path="userId" />
		</table>
		
		

	</form:form>

</body>

</html>