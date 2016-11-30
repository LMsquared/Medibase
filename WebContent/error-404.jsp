<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ include file="included/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="WebContent/WEB-INF/styles/main.css" />
	
<title>Error 404 Page Not Found</title>

</head>
<body>

	<h1>
		Error 404 Page Not Found<br />
	</h1>
	<h5>This error is caused by incorrect URL</h5>


	<button type="button" class="btn btn-primary btn-block" id="returnHome">
	Return Home</button>

	<script type="text/javascript">
		document.getElementById("returnHome").onclick = function() {
			location.href = "/Medibase/HomePage_V2.jsp";
		};
	</script>



</body>
<%@ include file="Footer.jsp"%>
</html>