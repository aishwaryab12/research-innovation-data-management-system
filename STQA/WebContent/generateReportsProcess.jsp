<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.util.*" %>

<% 
	Connection con=null;
	Statement st=null;	
	ResultSet rs = null;
	FileWriter fileWriter = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pccoe_webapp","root","pratik");
	st = con.createStatement();


    String reporttype = request.getParameter("report");
	String headers = "",row;
	fileWriter = new FileWriter("C:/Users/Alvis/Desktop/"+reporttype+".csv");
	
	rs=st.executeQuery("select * from "+reporttype);
	ResultSetMetaData rsmd = rs.getMetaData();
	int columncount = rsmd.getColumnCount();
	
	
	for(int i=1;i<=columncount;i++)
		headers=headers+","+rsmd.getColumnName(i);
	
	 fileWriter.append(headers);
	 fileWriter.append("\n");
			
			while(rs.next())
			{
				row="";
				
				for(int i=1;i<=columncount;i++)
					row=row+","+rs.getString(i);
				
				fileWriter.append(row);
				fileWriter.append("\n");
			}
            
}
finally
{
	try{
		if(fileWriter!=null)
		{
				fileWriter.flush();
                fileWriter.close();
		}
				
		if(rs!=null)
			rs.close();
		if(st!=null)
			st.close();
		if(con!=null)
			con.close();		
		
	}catch(SQLException sqle)
	{
		
		out.println("Hello");
	}
}
	
%>