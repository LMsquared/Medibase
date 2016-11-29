<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" type="text/css" href="Initial.css">
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
</style>

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
	<center>
		<p>
			<img src="Medibase.png" alt="Medi Image" />
		</p>

		<br />
		
		<form id="standard-Registration" action="Login.jsp" method="post">
		<div class="form-group">
				<fmt:message key="emailuser" var="emailuser" />
				<input placeholder="${emailuser}" type="text" name="emailuser" />
				<fmt:message key="password" var="password" />
				<br /> <br /> <input placeholder="${password}" type="password" name="password" />
				<fmt:message key="login" var="login" />
				<br /> <br /> <input id="submitButton" type="submit" value="${login}" />
		</form>
		<br /> <br />
		<form action="RegisterPage.jsp" method="post">
			<fmt:message key="register" var="register" />
			<input id="submitButton" type="submit" value="${register}" />
			</div>
		</form>
	</center>


	<hr />
</body>