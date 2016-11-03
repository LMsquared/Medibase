<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<hr />
<p> <img src="Medibase.png" alt="Medi Image" /> </p>
<p>Enter your information below and hit Register to complete your account creation.</p>
<br />
<form action = "RegWelcome.jsp" method="post">
	Email:<input type="text" name="email" /><br />
	<br /> Password:<input type="password" name="pword" /><br />
	<br /> Confirm Password:<input type="password" name="pwordc" /><br />
	<br /> Username:<input type="text" name="user" /><br />
	<br /> <input type="submit" value="Register"/>
</form>
</body>
</html>