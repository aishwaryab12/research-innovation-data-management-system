<%@ page import ="java.sql.*" %>

<---
	create table professionalmembership (id int PRIMARY KEY AUTO_INCREMENT, nameofdepartment varchar(100), nameoffaculty varchar(100), nameofsig varchar(100), academicyear varchar(30) , nameofbodyagency varchar(500), role varchar(500), membershipfrom varchar(50), membershipto varchar(50), membershipnumber varchar(100) );

--->

<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;

try
{
    String nameofdepartment = request.getParameter("nameofdepartment");
    String nameoffaculty = request.getParameter("nameoffaculty");
	String nameofsig = request.getParameter("nameofsig");
	String academicyear = request.getParameter("academicyear");
    String nameofbodyagency = request.getParameter("nameofbodyagency");
	String role=request.getParameter("role");
	String membershipfrom=request.getParameter("membershipfrom");
	String membershipto=request.getParameter("membershipto");
	String membershipnumber=request.getParameter("membershipnumber");

	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into professionalmembership (nameofdepartment,nameoffaculty,nameofsig,academicyear,nameofbodyagency,role,membershipfrom,membershipto,membershipnumber) values ('"+nameofdepartment+"','" + nameoffaculty + "','" + nameofsig + "','" + academicyear + "','" + nameofbodyagency + "','" + role + "' , '"+membershipfrom+"', '"+membershipto+"', '"+membershipnumber+"' )");
    if (i > 0)
	{
		%>
			<script type="text/javascript">
				alert("Details Saved Successfully..");
				window.location = 'professionalmembership.jsp';
			</script>
		<%   
    }
	else
	{
       %>
			<script type="text/javascript">
				alert("Error!!\nPlease try again");
				window.location = 'professionalmembership.jsp';
			</script>
		<%
    }

}catch(Exception e)
{
	%>
			<script type="text/javascript">
				alert("Internal Error");
				window.location = 'professionalmembership.jsp';
			</script>
		<%
}
finally
{
	try{
		if(rs!=null)
			rs.close();
		if(st!=null)
			st.close();
		if(con!=null)
			con.close();		
		
	}catch(SQLException sqle){}
}
	
%>