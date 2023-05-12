<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
            if (request.getParameter("login1") != null) {%>
        <script>alert('Cloud Login_Failed');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Login_Failed ');</script> 
        
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
			<li   class="selected"><a href="cloudlogin.jsp">Cloud</a></li>
                        <li><a href="userlogin.jsp">User</a></li>
			<li><a href="aa.jsp">AA</a></li>
			<li class="last"><a href="contact.html">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	
	
	
</html>
  <center>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           
         <div class="clr"></div>
         <!---Start Body --->
       <div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br><br>
                <h1><font color="black">Cloud Login</h1>
        <center>
            <center> <form name="f" action="cloudlogact.jsp" method="post" onsubmit="return check()">
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
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"  style="height:30px; width:65px" />
                  <button type="button" class="cancelbtn" style="height:30px; width:65px" >Cancel</button>
                
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