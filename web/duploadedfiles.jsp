<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

   <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="attributebased.Dbconnection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Attribute-Based Storage Supporting Secure
Deduplication of Encrypted Data in Cloud</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    
    
     <%
            if (request.getParameter("key") != null) {%>
        <script>alert('Key Generate Successfully');</script>
        <%}
            if (request.getParameter("key1") != null) {%>
        <script>alert('Key Generation Failed ');</script> 
         <%}
            if (request.getParameter("key2") != null) {%>
        <script>alert('Already Key Generated');</script> 
        
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
			<li ><a href="dataproviderhome.jsp">Home</a></li>
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Key Generation</a></li>
                        <li><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
                        <li class="selected"><a href="duploadedfiles.jsp">Uploaded Files</a></li>
		        <li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
       <center> <h4>  File Details</h4><br>
         <div class="clr"></div>
      
  <table style="width:80%" border="2">
          
  <tr>
    
    <th><font color="red"> File Name</th>
  <th><font color="red"> Policy</th>
  <th><font color="red"> Experience</th>
  <th><font color="red"> Branch</th>
     
</tr>

 <%
            String mail=session.getAttribute("username").toString();
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from uploadcloud where owner='"+mail+"'");
                                        while(rs.next())
                                            
                                        {%>
                                        <th><%=rs.getString("filename")%></th> 
                                        <th><%=rs.getString("policy")%></th> 
                                         <th><%=rs.getString("exp")%></th> 
                                         <th><%=rs.getString("branch")%></th> 
                                       <tr />
                                        <%
                                      
                                        
                                        } 
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
        </table><br>
</body>
</html>

