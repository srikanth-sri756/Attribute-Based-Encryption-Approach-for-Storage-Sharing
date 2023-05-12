<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            if (request.getParameter("m1") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
            if (request.getParameter("m2") != null) {%>
        <script>alert('Login Failed ');</script> 
        
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
			<li class="selected"><a href="cloudhome.jsp">Home</a></li>
			<li><a href="privatecloud.jsp">Private Cloud</a></li>
			<li><a href="publiccloud.jsp">Public Cloud</a></li>
			<li><a href="viewusers.jsp">View Users</a></li>
                        <li><a href="viewdataproviders.jsp">View Data Providers</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>


                    <center> 
                        <%

                            String[] filedetails = request.getQueryString().split(",");
                            String filename = null;
                            String owner = null;
                            String skey = null;
                            InputStream is = null;
                            String policy = null;
                            String time = null;
                            String exp = null;
                             String branch = null;
                             
                             
                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from upload where filename='" + filedetails[0] + "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                   skey = rt.getString("skey");
                               
                                is = (InputStream) rt.getAsciiStream("data");
                                
                                policy = rt.getString("policy");
                                time = rt.getString("time");
                                   exp = rt.getString("exp");
                                branch = rt.getString("branch");
                              
                            } else {
                                out.println("error while retreiving data");
                            }
                            BufferedReader br = new BufferedReader(new InputStreamReader(is));
                            String temp = null;
                            StringBuffer sb = new StringBuffer();
                            while ((temp = br.readLine()) != null) {
                                sb.append(temp + "\n");
                            }
                           
                        %>
                        <center>
                            
                            <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
                            
         <h3>Encrypted Data Upload to Cloud </h3>   <br>    
                                  
    <form name="f2" action="uploadcloud" method="post" enctype="multipart/form-data" style="margin-right:  50px">
        <b><font color='black'>File Name</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=filename%>"  name="filename" style="margin-left: 58px;width: 250px" /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;
            <b>Owner</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 250px" /><br /><br />
            <b>Private Key</b>&nbsp;<input class="textbox" type="text" value="<%=skey%>" readonly="" name="privatekey" style="margin-left: 58px;width: 250px" /><br /><br />
             <b>File Content  </b><input  name="data" value="<%=sb.toString()%>" readonly="" style="margin-left: 58px;width: 250px"></textarea><br /><br />
            <b>Policy</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=policy%>"  name="policy" style="margin-left: 58px;width: 250px" /><br /><br />
            <b>Time</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="date" name="time" value="<%=time%>" readonly style="margin-left: 58px;width: 250px" /><br /><br />
           <b>Experience</b>&nbsp;&nbsp;<input class="textbox" type="text"  name="exp" readonly value="<%=exp%>" style="margin-left: 58px;width: 250px" /><br /><br />
           <b>Branch</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=branch%>"  name="branch" readonly style="margin-left: 58px;width: 250px" /><br /><br />
       <input type="submit" value="submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
 </form> <br><br><br><br><br><br>
                    </center>
                </div>
           
            
        </div>
    </body>
</html>

