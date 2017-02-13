<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reply Ticket</title>
</head>
<body><center>
<h3>Reply Ticket</h3><hr><br>
<form action="../replyticket" method="get">
Ticket Id: <input type="number" name="ticketid" autofocud required><br>
<br><br>Solution :<input type="text" name="solution" required><br>
<br><button type="submit">Submit</button>
</form>
<br><h3>Update Solution</h3><hr>
<form action="../empupdate" method="get">
<br>Ticket Id: <input type="number" name="ticketid" autofocud required><br>
<br><br>Emp Id: <input type="number" name="empid"  required><br>
<br><br>Solution:<input type="text" name="solution" required><br>
<br><button type="submit">Submit</button>
</form>
</center>
</body>
</html>