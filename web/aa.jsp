<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Big Business
Description: A two-column, fixed-width design with a bright color scheme.
Version    : 1.0
Released   : 20120210
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Attribute-Based Encryption Approach for Storage, Sharing and Retrieval of Encrypted Data in the Cloud</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    
    <%
            if (request.getParameter("message") != null) {%>
        <script>alert('User Registered Successfully');</script>
        <%}
            if (request.getParameter("aalogin1") != null) {%>
        <script>alert('AA_Login_Failed ');</script> 
        
        <%}
        %>   
    
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h4><a href="#">Attribute-Based Storage Supporting Secure
Deduplication of Encrypted Data in Cloud</a></h4>
		</div>
		<div id="slogan">
			 
		</div>
	</div>
  
    <center>
	<div id="menu">
        
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="dataproviderlogin.jsp">Data Provider</a></li>			
			<li><a href="cloudlogin.jsp">Cloud</a></li>
                        <li><a href="userlogin.jsp">User</a></li>
			<li  class="selected"><a href="aa.jsp">AA</a></li>
			<li class="last"><a href="contact.html">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
    <br><br>
            <h1><font color="black">AA Login</h1>
            <center> <form name="f" action="aaact.jsp" method="post" onsubmit="return check()">
<table>
   
        <tr>
              <td>
                  <center>         <strong><font size="4" color="black">Username:</font></strong>
                <input type="text" name="username" id="userName1" placeholder= Username style="height:30px; width:170px"></input>
              </td>
</tr></center>
<br>
        <tr>
              <td>
                <strong><font size="4" color="black">Password: </font></strong>
                &nbsp;<input type="password" name="password" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
   
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
	  <tr>
              <td>
                  <input type="submit" value="Login"  style="height:30px; width:65px" />
                  <button type="button" class="cancelbtn" style="height:30px; width:65px" >Cancel</button>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
              </td>
                        </tr>
 
              <tr></tr>
              <tr></tr><tr></tr><tr></tr><tr></tr>
		<tr>
		<td>
		 </td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
                
		</td>
		</tr>
	</table>
     </form>
                         <BR><BR><BR><BR>
</body>
    
</html>