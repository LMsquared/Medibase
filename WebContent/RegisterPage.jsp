<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<style>
body {
	background-color: #E0F8F5;
}

#standard-Registration {
	text-align: left;
	width: 250px;
}

#standard-Registration input {
	text-align: left;
	width: 100%;
}

#standard-Registration #submitButton {
	text-align: left;
	width: 50%;
}
</style>

<title>Sign Up</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">Medibase</a>
		</div>
		<ul class="nav navbar-nav">
			<fmt:message key="home" var="home" />
			<fmt:message key="findmd" var="findmd" />
			<fmt:message key="registernew" var="registernew" />
			<li class="active"><a href="HomePage_V2.jsp">${home}</a></li>
			<li><a href="findMD.jsp">${findmd}</a></li>
			<li><a href="HomePage.jsp">${registernew}</a></li>
			<li><a href="En.jsp">EN</a></li>
			<li>|</li>
			<li><a href="Fr.jsp">FR</a></li>
		</ul>
	</div>
	</nav>

	<hr />
	<center>
	<p>
		<img src="Medibase.png" alt="Medi Image" />
	</p>
	<fmt:message key="registermessage" var="registermessage" />
	<p>${registermessage}</p>
	<br />
	<form id="standard-Registration" action="RegWelcome.jsp" method="post">
		<div class="form-group">
			<fmt:message key="email" var="email" />
			<fmt:message key="username" var="username" />
			<input placeholder="${email}" type="text" class="form-group" id="email" name="email" /><br />
			<input placeholder="${username}" type="text" class="form-group" id="user" name="user" /><br />
		</div>
		<div class="form-group">
			<fmt:message key="password" var="password" />
			<fmt:message key="pconfirm" var="pconfirm" />
			<fmt:message key="register" var="register" />
			<input placeholder="${password}" type="password" class="form-group" id="pwrod" name="pword" /> <br /> 
			<input placeholder="${pconfirm}" type="password" class="form-group" id="pwrodc" name="pwordc" /> <br /> <br /> <br /> 
			<input id="submitButton" type="submit" value="${register}" />
		</div>
	</form>
	</center>
</body>
</html>