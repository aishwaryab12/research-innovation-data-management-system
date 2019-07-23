<%@ page import ="java.sql.*" %>


<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
try
{
    String nameOfFaculty = request.getParameter("nameOfFaculty");
	String typeOfProgramme = request.getParameter("typeOfProgramme");
	String relevance = request.getParameter("relevance");
    String sponsor = request.getParameter("sponsor");
	String fundsR=request.getParameter("fundsR");
	String fundsU=request.getParameter("fundsU");
	String fundsG=request.getParameter("fundsG");
	String titleOfProgramme=request.getParameter("titleOfProgramme");
	String dateFrom=request.getParameter("dateFrom");
	String dateTo=request.getParameter("dateTo");
	String noOfParticipants=request.getParameter("noOfParticipants");
	String aud="";  
	
	String audience[]=request.getParameterValues("audience");
	for(int i=0;i<audience.length;i++)
	{
		aud=aud+audience[i]+"  ";
	}
	String res="";
	String resource[]=request.getParameterValues("resource");

	for(int i=0;i<resource.length;i++)
	{
		res=res+resource[i]+"  ";
	}
	


	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","root");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into workshop (nameoffaculty,programtype,relevance,sponsor,fundsr,fundsu,fundsg,title,durationfrom,durationto,participants,audience,resource) values ('" + nameOfFaculty + "','" + typeOfProgramme + "','" + relevance + "','" + sponsor + "','" + fundsR + "' , '"+fundsU+"','"+fundsG+"','"+titleOfProgramme+"','"+dateFrom+"','"+dateTo+"','"+noOfParticipants+"','"+aud+"','"+res+"');");
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