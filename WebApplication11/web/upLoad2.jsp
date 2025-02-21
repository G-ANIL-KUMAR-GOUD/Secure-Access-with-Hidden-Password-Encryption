<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Upload</title>
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
.style2 {color: #78bbe6}
.style3 {font-size: 20px}
.style4 {color: #78bbe6; font-size: 20px; }
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
	
          <h2><span>Owner Data Upload<span class="style1"> </span></span></h2>
          <div class="clr"></div>
         
          
          <div class="clr"></div>
<p>

<%@ include file="connect.jsp" %>
<%@ page import ="java.util.Date" %>
 <%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%

    try 
	{
      		String file=request.getParameter("t42");
      		String cont=request.getParameter("text2");
      		String mac =request.getParameter("t4");
			String str=request.getRequestURL()+"";
			String owner=(String)application.getAttribute("owner");

      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      	    	KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();

				String pk = String.valueOf(pub);
				String rank = "0";
			
				String task = "Upload";
				
				String str1 = "insert into transaction(user,fname,sk,task,dt) values('"+owner+"','"+file+"','"+pk+"','"+task+"','"+dt+"')";
		     	connection.createStatement().executeUpdate(str1);
				
      String str2 = "insert into  webserver(owner,fname,ct,trapdoor,sk,url,rank,dt) values ('"+owner+"','"+file+"','"+cont+"','"+mac+"','"+pk+"','"+str+"','"+rank+"','"+dt+"')"; 
	  connection.createStatement().executeUpdate(str2);
	  
	    String str3 = "insert into  ownerfile(owner,fname,ct,trapdoor,sk,url,rank,dt) values ('"+owner+"','"+file+"','"+cont+"','"+mac+"','"+pk+"','"+str+"','"+rank+"','"+dt+"')";	        connection.createStatement().executeUpdate(str3);
	    
      		
	
%>
		<h2>Data Uploaded Successfully...</h2>
		<p>  <a href="dataOwnerMain.jsp">BACK</a></p>

		  
		  
		  <%
		  
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
            <li><a href="index.html">Upload Data</a></li>
            <li><a href="endUserLogin.html">Grant Permission</a></li>
            <li><a href="dataOwnerLogin.html">View Files</a></li>
            <li><a href="webServerLogin.html">Verify Data</a></li>
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
