<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<h3>Employee Assign To Ticket</h3>
 <h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
<form action="../assignticket" method="get">
<br>Ticket Id: <input type="number" name="ticketid" autofocus required>
Employee Id: <input type="number" name="empid" required  ><br>
<br><h4> <button style="background-color:yellow" type="submit" >submit</button> </h4>
</form>
<br><br><br><br><br>
<h3>Reassign Employee To Ticket</h3><hr><br>
<form action="../reassignticket" method="get">
Ticket Id: <input type="number" name="ticketid" autofocus required>
Employee Id: <input type="number" name="empid" required  ><br>
<br><h4> <button style="background-color:blue" type="submit" >submit</button> </h4>
</form>
</body>
</html>