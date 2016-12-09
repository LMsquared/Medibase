<%@ page import="java.sql.*"%>

<%
	String namecommenter = request.getParameter("namecommenter");
	String content = request.getParameter("comment");
	String datePosted = request.getParameter("datePosted");
	int doctorMedical_id = 0;//request.getParameter("doctorMedical_id");// the ID of the post being commented on
	String sql = "INSERT INTO userposts_table (doctorMedical_id, content, username, datePosted)" + " VALUES (?, ?, ?, ?)";
	PreparedStatement st = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medibase", "root",
				"");
		st = con.prepareStatement(sql);
		//ResultSet rs;
		System.out.println("docmed_id : "+doctorMedical_id); //0 = good
		System.out.println("content : "+content);		  //null = bad
		System.out.println("name : "+namecommenter);	  //asdd = good
		System.out.println("date : "+datePosted);		  //d.toString() = bad
		st.setInt(1, doctorMedical_id);
		st.setString(2, content);
		st.setString(3, namecommenter);
		st.setString(4, datePosted);
		int i = st.executeUpdate();
		if (i > 0) {
			//response.sendRedirect("Blog.jsp");
			//session.setAttribute("userid", user);
			// out.print("Registration is Successful. Please Login Here"+<a href='HomePage.jsp'>Go to Login</a>");
		} else {
			response.sendRedirect("HomePage_V2.jsp");
		}
		
		//response.sendRedirect("HomePage.jsp");
		
	} catch (SQLException e) {
		System.out.print(e);
	} finally {
		if (st != null)
			st.close();
	}
%>
<html>
<p>
	${namecommenter}
	Posted Successfully. <br /> Return to DoctorPage <br />
</p>
<a href='Blog.jsp'>Go to DoctorPage</a>
</html>