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
	color: #595959;
	font-weight: bold;
}
.style4 {color: #FF0000}
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
          <h2><span>User :<span class="style2"> <%=(String)application.getAttribute("user")%></span></span></h2>
          <div class="clr"></div>
          
        
          <div class="clr"></div>
          <p></p>
          <p>
		  
		  <form action="userRequest1.jsp" method="post" id="ContactForm">
		  <table width="419" border="0" align="center">
                  <tr>
                  <td width="215" height="42"><div align="center" class="style3 style4">Select  </div></td>
				  
				  
				  
			     <%@ include file="connect.jsp" %>	
				 <%@ page import ="java.util.*" %>  
		         <%
				 
             try {
			 
     	           String str="Authorized";
                   Statement st1 = connection.createStatement();
                   String query1 ="select * from user where status='"+str+"'";
	               ResultSet rs = st1.executeQuery (query1);
	               ArrayList al = new ArrayList();
				   
	               while(rs.next())
	              {
	   	        	al.add(rs.getString(2));
	              }
				  
	             %>
				 
               <td width="214">
			   <select name="usr" size="1" class="style9" id="Select User">
                <option selected="selected">Select Owner</option>
					<%
					
					 for(int i=0;i<al.size();i++)
        	        {
					
        	        %>
          				 <option><%= al.get(i)%></option>
         		  
                   <%
				  
		            }
					
		           %>
                </select>
				</td>
				
                </tr>
				  
                  <tr>
                  <td height="41"><div align="right">
                    <input type="submit" name="Submit" value="Request" />
                  </div></td>
				   <td></td>
                </tr>
            </table>
          
         
		  </form>
		  <%	     


	   connection.close();
     
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   	 
		  
		  
%>
		  </p>
		   <p align="right"><a href="endUserMain.jsp">Back</a></p>
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
