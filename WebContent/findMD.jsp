<!DOCTYPE html>
<html lang="en">
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

<%@ include file="included/header.jsp" %>

<link rel="stylesheet" type="text/css" href="StyleSheet.css" />


</head>
<body>


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
	
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br />

</body>

	<%@ include file="Footer.jsp"%>

</html>

