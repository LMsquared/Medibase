<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Find MD</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="WebContent/WEB-INF/styles/main.css" />

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
					<li class="active"><a href="HomePage_V2.jsp">Home</a></li>
					<li><a href="findMD.jsp">Find MD</a></li>
					<li><a href="HomePage.jsp">Register/New Account</a></li>
				</ul>
			</div>
		</nav>

		<div id="searchBar">
			<form class="form-inline" action="searchDb.jsp" method="post">
					<label for="searchInput"></label> 
					<fmt:message key="searchtext" var="searchtext" />
					<input type="text" placeholder="${searchtext}" class="form-control" id="searchInput"> 
					<select name="TypeToSearch">
						<fmt:message key="doctor" var="doctor" /> 
						<fmt:message key="location" var="location" />
						<fmt:message key="specialty" var="specialty" />
						<option value="Doctor">${doctor}</option>
						<option value="Location">${location}</option>
						<option value="Specialty">${specialty}</option>
					</select>
					<div class="container">
					<br />
						<fmt:message key="search" var="search" />
						<button type="submit" class="btn btn-primary">${search}</button>
					</div>
			</form>
		</div>
	</div>

	<footer>
	<br />
	<br />
		<div id="footerDiv">
		<fmt:message key="about" var="about" />
		<a href="AboutUs">${about}</a>
		</div>
	</footer>
</body>
</html>

