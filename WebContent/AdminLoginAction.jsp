<%@ page import="java.sql.*"%>
<%


	final int key = 987654;

	boolean status = false;
	Connection con = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	String sqlemail = "select * from user_table where email=? and password=?";
	String sqluser = "select * from user_table where username=? and password=?";
	String emailuser = request.getParameter("Admin ID");
	String pword = request.getParameter("password");
	String AdminKey = request.getParameter("Key");
	
	int employeeKey = Integer.parseInt(AdminKey);
	if(employeeKey != key)
		out.print("<p style=\"color:red\">Incorrect Key</p> <a href='HomePage.jsp'>Back to Home Page?</a>");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root", "Zworld78");
		st = con.prepareStatement(sqlemail);
		st.setString(1, emailuser);
		st.setString(2, pword);
		rs = st.executeQuery();
		status = rs.next();
		if (status == true)
			out.print("<p>Login is Successful. <br /></p> <a href='HomePage.jsp'>Back to Home Page?</a>");
		else {
			st = con.prepareStatement(sqluser);
			st.setString(1, emailuser);
			st.setString(2, pword);
			rs = st.executeQuery();
			status = rs.next();
			if (status == true)
				out.print("<p>Login is Successful. <br /></p> <a href='HomePage.jsp'>Back to Home Page?</a>");
			else
				out.print("<p style=\"color:red\">Sorry email or password incorrect</p> <a href='HomePage.jsp'>Back to Home Page?</a>");
		}	
	} catch (Exception e) {
		System.out.println(e);
	} finally {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
%>