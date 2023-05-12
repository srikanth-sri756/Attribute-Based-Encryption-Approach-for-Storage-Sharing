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
        <script>alert('File Upload Success');</script>
        <%}
            if (request.getParameter("upload1") != null) {%>
        <script>alert('File Upload Failed ');</script> 
         <%}
            if (request.getParameter("upload2") != null) {%>
        <script>alert('File Already Uploaded ');</script> 
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
			<li ><a href="cloudhome.jsp">Home</a></li>
			<li class="selected"><a href="cloudviewfiles.jsp">Private Cloud</a></li>
			<li><a href="cloudviewfilesprivate.jsp">Public Cloud</a></li>
			<li><a href="cloudviewusers.jsp">View Users</a></li>
                        <li><a href="cloudviewdataproviders.jsp">View Data Providers</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>

<% 


try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from upload where status='No'");
       
        
	ResultSet rs=pst.executeQuery();
        %>
        <div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
        <center> <table style="width:80%" border="2">
            <br>
     
               <h3>View Cloud Encrypted Files </h3>
  <tr>
     
     <th><font color="red"> File Name</th>
     <th><font color="red"> Owner</th>
     <th><font color="red"> Policy</th>
     <th><font color="red"> Experience</th>
     <th><font color="red"> Branch</th>
      <th><font color="red">View</th>
     
</tr>

<%
       
      while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
              <td><a href="cloudviewfiles1.jsp?<%=rs.getString("filename")%>">  View</a> </td>
        
      <%  }

}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        
        </table>
        <br> <br><p text-align="left"></p>
         		
        
                 
</div> <br>
    
</body>
       
</html>
        