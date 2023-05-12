<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
            if (request.getParameter("msg") != null) {%>
        <script>alert('Key Verification Success & Key Sent to User Mail');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Key Verification Failed ');</script> 
          <%}
            if (request.getParameter("policy") != null) {%>
        <script>alert('vefication failed   policy not matched');</script> 
         <%}
            if (request.getParameter("policy1") != null) {%>
        <script>alert('vefication failed');</script>
        <%}
            if (request.getParameter("policy2") != null) {%>
        <script>alert('vefication failed ');</script>
        <%}
            if (request.getParameter("dmsg") != null) {%>
        <script>alert('vefication failed attributes not matched');</script>
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
			<li><a href="aahome.jsp">Home</a></li>
                        <li><a href="viewdataproviders.jsp">View Data Providers</a></li>
                        <li><a href="viewusers.jsp">View Users</a></li>
			<li  class="selected"><a href="aaverify.jsp">User Attribute Verify</a></li>
			<li><a href="cloudviewfilesprivate1.jsp">Public Cloud</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	
  <div id="body">

<div id="main">
    <div id="right">
        <h4></h4>
<center>
  <br>
 <center>
     <%
           
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from request where status='no' ");

%>
        <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
<center><h4>Policy Verification</h4>
      <table style="width:60%" border="2">
                

    <tr STYLE="background-color: yellowgreen;font-size: 15px;"> 
    
       <td>File Name</td>
        <td>Owner</td>
       <td>Policy</td>
       <td>Time</td>
       <td>Experience</td>
       <td>Branch</td>
       <td>User</td>
       <td>Status</td>
       <td>View</td>
       
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td> 
                <td><%=rs.getString(7)%></td> 
                   <td><%=rs.getString(8)%></td> 
                <td><%=rs.getString(9)%></td> 
             
               <td><a href="policyverify.jsp?filename=<%=rs.getString("filename")%>&owner=<%=rs.getString("owner")%>&umail=<%=rs.getString("umail")%>">Verify Policy</a> </td>
        </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

                            
                        </table>
<br><br>
</div>

</div>

</body>
</html>


