<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Data Owner</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 15px}
.style2 {color: #2cadff}
.style3 {color: #FF0000}
.style4 {color: #FF0000; font-weight: bold; }
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
          <h2><span>All s... </span></h2>
          <div class="clr"></div>
          
       
          <div class="clr"></div>
          <p><table width="614" border="1" cellpadding="0" cellspacing="0">
          <tr>
              <td width="57" height="38"><div align="center" class="style1 style2"><span class="style3">SN </span></div></td>
			  <td width="143" height="38"><div align="center" class="style1 style2"><span class="style3">Owner Name</span></div></td>
              <td width="179" height="38"><div align="center" class="style1 style2"><span class="style3">File Name</span></div></td>
              <td width="80"><div align="center" class="style1 style2"><span class="style3">Rank</span></div></td>
              <td width="143"><div align="center" class="style1 style2"><span class="style3">Date &amp; Time</span></div></td>
			  <td width="143"><div align="center" class="style1 style2"><span class="style3">URL and Hash Code </span></div></td>
          </tr>
		  
<%@ include file="connect.jsp" %>
<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7,s8;
	int i=0;

      	try 
	{
        
      	
      	String query="select * from ownerfile "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
	  while ( rs.next()==true )
	    {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		
		s5=rs.getString(8);
		s6=rs.getString(9);
		s7=rs.getString(5);
		s8=rs.getString(6);
		%>

  <tr>
     <td height="41"><div align="center" class="style4"><%=i%></div></td>
     <td height="41"><div align="center" class="style4"><%=s1%></div></td>
    <td height="41"><div align="center" class="style4"><a href="fileContent.jsp?id=<%=i%>"> <%=s2%> </a></div></td>
     
	 <td><div align="center" class="style4"><%=s5%></div></td>
	 <td><div align="center" class="style4"><%=s6%></div></td>
	  <td><div align="center" class="style4"><a href="url&TrapDoor.jsp?url=<%=s8%>&td=<%=s7%>&att=<%="att1"%>"><%="Details"%></a></div></td>
  </tr>

     <%
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
