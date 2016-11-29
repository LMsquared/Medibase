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

<link rel="styleSheet" href="WebContent/StyleSheet.css">

	<%@ include file="header.jsp"%>
<style>

body {
	background-color: #79F373;
}

</style>

</head>
<body>


	
	<center>

		<p>
			<img src="Admin.png" alt="Admin Image" />
		</p>

		<br />
		<form class="standard-Registration" action="AdminLoginAction.jsp" method="post">
			<div class="form-group">
			<input placeholder="Admin Key" type="number" name="Key" />
					<br /> 
					<br /> 
				<input placeholder="Admin ID" type="text" name="Admin ID" /><br />
				<br /> <input placeholder="Password" type="password"
					name="password" />
					<br /> 
					<br /> 
					<input id="submitButton" type="submit" value="Login" />
		</form>
		<br /> <br />
		<form action="RegisterPage.jsp" method="post">
			<input id="submitButton" type="submit" value="Register" />
			</div>
		</form>
		
	</center>



	<hr />
</body>