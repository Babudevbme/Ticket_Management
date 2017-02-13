<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update ticket</title>
</head>
<body>
<center>
<h3>Update Ticket</h3><hr>
<br>
<form action="/updateticket" method="get">
Ticket Id:<input type="number" name="ticketid" autofocus required>
<input type="hidden" name="userid" required value="${login.id }">
Subject:<input type="text" name="subject" required>
Description:<input type="text" name="description" required>
<br><br>
<button style="background-color:gold;" type="submit">Submit</button>
${error_message}
</center>
</form>


</body>
</html>