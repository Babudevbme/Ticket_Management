<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete ticket</title>
</head>
<body>
<form action="/deleteticket">
		Ticket Id :<input type="number" name="ticketId" required> 
		Employee Id :<input type="number" name="empId" required>
		<button type="submit">Submit</button> 

</form>

</body>
</html>