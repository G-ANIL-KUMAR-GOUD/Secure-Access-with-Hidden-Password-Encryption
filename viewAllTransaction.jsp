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
.style7 {font-size: 15px; color: #2cadff; }
.style8 {color: #2cadff}
.style10 {
	color: #FFFFFF;
	font-weight: bold;
}
.style12 {font-size: 15px; color: #FFFFFF; font-weight: bold; }
.style13 {font-size: 14px; color: #FF0000; }
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
          <li><a href="projectDetails.html">t</a></li>
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
          <h2><span>All <span class="style8">Clients </span>And <span class="style8"></span> Transactions... </span></h2>
          <div class="clr"></div>
          
       
          <div class="clr"></div>
          <p>
  <table width="626" border="1" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td width="54" height="31" bgcolor="#FF0000"><div align="center" class="style7 style10"><span class="style4">SI NO </span></div></td>
    <td width="115" height="31" bgcolor="#FF0000"><div align="center" class="style12"><span class="style4">User Name </span></div></td>
    <td width="123" bgcolor="#FF0000"><div align="center" class="style12"><span class="style4">File Name </span></div></td>
    <td width="124" bgcolor="#FF0000"><div align="center" class="style12"><span class="style4">Secret Key </span></div></td>
    <td width="88" bgcolor="#FF0000"><div align="center" class="style12"><span class="style4">Operation</span></div></td>
    <td width="108" bgcolor="#FF0000"><div align="center" class="style12"><span class="style4">Date & Time</span></div></td>
  </tr>
  <%@ include file="connect.jsp" %>
  <%
  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

    try 
	  {
      	String query="select * from Transaction "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
	  while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		%>

  <tr>
     <td height="29"><div align="center" class="style13"><%=i%></div></td>
     <td height="29"><div align="center" class="style13"><%=s2%></div></td>
     <td><div align="center" class="style13"><%=s3%></div></td>
     <td><div align="center" class="style13"><%=s4%></div></td>
	 <td><div align="center" class="style13"><%=s5%></div></td>
	 <td><div align="center" class="style13"><%=s6%></div></td>
  </tr>

<%
	   }
%>     <tr>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
		 <td  valign="baseline" height="0">&nbsp;</td>
		 <td  valign="baseline" height="0">&nbsp;</td>
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
          
                    <p align="right">&nbsp;</p>
                    <p align="right">&nbsp;</p>
                    <p align="right">&nbsp;</p>
                    <p align="right"><a href="webServerMain.jsp">Back</a></p>
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
