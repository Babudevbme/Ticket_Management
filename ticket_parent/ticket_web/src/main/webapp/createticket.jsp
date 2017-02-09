<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align:center">
<h1>Ticket Generation</h1><hr><br>
        <form action="../createticket" method="GET">
        User Id : <input type="number" name="userid" required />
		Department:<select name="departmentname">
		<option value="HR">HR</option>
		<option value="Finance">Finance</option>
				</select>
		Subject:<input type="text" name="subject" required />
		Description:<input type="text" name="description"  />
		Priority:<select name="priority">
		<option value="high">High</option>
		<option value="medium">Medium </option>
		<option value="low">Low</option></select>
		<br><br><button style="background-color:yellow;" type="submit">Submit</button>
${error}
	</form>
	<br>ViewTicket :<a href="viewticket.jsp">viewticket</a><br>
	<br>UpdateTicke:<a href="updateticket.jsp">updateticket</a><br>
	<br>CloseTicket :<a href="closeticket.jsp">closeticket</a><br>

</body>
</html>