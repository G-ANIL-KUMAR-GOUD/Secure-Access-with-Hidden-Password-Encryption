﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style3 {color: #FF0000}
.style5 {
	color: #0000FF;
	font-weight: bold;
}
.style6 {color: #0000FF}
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
	
          <h2><span>Password Verified Details <span class="style1"></span></span></h2>
          <div class="clr"></div>
         
     
          <div class="clr"></div>
          <p>		</p>
					
          
          <p>
		  <%@ include file="connect.jsp" %>

<%
   	String owner=(String)application.getAttribute("owner"); 
	 
 	
    try{
	
	
			String hcode="";
			String sql1="SELECT * FROM  enpdetails where client='"+owner+"' ";
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next())
			{
			
			hcode=rs1.getString(4);
			
			}

		
			String sql="SELECT * FROM user where username='"+owner+"' and hcode='"+hcode+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
		
			if(rs.next())
			{
				
				  %><h3 class="style5">Password Is Safe</h3>
<% 
			}
			else
			{
				%>
				<h3><span class="style6">Password Has Been Attacked</span> By <span class="style3">Attackers </span></h3>

                <p>
                  <%
			}
			
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
                </p>
                <p><a href="dataOwnerMain.jsp">Back</a>        </p>
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
