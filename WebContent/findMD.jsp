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

<link rel="stylesheet" type="text/css" href="WebContent/StyleSheet.css" />


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
			<label for="searchInput"></label> <input name="name" type="text"
				placeholder="Enter Text to Search" class="form-control"
				id="searchInput"> <select name="TypeToSearch">
				<option value="Doctor">Doctor</option>
				<option value="Location">Location</option>
				<option value="Specialty">Specialty</option>
			</select>
			<div class="container">
				<br />
				<button type="submit" class="btn btn-primary">Search</button>
			</div>
		</form>
	</div>
	</div>
	
	
	<footer>
		<br /> <br />
		<div id="footerDiv">
			<a href="AboutUs">About Us</a>
		</div>
	</footer>
</body>
</html>

