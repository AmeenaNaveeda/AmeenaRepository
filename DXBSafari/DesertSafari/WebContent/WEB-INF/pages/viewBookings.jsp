
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>

<title>Booking Details</title>

</head>

<body>
	<table align="center">

		<th><h3><u>Booking Details</u></h3> </th>
		
		
		<c:forEach var="booking" items="${bookingList}">
		
		<tr>
		<td>Booking Id : ${booking.bookingId}
		 <td>Booking Type: ${booking.tourTypeDesc}
		 <td>Booking Date :${booking.dateofTour}
		
		</tr>

			</c:forEach>
	</table>

</body>

</html>