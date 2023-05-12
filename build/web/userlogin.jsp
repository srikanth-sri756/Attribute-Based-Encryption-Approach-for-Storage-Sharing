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
            if (request.getParameter("userreg") != null) {%>
        <script>alert('User Registered Successfully');</script>
        <%}
            if (request.getParameter("userlogin1") != null) {%>
        <script>alert('User Login_Failed ');</script> 
        <%}
            if (request.getParameter("userlogin2") != null) {%>
        <script>alert('User not Activated ');</script> 
        
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
                        <li class="selected"><a href="userlogin.jsp">User</a></li>
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
            <br>
         <div class="clr"></div>
         <!---Start Body --->
         <div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br><br>
                <h1><font color="black">User Login</h1><br>
        <center><table>
   <form action="userloginact.jsp" method="get"> 
        <tr>
              <td>
                <strong><font size="3" color="black">Username:</font></strong>
                <input type="text" name="username" id="userName1" placeholder= Username style="height:30px; width:200px"></input>
              </td>
        </tr>

        <tr>
              <td>
                <strong><font size="3" color="black">Password: </font></strong>
                &nbsp;<input type="password" name="password" id="password1" placeholder= Password style="height:30px; width:200px"></input>
              </td>
        </tr>
   
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
	  <tr>
              <td>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<input type="submit" value="Login"  style="height:30px; width:65px" />
                  <button type="button" class="cancelbtn" style="height:30px; width:65px" >Cancel</button>
                  <a href="userreg.jsp"><font color="#ff00cc" size="4"><u>New User?SignUp</u></font></a>
             
                 
              </td>
          </tr>
          
          <tr>
              <td>
               </td>
          </tr>
         
            
	</table>
                </center>
         <!---End Body --->
      <br><br><br><br></div>
     </div>
      
      <div class="clr"></div>
    </div>
  </div>

  
</div>
</body>
</html>