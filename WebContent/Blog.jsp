<%@page import="java.util.Date"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


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
input.submitComment {
    width: 30em;  height: 2em;
}
#rcorners {
    border-radius: 25px;
    border: 4px solid #73AD21;
    padding: 20px; 
    width: 900px;
    height: 300px;    
}
</style>
</head>
<body>

<%@ include file="included/header.jsp" %>

<div class="media" id="rcorners">
  	<div class="media-left">
		<img src="avatar.png" class="media-object" style="width:200px">
	</div>
	<div class="media-body">
    	<h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
    	<p>Lorem ipsum dolor sit amet, sed do eiut labore et dolore magna aliqua. Epsilon apples covered in bacon wrapped pancakes.</p>
	</div>
</div>

<!-- <center>
	<p>
	<img src="Medibase.png" alt="Medi Image" />
	</p>
	<br />
</center>
 -->
<%
boolean status = false;
Connection connnection = null;
PreparedStatement st = null;
ResultSet rs = null;
Date d = new Date();
String dd = d.toString();

//String posterId = request.getParameter("originalPoster"); //NEEDS TO BE SET TO THE ORIGINAL POSTER ID
String sqlPosts = "select * from userposts_table"; //where doctorMedical_id = //"+posterId;
List<Object> dataList=new ArrayList<Object>();
try {
	Class.forName("com.mysql.jdbc.Driver");
	connnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root", "Mifa1588");	
	st = connnection.prepareStatement(sqlPosts);
	rs = st.executeQuery();
	//status = rs.next();
	while (rs.next()){
		//dataList.add(rs.getInt("post_id"));
		//dataList.add(rs.getInt("doctorMedical_id"));
		dataList.add(rs.getString("username"));
		dataList.add(rs.getString("datePosted"));
		dataList.add(rs.getString("content"));
	}
	request.setAttribute("data",dataList);
	
}catch (Exception e) {
	System.out.println(e);
} finally {
	
}
%>
<!-- Media top 
<div class="media">
  	<div class="media-left media-top">
		<img src="avatar.png" class="media-object" style="width:60px">
	</div>
	<div class="media-body">
    	<h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
    	<p>Lorem ipsum dolor sit amet, sed do eiut labore et dolore magna aliqua.</p>
	</div>
</div>
-->


<%Iterator itr;%>
<% List data= (List)request.getAttribute("data");
for (itr=data.iterator(); itr.hasNext(); )
{
%>
<div class="media">
  	<div class="media-left media-top">
		<img src="WebContent/imgResource/s.png" class="media-object" style="width:60px">
	</div>
	<div class="media-body">
    	<h4 class="media-heading"><%=itr.next()%> <small><i>Posted on <%=itr.next()%></i></small></h4>
    	<div class="FormLabel" style="width:800px; word-wrap:break-word;" >
    	<p><%=itr.next()%></p>
    	</div>
	</div>
</div>

<%}%>



	<br/><br/>
	<form id="standard-Comment" action="Post.jsp" method="post">
		<input type="hidden" value="<%= dd %>" name="datePosted" />
		Your Name or Anonymous Username : <br/>
		<input name="namecommenter" class="required" type="text" id="namecommenter"></input> <br/> <br/>
		Comment About This Doctor : <br/>
		<textarea name="comment" class="required" id="comment" rows="5" cols="50" maxlength="250"></textarea> <br/>
		<br/><input id="submitComment" type="submit" value="Submit" />
	</form>
	

	<hr />
</body>