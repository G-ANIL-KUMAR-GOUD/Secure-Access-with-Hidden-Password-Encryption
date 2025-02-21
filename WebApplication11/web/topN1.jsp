<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Top N Search Result</title>
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
.style7 {font-size: 16px; color: #2cadff; }
.style9 {color: #FFFFFF}
.style10 {font-size: 16px; color: #FFFFFF; }
.style11 {font-size: 14px; color: #FF0000; }
.style12 {
	color: #FF0000;
	font-weight: bold;
}
.style13 {font-size: 14px; color: #FF0000; font-weight: bold; }
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
          <h2><span>Search Result <span class="style2"></span></span></h2>
          <div class="clr"></div>
          
         
          <div class="clr"></div>
         
       
	  <p> 
          <table width="579" border="1" align="center"  cellpadding="0" cellspacing="0" >
            <tr>
              <td width="73" height="31" bgcolor="#FF0000"><div align="center" class="style7 style9">File ID </span></div></td>
              <td width="214" bgcolor="#FF0000"><div align="center" class="style10">File Name </span></div></td>
              <td width="110" bgcolor="#FF0000"><div align="center" class="style10">Rank </span></div></td>
              <td width="172" bgcolor="#FF0000"><div align="center" class="style10">Date</span></div></td>
		
		<%@ include file="connect.jsp" %>	  
		<%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

      	try 
	{
        
          String keyword = request.getParameter("t14");
      		
      		String uname=(String)application.getAttribute("user");
      		
			
      		String query="select * from ownerfile order by rank desc"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
	   	
		
		i=rs.getInt(1);
		s2=rs.getString(3);
		s3=rs.getString(8);
		s4=rs.getString(9);
		
		
		if(j<=Integer.parseInt(keyword))
		{
		%>
            <tr>
              <td height="32"><div align="center" class="style11 style12"><%=i%></div></td>
              <td><div align="center" class="style13"><%=s2%></div></td>
              <td><div align="center" class="style13"><%=s3%></div></td>
              <td><div align="center" class="style13"><%=s4%></div></td>
            </tr>
            <%
			j++;
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
	  <p align="right"><a href="endUserMain.jsp">Back</a></p>
     
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="endUserMain.jsp">Client Main</a></li>
            <li><a href="endUserLogin.html">Log Out</a></li>
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
