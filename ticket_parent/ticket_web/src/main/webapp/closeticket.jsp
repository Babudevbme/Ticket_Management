<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head >
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="//d85wutc1n854v.cloudfront.net/live/css/screen_preview_legacy.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Close Ticket</title>
</head>
<h3>Close Ticket</h3>
 <h4 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h4><hr>
<br>
<body style="text-align:center">
<form action="../closeticket" method="get">
Ticket Id:<input type="number" name="ticketid"  required autofocus>
<input type="hidden" name="userid" required value="${login.id}" ><br>
<br><h4> <button style="background-color:yellow" type="submit" >submit</button> </h4>
</form>

</body>
</html>