<%@ page import ="java.sql.*" %>

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
    String typeofipr=request.getParameter("typeofipr");
    String title_ipr=request.getParameter("titleofipr");
    String ipr_date_applied=request.getParameter("filingdate");
    String statusofipr=request.getParameter("statusofipr");
    String grant_pub=request.getParameter("grant_pub_date");
    String appnumber=request.getParameter("appnumber");
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe","root","mysql");
	st = con.createStatement();
	
	
    int i = st.executeUpdate("insert into IPR (nameofdepartment,nameoffaculty,nameofsig,academicyear,typeofipr,titleofipr,filingdate,statusofipr,grant_pub_date,appnumber) values ('"+nameofdepartment+"' , '" + nameoffaculty + "' , '" + nameofsig + "' , '" + academicyear + "' , '" + typeofipr + "' , '" +title_ipr + "' , '"+ ipr_date_applied +"' , '"+statusofipr+"' , '"+grant_pub+"' , '"+appnumber+"' );");
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