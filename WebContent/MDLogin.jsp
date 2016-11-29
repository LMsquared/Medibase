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
	

<title>MD Login</title>
</head>
<body>

<link rel="styleSheet" href="WebContent/StyleSheet.css">

<%@ include file="header.jsp" %>

	<center>

		<p>
			<img src="md.png" alt="md Image" />
		</p>

		<br />
		<form class="standard-Registration" action="MDLoginAction.jsp" method="post">
			<div class="form-group">
				<input placeholder="Email or UserName" type="text" name="emailuser" />
				<br />
				<br /> 
				<input placeholder="Password" type="password" name="password" />
				<br /> 
				<br /> 
				<input placeholder="Employee Number" type="text" name="employee" />
				<br /> 
				<br /> 
				<input id="submitButton" type="submit" value="Login" />
		</form>
		<br />
		<br />
		<form action="RegisterPage.jsp" method="post">
			<input id="submitButton" type="submit" value="Register" />
			</div>
		</form>
	</center>



	<hr />
</body>