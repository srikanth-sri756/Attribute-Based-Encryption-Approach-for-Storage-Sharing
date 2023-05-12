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
            if (request.getParameter("dataprovideract") != null) {%>
        <script>alert('Data_Provider_Activated');</script>
        <%}
            if (request.getParameter("dataproviderdeact") != null) {%>
        <script>alert('Data_Provider_DeActivated');</script> 
        
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
			<li><a href="cloudviewfiles.jsp">Private Cloud</a></li>
			<li><a href="cloudviewfilesprivate.jsp">Public Cloud</a></li>
			<li><a href="cloudviewusers.jsp">View Users</a></li>
                        <li class="selected"><a href="cloudviewdataproviders.jsp">View Data Providers</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	    <center> <table style="width:80%" border="2">
            <br>
     <center>
                                  
          <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>                        
                        
    <h3>View Data Providers</h3>
  <tr>
     
     <th><font color="red"> Data Provider Name</th>
     <th><font color="red"> Email</th>
  <th><font color="red"> DOB</th>
     <th><font color="red"> Gender</th>
     <th><font color="red"> Location</th>
     <th><font color="red"> Contact No</th>
     <th><font color="red"> Status</th>
  
   
     
</tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconnection.getConnection();
                                            st = con.createStatement();
                                        rs = st.executeQuery("select * from dataprovider");
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
