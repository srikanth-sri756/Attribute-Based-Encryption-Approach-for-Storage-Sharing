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
			<li class="selected"><a href="dataproviderhome.jsp">Home</a></li>
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Data Provider Files</a></li>
                        <li><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
			<li><a href="about.html">About</a></li>
			<li class="last"><a href="contact.html">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>

<%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<center><p></p></center>
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
                            ResultSet rt = st.executeQuery("select * from uploadcloud where filename='" + filedetails[0] + "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                   skey = rt.getString("skey");
                                //keyword =rt.getString("keyword");
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
                            //String content = new decryption().decrypt(sb.toString(), fkey);
                        %>
                        <center>
                            <h3>Private Cloud Files </h3>       
                                  
                          <img src="images/uploadcloud.jpg" alt="" width="200" height="150">
                              
                              
                        <form name="f2" action="uploadcloud" method="post" enctype="multipart/form-data" style="margin-right:  50px">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             <b>File Name</b><input class="textbox" type="text" value="<%=filename%>"  name="filename" style="margin-left: 58px;width: 250px" /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           <b>Owner</b><input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 250px" /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             <b>Private Key</b><input class="textbox" type="text" value="<%=skey%>" readonly="" name="privatekey" style="margin-left: 58px;width: 250px" /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                      <b>File Content  </b><input  name="data" value="<%=sb.toString()%>" readonly="" style="margin-left: 58px;width: 250px"></textarea><br /><br />
                          
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <b>Policy</b><input class="textbox" type="text" value="<%=policy%>"  name="policy" style="margin-left: 58px;width: 250px" /><br /><br />
                           
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Time</b><input class="textbox" type="date" name="time" value="<%=time%>" style="margin-left: 58px;width: 250px" /><br /><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Experience</b><input class="textbox" type="text"  name="exp" value="<%=exp%>" style="margin-left: 58px;width: 250px" /><br /><br />
                           
                            
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       <b>Branch</b><input class="textbox" type="text" value="<%=branch%>"  name="branch" style="margin-left: 58px;width: 250px" /><br /><br />
                            
                            </form> 
                    </center>
                </div>
            </div>
           
        </div>
    </body>
</html>

