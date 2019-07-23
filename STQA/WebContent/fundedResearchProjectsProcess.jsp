<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">

<title>Intellectual Property Rights</title>
</head>
<body>


<%
	Connection con = null;
	Statement st=null;	
	ResultSet rs = null;

	try
	{
	   	String nameOfDept			= request.getParameter("nameOfDept");
	    String nameOfFaculty 		= request.getParameter("nameOfFaculty");
	    String sigOfDept	 		= request.getParameter("sigOfDept");
	    String typeOfProposal 		= request.getParameter("typeOfProposal");
	    String role 				= request.getParameter("role");
	    String sanctionedAmount 	= request.getParameter("sanctionedAmount");
	    String receivedAmount 		= request.getParameter("receivedAmount");
	    String utilizedAmount 		= request.getParameter("utilizedAmount");
	    String sponsoringAgency 	= request.getParameter("sponsoringAgency");	
	    String titleofproject 		= request.getParameter("titleofproject");
	    String fromDate 			= request.getParameter("fromDate");
	    String toDate 				= request.getParameter("toDate");
	    String academicYear 		= request.getParameter("academicYear");
	    String collaborationWith 	= request.getParameter("collaborationWith");
	    String status 				= request.getParameter("status");
		String numberOfResearchPaper= request.getParameter("numberOfResearchPaper");
		String ipr 					= request.getParameter("ipr");
		String books 				= request.getParameter("books");
	    
		//create table fundedresearchprojects (nameOfDept varchar(30),nameOfFaculty varchar(30),sigOfDept varchar(30),typeOfProposal varchar(30),role varchar(30),sanctionedAmount varchar(30),receivedAmount varchar(30),utilizedAmount varchar(30),sponsoringAgency varchar(30),titleofproject varchar(30),fromDate varchar(30),toDate varchar(30),academicYear varchar(30),collaborationWith varchar(30),status varchar(30),numberOfResearchPaper varchar(30),ipr varchar(30),books varchar(30) );	
	    Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RND","root","root");
		st = con.createStatement();
	    
		int i = st.executeUpdate("insert into fundedresearchprojects (nameOfDept, nameOfFaculty, sigOfDept, typeOfProposal, role, sanctionedAmount, receivedAmount, utilizedAmount, sponsoringAgency, titleofproject,fromDate,toDate,academicYear,collaborationWith,status,numberOfResearchPaper,ipr,books) values ('" + nameOfDept + "','" + nameOfFaculty + "','" + sigOfDept + "','" +  typeOfProposal + "','" + role + "','" + sanctionedAmount + "','" + receivedAmount + "','" + utilizedAmount + "','" + sponsoringAgency + "','" + titleofproject + "','" + fromDate + "','" + toDate + "','" + academicYear + "','" + collaborationWith + "','" + status + "','" + numberOfResearchPaper + "','" + ipr + "','" + books + "')");
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
	
	
	

%>

</body>

</html>