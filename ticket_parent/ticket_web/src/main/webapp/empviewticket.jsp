<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VeiwTicket</title>
</head>
<body >
    <h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
	<form action="/empviewticket">
		<input type="hidden" name="empid" required value="${empLogin.id }">
		<h3 style="text-align:center"><button  type="submit">Click Here to View Tickets</button></h3>

	</form>
	<h3 style="color:green;">Ticket</h3>
	
		<table border="1">
		<thead>
			<tr>
			<th>ID</th>
			<th>User_id</th>
			<th>Emp_id</th>
			<th>Dep_id</th>
			<th> Assignto</th>
			<th>subject</th>
			<th>description</th>
			<th> Created DateTime </th>
			<th> Status </th>
			<th> Priority  </th> 

			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${emplist}" varStatus="empTransactionList">
				<tr>
					<td>${c.id}</td>
					<td>${c.users.id}</td>
					<td>${c.employee.id}</td>
					<td>${c.department.id }</td>
					<td>${c.assignTo}</td>
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
	
 <br>ReplyTicket : <a href="../replyticket.jsp">ReplyTicket</a><br>
 <br>UpdateTicket :<a href="../replyticket.jsp">UpdateTicket</a><br>
</body>
</html>