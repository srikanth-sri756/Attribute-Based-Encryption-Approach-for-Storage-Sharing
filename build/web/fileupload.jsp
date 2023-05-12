<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>
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
            if (request.getParameter("file") != null) {%>
        <script>alert('File Upload  Successfully');</script>
        <%}
            if (request.getParameter("file1") != null) {%>
        <script>alert('File Upload Failed ');</script> 
          <%}
            if (request.getParameter("msgb") != null) {%>
        <script>alert('You_hava_already_given_request ');</script> 
        
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
			<li><a href="dataproviderhome.jsp">Home</a></li>
			<li class="selected"><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Key Generation</a></li>
                        <li><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
			<li><a href="duploadedfiles.jsp">Uploaded Files</a></li>
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
           
         <div class="clr"></div>
         <!---Start Body --->
       
         <div>
        <div class="content">
                    <br>   
         <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
                   <center><h3>File Upload</h3>     

<form class="news-letter" action="Upload" method="post" enctype="multipart/form-data">
					<center> 
                        <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                            <label style="font-size: 23px"><br>File Name</label>
                            <input class="textbox" type="text" placeholder="Enter your File Name" name="fname" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                          
                                                            
                                                            
                                                        </tr>
                                                        <label style="font-size: 23px">File Browse</label>
                            <input  type="file"  name="file" size="50" style="margin-left: 60px;width: 250px" required=""/><br /><br /><br />
                            <input type="submit" value="Submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
                            <input type="reset" value="Reset" class="button" style="margin-left: 35px;margin-top: -10px;width: 100px;"/>
                        </form> 
                    </center>
    <br>
    </div>
      <div class="clr"></div>
    </div>
</body>
</html>
