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

<script language="javascript" type='text/javascript'>
        function loadFileAsText()
    {
	    var fileToLoad = document.getElementById("file").files[0];
	    var fileReader = new FileReader();
	    fileReader.onload = function(fileLoadedEvent) 
    {
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	    fileReader.readAsText(fileToLoad, "UTF-8");
    }
</script>


<style type="text/css">
<!--
.style1 {color: #1f7fbb}
.style2 {color: #78bbe6}
.style3 {font-size: 20px}
.style4 {color: #78bbe6; font-size: 20px; }
.style6 {color: #FFFFFF; font-weight: bold; }
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
		  <form id="form1" name="form1" method="post" action="upLoad1.jsp">
          <table width="598"  border="1.5"  cellpadding="0" cellspacing="0">
             <tr>
              <td width="155" height="37" bgcolor="#FF0000"><div align="center" class="style6"><span class="style2 style3">Select File </span></div></td>
              <td width="437"><div align="center">
                <input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" />
              </div></td>
             </tr>
             <tr>
              <td height="34" bgcolor="#FF0000" class="style4 style2 style3"><div align="center" class="style6">File Name </div></td>
              <td><div align="center">
                <input required="required" name="tt" type="text" id="t42" size="50"/>
              </div></td>
             </tr>
             <tr>
              <td height="258" bgcolor="#FF0000">&nbsp;</td>
              <td><div align="center">
                <textarea name="text" id="textarea" cols="50" rows="15"></textarea>
              </div></td>
             </tr>
             <tr>
              <td height="37" bgcolor="#FF0000"><div align="center" class="style6"><span class="style2 style3">Hash Code </span></div></td>
              <td><div align="center">
                <input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" />
              </div></td>
             </tr>
             <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
             </tr>
          </table>
          </form>
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
