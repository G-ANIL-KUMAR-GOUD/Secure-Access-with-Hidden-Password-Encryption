<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Permission</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 15px}
.style6 {color: #FFFFFF}
.style8 {color: #FF0000; font-weight: bold; }
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
          <li><a href="endUserLogin.html">Client</a></li>
          <li><a href="dataOwnerLogin.html"></a></li>
          <li class="active"><a href="webServerLogin.html">WebServer</a></li>
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
          <h2><span>Permission To User... </span></h2>
          <div class="clr"></div>
          
       
          <div class="clr"></div>
          <p>
		  <table width="572" border="1" align="center"  cellpadding="0" cellspacing="0" >
          <tr>
              <td width="92" height="34" bgcolor="#FF0000"><div align="center" class="style6 style4 color1"><strong>User Name </strong></div></td>
              <td width="138" bgcolor="#FF0000"><div align="center" class="style6 style4 color1"><strong>Search Permission </strong></div></td>
              <td width="165" bgcolor="#FF0000"><div align="center" class="style6 style4 color1"><strong>Download Permission </strong></div></td>
              <td width="167" bgcolor="#FF0000"><div align="center" class="style6 style4 color1"><strong>Owner Permission</strong></div></td>
          </tr>
		  
		<%@ include file="connect.jsp" %>
        <%	  
	    String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;

      	try 
   	    {	 	
			
			
	  		String user = request.getParameter("usr");
			String search = request.getParameter("select");
			String download = request.getParameter("select2");
			
			String query1="update request set search='"+search+"',download='"+download+"' where user='"+user+"'"; 
			Statement st1=connection.createStatement();
			st1.executeUpdate(query1);
			
			
      		String query="select * from request"; 
           	Statement st=connection.createStatement();
           	ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			   {
				s2=rs.getString(2);
				s3=rs.getString(3);
				s4=rs.getString(4);
				s5=rs.getString(5);
				
				
				%>
			<tr>
              <td height="27"><div align="center" class="style8"><%=s2%></div></td>
              <td><div align="center" class="style8"><%=s3%></div></td>
              <td><div align="center" class="style8"><%=s4%></div></td>
              <td><div align="center" class="style8"><%=s5%></div></td>
            </tr>
             <%
	          }
			  %>
			  <tr>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  </tr>
			  <%
			  
	 		connection.close();
				  }
				  catch(Exception e)
				  {
					out.println(e.getMessage());
				  }
		      %>
          </table> 
          </p>
          
                    <p align="right"><a href="serverPermission.jsp">Back</a></p>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="webServerMain.jsp">Server Main</a></li>
			<li><a href="webServerLogin.html">Log Out</a></li>
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
