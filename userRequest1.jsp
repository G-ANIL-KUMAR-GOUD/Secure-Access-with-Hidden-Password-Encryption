<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Request To Owner</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style2 {color: #1f7fbb}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">SECURE ACCESS WITH HIDDEN PASSWORD ENCRYPTION</a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li class="active"><a href="endUserLogin.html">Client</a></li>
          <li><a href="dataOwnerLogin.html"></a></li>
          <li><a href="webServerLogin.html">WebServer</a></li>
          <li></li>
		  <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <img src="images/main_img.jpg" alt="" width="972" height="313" style="padding:25px 0;" />
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span> User :<span class="style2"> <%=(String)application.getAttribute("user")%></span></span></h2>
          <div class="clr"></div>
          
        
          <div class="clr"></div>
          
<p>

<%@ include file="connect.jsp" %>

<%

String owner=request.getParameter("usr");
try 
	{
	Statement st=connection.createStatement();
	String user = (String) application.getAttribute("user");
	String per="No";
	
	String query="select * from request where user='"+user+"' and dataowner='"+owner+"'"; 
	ResultSet rs=st.executeQuery(query);
	if (rs.next()==true)
	   {
	   		%>
           
          <h4 class="style3">Request Already Sent. Please Wait For Approval...</h4>
				
          <div align="right"><a href="endUserMain.jsp">Back</a></div>
		  
          <%
		
	   }
	 else
	   {
	   
			st.executeUpdate("insert into  request(user,search,download,ownerper,dataowner) values ('"+user+"','"+per+"','"+per+"','"+per+"','"+owner+"')"); 
			
       	  %>
         
		 
              <h4 class="style3">Request Sent Successfully...</h4>
           
		   
              <div align="right"><a href="endUserMain.jsp">Back</a></div>
           
		   
          <%		
			}	
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
          %>
</p>
		 
		   
		   
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="endUserMain.jsp">User Main </a></li>
            <li><a href="endUserLogin.html">Log Out </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
      <div class="fbg"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
