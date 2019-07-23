<%@ page import ="java.sql.*" %>
<!--create table citation( id int PRIMARY KEY AUTO_INCREMENT,department varchar(80),nameoffaculty varchar(90),signame varchar(100),academicyear varchar(50),googlecitations varchar(90),hindex varchar(50),i10index varchar(50),scopuspapers varchar(50),scopuscitation varchar(90),ebosco varchar(80));
-->
<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
try
{
    String department = request.getParameter("department");
	String nameoffaculty = request.getParameter("nameoffaculty");
	String sigName = request.getParameter("sigName");
    String acaddemicYear = request.getParameter("acaddemicYear");
	String googleCitations=request.getParameter("googleCitations");
	String hIndex=request.getParameter("hIndex");
	String i10Index=request.getParameter("i10Index");
	String scopusPapers=request.getParameter("scopusPapers");
	String scopusCitation=request.getParameter("scopusCitation");
	String ebosco=request.getParameter("ebosco");
	
	



	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into citation (department,nameoffaculty,signame,academicyear,googlecitations,hindex,i10index,scopuspapers,scopuscitation,ebosco) values ('" + department + "','" + nameoffaculty + "','" + sigName + "','" + acaddemicYear + "','" + googleCitations + "' , '"+hIndex+"','"+i10Index+"','"+scopusPapers+"','"+scopusCitation+"','"+ebosco+"');");
    if (i > 0)
	{
		%>
			<script type="text/javascript">
				alert("Details Saved Successfully..");
				window.location = 'publications.jsp';
			</script>
		<%   
    }
	else
	{
       %>
			<script type="text/javascript">
				alert("Error!!\nPlease try again");
				window.location = 'publications.jsp';
			</script>
		<%
    }
}catch(Exception e)
{
	%>
			<script type="text/javascript">
				alert("Internal Error");
				window.location = 'publications.jsp';
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