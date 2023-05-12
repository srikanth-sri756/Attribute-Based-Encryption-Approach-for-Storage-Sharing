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
            if (request.getParameter("msg1") != null) {%>
        <script>alert('File Upload Success');</script>
        <%}
            if (request.getParameter("msg") != null) {%>
        <script>alert('File Upload Failed ');</script> 
        
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
			<li class="selected"><a href="dataproviderhome.jsp">Home</a></li>
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Data Provider Files</a></li>
                        <li><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
			<li><a href="about.html">About</a></li>
			<li class="last"><a href="contact.html">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>

		

       <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="attributebased.Dbconnection"%>

<% 


try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from uploadcloud");
       
        
	ResultSet rs=pst.executeQuery();
        %>
        
        <center> <table style="width:80%" border="2">
            <br>
     <center>
                                  
                                  
                          <img src="images/encrypt.jpg" alt="" width="200" height="150">   
                               <h2>View Cloud Files </h2>
  <tr>
     
     <th><font color="red"> File Name</th>
     <th><font color="red"> Owner</th>
  
      <th><font color="red">View</th>
     
</tr>

<%
       
    while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
              
                 
                <td><a href="viewprivatecloudfiles1.jsp?<%=rs.getString("filename")%>">  VIew</a> </td>
        
      <%  }

}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        </table>
</div>
</body>
</html>