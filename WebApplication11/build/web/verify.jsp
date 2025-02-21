<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Main Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {color: #1f7fbb}
.style2 {color: #FF0000}
.style4 {font-size: 16px}
.style5 {font-size: 15px}
.style7 {color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="dataOwnerLogin.html"></a></li>
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
	
          <h2><span>Attacked Files List <span class="style1"></span></span></h2>
          <div class="clr"></div>
         
          
          <div class="clr"></div>
          <p> <table width="639" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="53" height="38"><div align="center" class="color1 color1 style5 style7 style4 style1">File No</div></td>
    <td width="100" height="38"><div align="center" class="color1 color1 style5 style7 style4 style1">File Name </div></td>
    <td width="102" height="38"><div align="center" class="color1 color1 style5 style7 style4 style1">Attacker</div></td>
	<td width="79" height="38"><div align="center" class="color1 color1 style5 style7 style4 style1">Rank</div></td>
    <td width="117"><div align="center" class="color1 color1 style5 style7 style4 style1">Date & Time</div></td>
	 <td width="174"><div align="center" class="color1 color1 style5 style7 style4 style1">Verification</div></td>
  </tr>
		 
 <%@ include file="connect.jsp" %>
 <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",i="";
	int j=0,k=0;

      	try 
	{
        
          
      		String owner=(String)application.getAttribute("owner");
      		String query1="select * from webserver where owner='"+owner+"'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
		
	while( rs1.next() )
	   {
		 i=rs1.getString(1);
		 s5=rs1.getString(8);
	
  
            String query2="select * from attacker where id='"+i+"'"; 
            Statement st2=connection.createStatement();
            ResultSet rs2=st2.executeQuery(query2);
		   
	
		   
	if( rs2.next() )
	   {
	   
	  
	   s1=rs2.getString(2);
	   s2=rs2.getString(3);
	   s3=rs2.getString(4);
	   s4=rs2.getString(5); 
	   s6=rs2.getString(6);
	 
		   
		%>

  <tr>
      <td height="41"><div align="center" class="style2 style5 style8"><strong><%=i%></strong></div></td>
      <td height="41"><div align="center" class="style2 style5 style8"><strong><%=s2%></strong></div></td>
	  <td height="41"><div align="center" class="style2 style5 style8"><strong><%=s1%></strong></div></td>
	   <td height="41"><div align="center" class="style2 style5 style8"><strong><%=s5%></strong></div></td>
      <td><div align="center" class="style2 style5 style8"><strong><%=s6%></strong></div></td>
	  <td>
	  <p class="style7">Based on <span class="style2"><a href="verify1.jsp?data=<%="u"%>&url=<%=s4%>&i=<%=i%>"> URL</a></span> </p>
	  <p class="style7">Based on <span class="style2"><a href="verify1.jsp?data=<%="t"%>&td=<%=s3%>&i=<%=i%>"> Digital Artifacts</a></span> </p>	  </td>
  </tr>

<%
	   }
	   
	   else
	   {
	   %>
	   <h3>No Attackers Found</h3>
	   
	   <%
	 }
}
           connection.close();
       
         }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
		</p>
					
          
         
        <p><a href="dataOwnerMain.jsp">Back</a></p>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">

            <li><a href="dataOwnerMain.jsp">Owner Main</a></li>
            <li><a href="dataOwnerLogin.html">Log Out</a></li>
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
