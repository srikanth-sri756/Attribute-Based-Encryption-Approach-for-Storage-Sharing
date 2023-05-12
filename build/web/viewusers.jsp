<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
   
  <html>
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
            if (request.getParameter("useracti") != null) {%>
        <script>alert('User Activated');</script>
        <%}
            if (request.getParameter("userdeac") != null) {%>
        <script>alert('User Deactivated');</script> 
        
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
                        <li  class="selected"><a href="viewusers.jsp">View Users</a></li>
			<li><a href="aaverify.jsp">User Attribute Verify</a></li>
			<li><a href="cloudviewfilesprivate1.jsp">Public Cloud</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	    <center> <table style="width:80%" border="2">
            <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
     <center>
       
            <h4>View Users</h4>
  <tr>
     
     <th><font color="red"> Data Provider Name</th>
     <th><font color="red"> Email</th>
   <th><font color="red"> DOB</th>
     <th><font color="red"> Gender</th>
     <th><font color="red"> Location</th>
      <th><font color="red"> Job Position</th>
     <th><font color="red"> Contact No</th>
     <th><font color="red"> Experience</th>
     <th><font color="red"> Status</th>
     <th><font color="red"> Activation</th>
     <th><font color="red"> De-Activatiob</th>
   
     
</tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconnection.getConnection();
                                            st = con.createStatement();
                                        rs = st.executeQuery("select * from user");
                                        while (rs.next()) {
                                            String mail=rs.getString("email");
                                            
            %>
                 <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
              <td><%=rs.getString(9)%></td>
                 <td><%=rs.getString(10)%></td>
                                
                                 <td><a href="useractivate.jsp?<%=mail%>" >Activate</a> </td>
                                  <td><a href="userdeactivate.jsp?<%=mail%>" >DeActivate</a> </td>
                               </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
                            <br><br>
				</div>
              
	

	</body>
	</html>
