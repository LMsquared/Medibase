<!DOCTYPE html>
<html lang="en">
<head>
<title>Medibase Home</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="WebContent/StyleSheet.css"/>

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	absolute-width: 100%;
	absolute-height: 100%;
	margin: auto;
}
</style>

</head>
<body>

	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="patient" data-slide-to="0" class="active"></li>
				<li data-target="medical" data-slide-to="1"></li>
				<li data-target="admin" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<a href="LoginPage.jsp"> <img src="Medibase-wt.png"
						alt="Patient" alt="Medibase logo" absolute-width="100%"
						absolute-height="100%">
					</a>
				</div>

				<div class="item">
					<a href="MDLogin.jsp"> <img src="medical-banner.jpg"
						alt="medical banner" absolute-width="100%" absolute-height="100%">
					</a>
				</div>

				<div class="item">
					<a href="AdminLogin.jsp"> <img src="adminLogo-wt.png"
						alt="admin Logo" absolute-width="100%" absolute-height="100%">
					</a>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<%@ include file="included/header.jsp"%>

		<div id="searchBar">
			<form class="form-inline">
					<label for="searchInput"></label> <input type="text"
						placeholder="Enter Text to Search" class="form-control"
						id="searchInput"> 
					<select>
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
	<br />
	<br />
	
	<%@ include file="included/footer.jsp"%>

	</footer>
</body>
</html>

