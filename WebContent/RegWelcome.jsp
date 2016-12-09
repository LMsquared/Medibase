<%@ page import="java.sql.*"%>
<%
	String user = request.getParameter("user");
	String pword = request.getParameter("pword");
	String pwordc = request.getParameter("pwordc");
	String email = request.getParameter("email");
	String sql = "INSERT INTO accounts (email, username, password)" + " VALUES (?, ?, ?)";
	PreparedStatement st = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root",
				"");
		st = con.prepareStatement(sql);
		//ResultSet rs;
		if (pword.compareTo(pwordc) == 0) {
			st.setString(1, email);
			st.setString(2, user);
			st.setString(3, pword);
			int i = st.executeUpdate();
			if (i > 0) {
				//session.setAttribute("userid", user);
				// out.print("Registration is Successful. Please Login Here"+<a href='HomePage.jsp'>Go to Login</a>");
			} else {
				response.sendRedirect("HomePage_V2.jsp");
			}
		} else {
			response.sendRedirect("HomePage_V2.jsp");
		}
	} catch (SQLException e) {
		System.out.print(e);
	} finally {
		if (st != null)
			st.close();
	}
%>
<html>
<p>
	Registration is Successful. <br /> Please Login Here <br />
</p>
<a href='LoginPage.jsp'>Go to Login</a>
</html>