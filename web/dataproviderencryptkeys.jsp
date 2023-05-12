<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="attributebased.Dbconnection"%>
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
            if (request.getParameter("upload") != null) {%>
        <script>alert('File Successfully uploaded');</script>
        <%}
            if (request.getParameter("upload1") != null) {%>
        <script>alert('File Upload Failed ');</script> 
         <%}
            if (request.getParameter("upload2") != null) {%>
        <script>alert('File Already Uploaded Failed ');</script> 
        
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
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Key Generation</a></li>
                        <li class="selected"><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
                        <li><a href="duploadedfiles.jsp">Uploaded Files</a></li>
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>

<% 

 String mail=session.getAttribute("username").toString();
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from encryptkey where owner='"+mail+"'");
       
        
	ResultSet rs=pst.executeQuery();
        %>
        
        <center> <table style="width:80%" border="2">
            <br>
    <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
                                  
      <h4>View Encryption Key </h4>
  <tr>
     
     <th><font color="red"> File Name</th>
     <th><font color="red"> Owner</th>
     <th><font color="red"> Data</th>
      <th><font color="red">Private key</th>
      <th><font color="red">View</th>
     
</tr>

<%
       
    while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                 
                <td><a href="dataproviderencryptkeys1.jsp?filename=<%=rs.getString("filename")%>&owner=<%=rs.getString("owner")%>">  VIew</a> </td>
        
      <%  }

}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        </table><br>
</div>
</body>
</html>