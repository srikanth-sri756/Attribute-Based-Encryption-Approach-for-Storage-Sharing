
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            if (request.getParameter("dmsg") != null) {%>
        <script>alert('Secret Key Not Matched & Download Failed');</script>
        <%}
            if (request.getParameter("dmsgg") != null) {%>
        <script>alert('Secret Key Not Matched & Download Failed ');</script> 
        
        <%}
        %>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h4><a href="#">Attribute-Based Encryption Approach for Storage, Sharing and Retrieval of Encrypted Data in the Cloud</a></h4>
		</div>
		<div id="slogan">
		</div>
	</div>
  
	<div id="menu">
        
		<ul>
			<li><a href="userhome.jsp">Home</a></li>
                        <li><a href="userviewfiles.jsp">Cloud Files</a></li>
			<li class="selected"><a href="filedownload.jsp">Download Files</a></li>			
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<br>
 
    <div id="body">

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           <center> <div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
            <h4> File Download</h4>
         <div class="clr"></div>
         <!---Start Body --->
        
<body>

<div class="search" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 400px;height: 220px;margin-left: 230px;margin-top: 60px"><br /><br />
                    <%
                         Connection con = null;
    Statement st = null;
                       //String data1[] = request.getQueryString().split(",");
                       // String filename1=(String)session.getAttribute("filename");
                         String filename = request.getParameter("filename");
                          String owner = request.getParameter("owner");
                         session.setAttribute("filename", filename);
                        session.setAttribute("owner", owner);
                    %>
                   <center>
                        <h4>Key Verification System</h4>
                            <form action="filedownload2.jsp" method="post">
                                <label>File Name  :</label><input type="text" name="filename" value="<%=filename%>"  readonly style="margin-left: 30px" class="textbox"/><br /><br />
                                <label>Decryption Key :</label><input type="text" name="skey" required="" class="textbox"/><br /><br />
                                <input type="submit" value="Download" class="button" />
                            </form>
                   </center>
</div>
                <br>
                </div>