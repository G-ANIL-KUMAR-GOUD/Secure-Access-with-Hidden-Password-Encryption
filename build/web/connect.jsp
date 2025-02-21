<%@ page import="java.sql.*"%>

<%
	Connection connection = null;
 	try {
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/enp?zeroDateTimeBehavior=convertToNull [root on Default schema]","root","root");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>