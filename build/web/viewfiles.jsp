<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Attribute-Based Encryption Approach for Storage, Sharing and Retrieval of Encrypted Data in the Cloud</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
           
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>
<link rel="icon" href="images/attributebased.jpg">

</head>

<body>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Key Verification Success & Key Sent to User Mail');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Key Verification Failed ');</script> 
        
        <%}
        %>
    
<div id="container">
	<div id="header">
    	<h1><a >RAAC:</a></h1>
        <h2>attributebased and Auditable Access Control with Multiple
Attribute Authorities for Public Cloud Storage
</h2>
        <div class="clear"></div>
    </div>
    <div id="nav">
    	<ul class="sf-menu dropdown">
        	<li class="selected"><a href="index.html">Home</a></li>
           <li><a class="has_submenu" href="aaverify.jsp">User File Verification</a>
                <li><a href="viewownerfiles.jsp">Cloud Files</a></li>
           
            <li><a href="index.html">Logout</a></li>
        </ul>
    </div>
    

    <div id="body">
 
<div id="main">
    <div id="right">
        <h4></h4>
<center>
        <br>
        <center><h3>Policy Verification</h3>
            
                      <center>
   <%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>

      <%
       
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from uploadcloud ");

%>
     <center> <table style="width:60%" border="2">
                

    <tr STYLE="background-color: yellowgreen;font-size: 15px;"> 
    
       <td>File Name</td>
        <td>Owner</td>
       <td>Policy</td>
       <td>Time</td>
       <td>Experience</td>
       <td>Branch</td>
       <td>View</td>
       
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td> 
                <td><%=rs.getString(8)%></td> 
             
               <td><a href="verifypolicy.jsp?filename=<%=rs.getString("filename")%>&owner=<%=rs.getString("owner")%>%>">Verify Policy</a> </td>
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

</div>

</div>

</body>
</html>


