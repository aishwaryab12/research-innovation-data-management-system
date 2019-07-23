<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import =  "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>


<%

try
{

String connectionURL = "jdbc:mysql://localhost/pccoe_webapp";
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
Statement st = connection.createStatement();
if(!connection.isClosed())
     out.println("Successfully connected to " + "MySQL server using TCP/IP...");


String dept = request.getParameter("dept_name");

String faculty_name = request.getParameter("nameoffaculty");

String SIG = request.getParameter("sigofdept");


String year = request.getParameter("acadyear");


String topic = request.getParameter("Topic");

String attend = request.getParameter("attendororganize");


String audience = request.getParameter("audience");


int no_of_participents = Integer.parseInt(request.getParameter("participents"));


String date = request.getParameter("date_of_organize");

String resource_person_name = request.getParameter("resource_person_name");

String designation = request.getParameter("designation");

String organization = request.getParameter("organization");

String mob_no = request.getParameter("Mob_no");

String email = request.getParameter("email");


//out.println("email"+email);


int i = st.executeUpdate("insert into Arranged_guest_lecture(dept_name,faculty_name,SIG,academic_year,topic,attend_or_organized,audience,no_of_participents,date,resource_person_name,designation,organization,mobile_no,email) values ('"+dept+"' , '" +faculty_name+ "' , '" +SIG+ "' , '" +year+ "' , '" +topic+ "' , '" +attend + "' , '"+ audience +"' , '"+no_of_participents+"' , '"+date+"', '"+resource_person_name+"' , '"+designation+"' , '"+organization+"' , '"+mob_no+"' , '"+email+"' )");


if(i > 0)
{
	out.println("success");	
}

}
catch(Exception e)
{
	out.println(e);
	e.printStackTrace();
}

%>


<!-- 

mysql> create table Arranged_guest_lecture(dept_name varchar(30),faculty_name va
rchar(30),SIG varchar(30),academic_year varchar(12),topic varchar(40),attend_or_
organized varchar(12),audience varchar(20),no_of_participents integer,date DATE,
resource_person_name varchar(30),designation varchar(30),organization varchar(30
),mobile_no varchar(15),email varchar(40));
 -->


</body>
</html>




