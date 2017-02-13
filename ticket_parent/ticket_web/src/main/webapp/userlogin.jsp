<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body style="text-align:center" >
<h2>User Login</h2><hr>
	<form action="../userLogin" method="get" class="col s12">
	 <div class="row">
        <div class="input-field col s12">
		<br>EmailId : <input  type="text" name="emailid" required autofocus /><br>
		</div>
		</div>
	   <br> Password : <input type="password" name="password" required /><br>
		<br><button class="waves-effect waves-light btn" type="submit">Submit</button>

	</form>
           ${ERROR_MESSAGE}

</body>
</html>