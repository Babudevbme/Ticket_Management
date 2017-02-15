<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body style="text-align:center" >
<h2>User Login</h2><hr>
	<form action="../userLogin" method="get" >

		<br>EmailId : <input  type="text" name="emailid" required autofocus /><br>
	   <br> Password : <input type="password" name="password" required /><br>
		<br><button type="submit">Submit</button>

	</form>
           ${ERROR_MESSAGE}

</body>
</html>