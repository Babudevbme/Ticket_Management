<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body style="text-align:center" >
<h2>User Login</h2><hr>
	<form action="userLogin" method="GET">
		<br>EmailId : <input  type="text" name="emailid" required autofocus /><br>
	   <br> Password : <input type="password" name="password" required/><br>
		<br><button style="background-color:yellow" type="submit">Submit</button>

	</form>
           ${ERROR_MESSAGE}

</body>
</html>