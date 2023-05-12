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
            if (request.getParameter("userlogin") != null) {%>
        <script>alert('User Login Successfully');</script>
        <%}
            if (request.getParameter("userlogin1") != null) {%>
        <script>alert('User Login Failed ');</script> 
          <%}
            if (request.getParameter("req") != null) {%>
        <script>alert('Request_sent_to_AA ');</script> 
        
        <%}
            if (request.getParameter("msgbb") != null) {%>
        <script>alert('You_hava_already_given_request ');</script> 
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
			<li class="selected"><a href="userhome.jsp">Home</a></li>
                        <li><a href="userviewfiles.jsp">Cloud Files</a></li>
			<li><a href="filedownload.jsp">Download Files</a></li>			
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
	
		<div id="splash">
                    <center>   
                                 <%HttpSession ses=request.getSession(true);
            String email=ses.getAttribute("username").toString();
            %>
            <h1> welcome <%=email%></h1>     </center>
			
	


</html>