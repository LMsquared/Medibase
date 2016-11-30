<%@ page import="java.sql.*"%>
<%

boolean status = false;
Connection connnection = null;
PreparedStatement st = null;
ResultSet rs = null;
String sqlDoctor = "select * from user_table where (firstName=? OR lastName=?)";
//String sqlDoctor = "SELECT DISTINCT(?) FROM mytable WHERE firstName LIKE '%?%' OR lastName LIKE '%?%'";
String sqlLocation = "select * from adress where name=?";

String name = request.getParameter("name");
String typeToSearch = request.getParameter("TypeToSearch");

try {
	Class.forName("com.mysql.jdbc.Driver");
	connnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root", "Zworld78");
	
	if(typeToSearch.matches("Doctor"))
		st = connnection.prepareStatement(sqlDoctor);
	else if(typeToSearch.matches("Location"))
		st = connnection.prepareStatement(sqlLocation);
	else
	{
		//shit hit the fan
	}
	
	st.setString(1, name);
	
	rs = st.executeQuery();
	status = rs.next();
	
	
}catch (Exception e) {
	System.out.println(e);
} finally {


}





%>