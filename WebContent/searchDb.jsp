<%@ page import="java.sql.*"%>
<%
//remember to change the database and queires to follow the final schema!

String searchInput = request.getParameter("searchInput");
String typeToSearch = request.getParameter("TypeToSearch");
boolean status = false;
Connection connnection = null;
PreparedStatement st = null;
ResultSet rs = null;

String sqlDoctor = "select * from user_table where (firstName=? OR lastName=?)";
//String sqlDoctor = "SELECT DISTINCT(?) FROM mytable WHERE firstName LIKE '%?%' OR lastName LIKE '%?%'";
String sqlLocation = "select * from adress where name=?";

String name = request.getParameter("name");

try {
	Class.forName("com.mysql.jdbc.Driver");
	connnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root", "Mifa1588");
	if(typeToSearch.matches("Doctor")) {
		String[] firstlast = searchInput.split("\\s+", 2);
		String firstName = firstlast[0];
		String lastName = firstlast[1];
		st = connnection.prepareStatement(sqlDoctor);
		st.setString(1, firstName);
		st.setString(2, lastName);
		rs = st.executeQuery();
	}
	else if(typeToSearch.matches("Location"))
		st = connnection.prepareStatement(sqlLocation);
	else
	{
		//shit hit the fan
	}
	%>
	<html>
	<body>
	<table border="1">
	<% while (rs.next()) {
        String firstName = rs.getString("firstName");
        String lastName = rs.getString("lastName");
        String email = rs.getString("email");
        %>
        <tr>
        <td><%= firstName %></td>
        <td><%= lastName %></td>
        <td><%= email %></td>
        </tr>
    <% } %>
	</table>
	</body>
	<a href='HomePage.jsp'>Go to Login page</a>
	</html>
	<% 
}catch (Exception e) {
	System.out.println(e);
} finally {


}

%>
<html>
<body>
</body>
<a href='HomePage.jsp'>Go to Login page</a>
</html>