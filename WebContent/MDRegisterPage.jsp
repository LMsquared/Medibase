<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="included/header.jsp" %>


<title>Sign Up</title>
</head>
<body>

	<hr />
	<center>
	<p>
		<img src="imgResource/md.png" alt="md Image" />
	</p>
	<p>Enter your information below and hit Register to complete your
		account creation.</p>
	<br />
	<form id="standard-Registration" action="MDReg.jsp" method="post">
		<div class="form-group">
				<input placeholder="Employee Number" type="text" name="employee" />
										<br /> 
				<br /> 
			<input placeholder="Email" type="text" class="form-group" id="email" name="email" /><br />
			<input placeholder="UserName" type="text" class="form-group"
				id="user" name="user" /><br />
		</div>
		<div class="form-group">
			<input placeholder="PassWord" type="password" class="form-group"
				id="pwrod" name="pword" /><br /> <input type="password"
				placeholder="Confirm PassWord" class="form-group" id="pwrodc"
				name="pwordc" /><br /> <br /> <br /> <input id="submitButton"
				type="submit" value="Register" />
		</div>
	</form>
	</center>

</body>
<%@ include file="Footer.jsp"%>
</html>