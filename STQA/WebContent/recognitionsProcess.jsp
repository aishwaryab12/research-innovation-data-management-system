<%@ page import ="java.sql.*" %>

<---
	create table recognitions (id int PRIMARY KEY AUTO_INCREMENT, nameofdepartment varchar(100), nameoffaculty varchar(100), nameofsig varchar(100), academicyear varchar(30) , typeofaward varchar(30), recognitionas varchar(500), nameofprofessionalbody varchar(500), url varchar(500) );

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
    String typeofaward = request.getParameter("typeofaward");
	String recognitionas=request.getParameter("recognitionas");
	String nameofprofessionalbody=request.getParameter("nameofprofessionalbody");
	String url=request.getParameter("url");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into recognitions (nameofdepartment,nameoffaculty,nameofsig,academicyear,typeofaward,recognitionas,nameofprofessionalbody,url) values ('"+nameofdepartment+"','" + nameoffaculty + "','" + nameofsig + "','" + academicyear + "','" + typeofaward + "','" + recognitionas + "' , '"+nameofprofessionalbody+"', '"+url+"' )");
    if (i > 0)
	{
		%>
			<script type="text/javascript">
				alert("Details Saved Successfully..");
				window.location = 'recognitions.jsp';
			</script>
		<%   
    }
	else
	{
       %>
			<script type="text/javascript">
				alert("Error!!\nPlease try again");
				window.location = 'recognitions.jsp';
			</script>
		<%
    }

}catch(Exception e)
{
	%>
			<script type="text/javascript">
				alert("Internal Error");
				window.location = 'recognitions.jsp';
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