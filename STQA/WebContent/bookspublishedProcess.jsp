<%@ page import ="java.sql.*" %>

<!---
	create table bookspublished (id int PRIMARY KEY AUTO_INCREMENT, nameofdepartment varchar(100), nameoffaculty varchar(100), nameofsig varchar(100), academicyear varchar(30) , nameofbook varchar(500), isbnissnnumber varchar(100), publisher varchar(500), dateandyearofpublication varchar(50) );

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
    String nameofbook = request.getParameter("nameofbook");
	String isbnissnnumber=request.getParameter("isbnissnnumber");
	String publisher=request.getParameter("publisher");
	String dateandyearofpublication=request.getParameter("dateandyearofpublication");
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into bookspublished (nameofdepartment,nameoffaculty,nameofsig,academicyear,nameofbook,isbnissnnumber,publisher,dateandyearofpublication) values ('"+nameofdepartment+"','" + nameoffaculty + "','" + nameofsig + "','" + academicyear + "','" + nameofbook + "','" + isbnissnnumber + "' , '"+publisher+"', '"+dateandyearofpublication+"' )");
    if (i > 0)
	{
		%>
			<script type="text/javascript">
				alert("Details Saved Successfully..");
				window.location = 'bookspublished.jsp';
			</script>
		<%   
    }
	else
	{
       %>
			<script type="text/javascript">
				alert("Error!!\nPlease try again");
				window.location = 'bookspublished.jsp';
			</script>
		<%
    }
}catch(Exception e)
{
	%>
			<script type="text/javascript">
				alert("Internal Error");
				window.location = 'bookspublished.jsp';
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