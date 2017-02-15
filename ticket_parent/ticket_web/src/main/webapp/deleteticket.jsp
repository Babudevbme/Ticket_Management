<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete ticket</title>
</head>
<h2>DELETE TICKET</h2>
<body style="text-align:center">

    <h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
<form action="/deleteticket">
		<br><br>Ticket Id :<input type="number" name="ticketId" required> 
		Employee Id :<input type="number" name="empId" required>
		<br><br><button type="submit">Submit</button> 

</form>

</body>
</html>