<%@ page import ="java.sql.*" %>

<---
create table Collboration (id int PRIMARY KEY AUTO_INCREMENT,nameofdepartment varchar(100),nameoffaculty varchar(200),nameofsig varchar(100),academicyear varchar(20),interaction varchar(300),topic varchar(300),tar_aud varchar(300),no_of_participant varchar(20),venue varchar(100),program_date varchar(30)); 
--->

<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
try
{
    String nameofdepartment = request.getParameter("nameofdepartment");
    String nameoffaculty = request.getParameter("nameoffaculty");
	String nameofsig = request.getParameter("sigofdep");
	String academicyear = request.getParameter("acadyear");
    String interactiontype=request.getParameter("interactiontype");
    String topic=request.getParameter("topics");
    String TargetAud=request.getParameter("targetaudience");
    String noofparticipants=request.getParameter("noofparticipants");
    String venue=request.getParameter("nameoffaculty");
    String prog_date=request.getParameter("programdate");
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into Collboration (nameofdepartment,nameoffaculty,nameofsig,academicyear,interaction,topic,tar_aud,no_of_participant,venue,program_date) values ('"+nameofdepartment+"' , '" + nameoffaculty + "' , '" + nameofsig + "' , '" + academicyear + "' , '" + interactiontype + "' , '" + topic + "' , '"+TargetAud+"' , '"+noofparticipants+"' , '"+venue+"' , '"+prog_date+"' );");
    if (i > 0)
	{
		%>
			<script type="text/javascript">
				alert("Details Saved Successfully..");
				window.location = 'Collaboration.jsp';
			</script>
		<%   
    }
	else
	{
       %>
			<script type="text/javascript">
				alert("Error!!\nPlease try again");
				window.location = 'Collaboration.jsp';
			</script>
		<%
    }
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