<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<form action="/viewsolution">
	<h3 style="color:green;">Solutions</h3>
	EmpId :<input type="number" name="empId" required value="${empLogin.id }">
	<button type="submit" name="submit">Click Here to View Solutions</button>
	</form>
		<table border="1">
		<thead>
			<tr>
			<th>ID</th>
			<th>Ticket_id</th>
			<th>Emp_id</th>
			<th> Solution </th> 

			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${solutionlist}" varStatus="emptransactionList">
				<tr>
					<td>${c.id}</td>
					<td>${c.transaction.id}</td>
					<td>${c.employee.id}</td>
					<td>${c.solution}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br> ViewTicket:
	<a href="../empviewticket.jsp">closeticket</a>
	</br> UpdateTicket:
	<a href="../replyticket.jsp">createticket</a>
	</br> ReplyTicket:
	<a href="../replyticket.jsp">updateticket</a>

</body>
</html>