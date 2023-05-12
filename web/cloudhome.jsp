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
            if (request.getParameter("login") != null) {%>
        <script>alert('Cloud Login_Successfully');</script>
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
	<div id="menu">
		<ul>
			<li class="selected"><a href="cloudhome.jsp">Home</a></li>
			<li><a href="cloudviewfiles.jsp">Private Cloud</a></li>
			<li><a href="cloudviewfilesprivate.jsp">Public Cloud</a></li>
			<li><a href="cloudviewusers.jsp">View Users</a></li>
                        <li><a href="cloudviewdataproviders.jsp">View Data Providers</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/arcte.JPG" width="820" height="230" alt="" />
	</div>
	
		<div id="splash">
                    <center><h3>Welcome to Cloud</h3></center>
			
		</div>
		<br class="clearfix" />
	</div>


</body>
</html>