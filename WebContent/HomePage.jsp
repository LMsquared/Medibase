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
					<li class="active"><a href="HomePage_V2.jsp">Home</a></li>
					<li><a href="findMD.jsp">Find MD</a></li>
					<li><a href="HomePage.jsp">Register/New Account</a></li>
				</ul>
			</div>
		</nav>

<center>

	<p>
		<img src="Medibase.png" alt="Medi Image" />
	</p>

	<br />
	<form action="Login.jsp" method="post">
		Email or Username:<input type="text" name="emailuser" /><br /> <br />
		Password:<input type="password" name="password" /><br /> <br /> <input
			type="submit" value="Login" />
	</form>
	<form action="RegisterPage.jsp" method="post">
		<input type="submit" value="Register" />
	</form>
</center>

<hr />
</body>