<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reply Ticket</title>
</head>
<body style="text-align:center">
<h3>Reply Ticket</h3>
<h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
<form action="../replyticket" method="get">
Ticket Id: <input type="number" name="ticketid" autofocus required><br>
<br><br>Solution :<input type="text" name="solution" required><br>
<br><button type="submit">Submit</button>
</form>
<br><h3>Update Solution</h3><hr>
<form action="../empupdate" method="get">
<br>Ticket Id: <input type="number" name="ticketid" autofocus required><br>
<br><br><input type="hidden" name="empid"  required value="${empLogin.id }"><br>
<br><br>Solution:<input type="text" name="solution" required><br>
<br><button type="submit">Submit</button>
</form>

</body>
</html>