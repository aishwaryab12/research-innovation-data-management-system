<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">


	
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>

<%
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();
	
	
%>
	
	


<title>Generate Reports</title>
</head>
<body>

<div class="container">
<jsp:include page="./headers/subheader.jsp" />
<div class="jumbotron">

<h2>PCCOE Research Data</h2>
<br>

<div class="table-responsive">
	<table class="table table-striped table-hover">
	<thead>
		<tr>
			<th> TYPE OF DATA </th>
			<th> GENERATE REPORT </th>
		</tr>
	</thead>
		
	<tbody>
	<form action="generateReportsProcess.jsp">
		
		<tr>
			<td>Arranged Guest Lectures</td>
		    <td> <button type="submit" name="report" value="" class="btn btn-success">Generate Report</button></td>
		</tr>
		
		<tr>
			<td>Books Publication</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="bookspublished">Generate Report</button></td>
		</tr>
		
		<tr>
			<td>Books Chapter Publication</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="bookschapterspublished">Generate Report</button></td>
		</tr>
		
		<tr>
			<td>Citation Index</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="citation">Generate Report</button></td>
		</tr>
		
		
		<tr>
			<td>Collaboration with Outside World</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="researchawards">Generate Report</button></td>
		</tr>
		<tr>
			<td>Funded Research Projects</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="fundedresearchprojects">Generate Report</button></td>
		</tr>
		<tr>
			<td>IPRs</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="researchawards">Generate Report</button></td>
		</tr>
		<tr>
			<td>Professional  Membership</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="professionalmembership">Generate Report</button></td>
		</tr>
		<tr>
			<td>Publications</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="researchawards">Generate Report</button></td>
		</tr>
		<tr>
			<td>Recognitions</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="recognitions">Generate Report</button></td>
		</tr>
		<tr>
			<td>Research Awards</td>
		    <td> <button type="submit" name="report" value="researchawards" class="btn btn-success">Generate Report</button></td>
		</tr>
	
		
		<tr>
			<td>Workshops</td>
		    <td> <button type="submit" class="btn btn-success" name="report" value="researchawards">Generate Report</button></td>
		</tr>
	</form>


	</tbody>	
		
	</table>
</div>

</div>
</div>
	
</body>
</html>