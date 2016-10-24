<%@ page import="java.sql.*"%>
<%
	boolean status = false;
	Connection con = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "select * from accounts where email=? and password=?";
	String email = request.getParameter("email");
	String pword = request.getParameter("password");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root", "Zworld78");
		st = con.prepareStatement(sql);
		st.setString(1, email);
		st.setString(2, pword);

		rs = st.executeQuery();
		status = rs.next();
		if (status == false)
			out.print("<p style=\"color:red\">Sorry email or password incorrect</p> <a href='HomePage.jsp'>Back to Home Page?</a>");
		else
			out.print("<p>Login is Successful. <br /></p> <a href='HomePage.jsp'>Back to Home Page?</a>");

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