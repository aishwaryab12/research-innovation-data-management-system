<%@ page import ="java.sql.*" %>
<%
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system123");
   
    Statement st = con.createStatement();
    ResultSet rs;
	
	String username = request.getParameter("username");    
    String password = request.getParameter("password");

	if(username.equals("ADMIN") && password.equals("TnP123"))
	{
        session.setAttribute("username", username);
        response.sendRedirect("adminHomepage.jsp");
	}
	else
	{
				rs = st.executeQuery("select * from volunteers where emailid='" + username + "' and password='" + password + "'");
				if (rs.next()) 
				{
					session.setAttribute("username", username);
					response.sendRedirect("userHome.jsp");
				}
				else 
				{
					%>
					<script type="text/javascript">
						alert("Invalid Credentials!!");
						window.location = 'login.jsp';
					</script>
		<%
				}
	}
	%>

