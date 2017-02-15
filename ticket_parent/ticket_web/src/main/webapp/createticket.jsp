
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="//d85wutc1n854v.cloudfront.net/live/css/screen_preview_legacy.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Insert title here</title>
</head>
<body style="text-align: center">

	<h1>Ticket Generation</h1>
    <h3 style="text-align:right;">Logout: <a href="../logout" >Logout</a></h3><hr>
	
	<br>
	<form action="../createticket" method="GET">
		 <input type="hidden" name="userid" placeholder="user Id"required value="${login.id }" /> 
		Department:<select name="departmentname">
			<option value="HR">HR</option>
			<option value="Finance">Finance</option>
		</select> 
		Subject:<input type="text" name="subject" required placeholder="subject" /> 
		Description:<input type="text" name="description" placeholder="description" /> 
		Priority:<select name="priority">
			<option value="high">High</option>
			<option value="medium">Medium</option>
			<option value="low">Low</option>
		</select> <br> <br>
		<h3><button style="background-color: yellow;" type="submit">Submit</button></h3>
		${error}
	</form>
	<br>ViewTicket :<a href="viewticket.jsp">viewticket</a>
	<br>
	<br>UpdateTicke:<a href="updateticket.jsp">updateticket</a>
	<br>
	<br>CloseTicket :<a href="closeticket.jsp">closeticket</a>
	<br>

</body>
</html>