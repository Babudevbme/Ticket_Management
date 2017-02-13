<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Register</title>
</head>
<body>
	<form action="/empregister" method="get">
		Name :<input type="text" name="name" autofocus required> Email
		Id :<input type="email" name="emailId" required> 
		Password :<input type="password" name="password" required> 
		Department : <select name="deptId">
			<option value="1">Finance</option>
			<option value="2">HR</option>
		</select> EmployeeRole :<select name="roleId">
			<option value="1">HR</option>
			<option value="2">Manager</option>
			<option value="3">Trainer</option>
			<option value="4">Employee</option>
		</select>
		<button style="background-color: yellow;" type="submit">Submit</button>

	</form>
</body>
</html>