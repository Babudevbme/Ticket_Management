<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="//d85wutc1n854v.cloudfront.net/live/css/screen_preview_legacy.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Ticket Details</title>


</head>
<body>
	<h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
	<form action="/viewticket">
		 <input type="hidden" name="userId" required value="${login.id}">
		<h3 style="text-align:center"><button type="submit">Click To View Ticket</button></h3>

	</form>
	<h3 style="color:green;">Ticket</h3>
	
		<table border="1">
		<thead>
			<tr>
			<th>ID</th>
			<th>User_id</th>
			<th>subject</th>
			<th>description</th>
			<th> Created DateTime </th>
			<th> Status </th>
			<th> Priority  </th> 

			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${list}" varStatus="transactionList">
				<tr>
					<td>${c.id}</td>
					<td>${c.users.id}</td>
					<td>${c.subject}</td>
					<td>${c.desc}</td>
					<td>${c.timeStamp}</td>
					<td>${c.status}</td>
					<td>${c.priority}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br> CloseTicket:
	<a href="../closeticket.jsp">closeticket</a>
	</br> CreateTicket:
	<a href="../createticket.jsp">createticket</a>
	</br> updateTicket:
	<a href="../updateticket.jsp">updateticket</a>

</body>
</html>