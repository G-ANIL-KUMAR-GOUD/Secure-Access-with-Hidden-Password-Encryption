
<%@ include file="connect.jsp" %>

<%
   	String id=request.getParameter("id");    
	 
  
	 
	
    try{
		
			
			String sql="delete FROM ownerfile where id='"+id+"'";
			connection.createStatement().executeUpdate(sql);
			
				
			String sql1="delete FROM webserver where id='"+id+"'";
			connection.createStatement().executeUpdate(sql1);
			
				
			String sql2="delete FROM attacker where id='"+id+"'";
			connection.createStatement().executeUpdate(sql2);
			
				
			String sql3="delete FROM effectedfiles where id='"+id+"'";
			connection.createStatement().executeUpdate(sql3);
		
		
				
				response.sendRedirect("verify.jsp");
			
		
		
     
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>