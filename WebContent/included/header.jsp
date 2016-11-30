<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="default_lang" value="en_US" scope="session"/>
<fmt:setLocale value="${not empty locale ? locale : default_lang}" scope="session" />
<fmt:setBundle basename="i18n.Bundle" scope="session" />
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
	
	<link rel="stylesheet" type="text/css" href="WebContent/StyleSheet.css" />
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
				<li><a href="LoginPage.jsp">${registernew}</a></li>
				<li><a href="En.jsp">EN</a></li>
				<li>|</li>
				<li><a href="Fr.jsp">FR</a></li>
			</ul>
		</div>
	</nav>
	
</body>
</html>