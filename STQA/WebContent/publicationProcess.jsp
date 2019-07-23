<%@ page import ="java.sql.*" %>



<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
try
{
    String sigName = request.getParameter("sigName");
    String nameOfFaculty = request.getParameter("nameOfFaculty");
	String nameOfAuthor = request.getParameter("authorName");
	String radio = request.getParameter("radio");
    String publicationType = request.getParameter("publicationType");
	String paperTitle=request.getParameter("paperTitle");
	String journalName=request.getParameter("journalName");
	String link=request.getParameter("link");
	String nameOfPublisher=request.getParameter("nameOfPublisher");
	String venue=request.getParameter("venue");
	String issnNumber=request.getParameter("issnNumber");
	String volumeNumber=request.getParameter("volumeNumber");
	String fromPage=request.getParameter("fromPage");
	String toPage=request.getParameter("toPage");
	String yearOfPublication=request.getParameter("yearOfPublication");
	String dateFrom=request.getParameter("dateFrom");
	String dateTo=request.getParameter("dateTo");
	String impactFactor=request.getParameter("impactFactor");
	String citationCount=request.getParameter("citationCount");
	String scopusIndex=request.getParameter("scopusIndex");
	String snip=request.getParameter("snip");
	String sjrRank=request.getParameter("sjrRank");
	String indexby=request.getParameter("indexby");
	String academicYear=request.getParameter("academicYear");


	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","root");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into publications (signame,nameoffaculty,nameofauthor,studentsinvolved,publicationtype,titleofpaper,nameofjournal,link,nameofpublisher,venue,issn,volumenumber,pagefrom,pageto,monthyear,durationfrom,durationto,impactfactor,citationcount,scopusindex,snip,sjrrank,indexby,academicyear) values ('"+sigName+"','" + nameOfFaculty + "','" + nameOfAuthor + "','" + radio + "','" + publicationType + "','" + paperTitle + "' , '"+journalName+"','"+link+"','"+nameOfPublisher+"','"+venue+"','"+issnNumber+"','"+volumeNumber+"','"+fromPage+"','"+toPage+"','"+yearOfPublication+"','"+dateFrom+"','"+dateTo+"','"+impactFactor+"','"+citationCount+"','"+scopusIndex+"','"+snip+"','"+sjrRank+"','"+indexby+"','"+academicYear+"' );");
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