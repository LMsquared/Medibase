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

<%@ include file="included/header.jsp"%>

<link rel="styleSheet" href="WebContent/StyleSheet.css">

</head>
<body>

	
	
	<center>

		<p>
			<img src="Medibase.png" alt="Medi Image" />
		</p>

		<br />
		<form class="standard-Registration" action="Login.jsp" method="post">
			<div class="form-group">
				<input placeholder="Email or UserName" type="text" name="emailuser" /><br />
				<br /> <input placeholder="Password" type="password"
					name="password" /><br /> <br /> <input id="submitButton"
					type="submit" value="Login" />
		</form>
		<br /> 
		<br />
		<form action="RegisterPage.jsp" method="post">
			<input id="submitButton" type="submit" value="Register" />
			</div>
		</form>
		
		<a href="MDLogin.jsp">
   			<input type="button" value="MD Login" />
		</a>
		<br />
	</center>

<%@ include file="included/footer.jsp"%>

	<hr />
</body>