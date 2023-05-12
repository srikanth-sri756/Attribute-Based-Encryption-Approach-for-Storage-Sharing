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
			<li ><a href="dataproviderhome.jsp">Home</a></li>
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li class="selected"><a href="dataproviderfiles.jsp">Key Generation</a></li>
                        <li><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
                        <li><a href="duploadedfiles.jsp">Uploaded Files</a></li>
		        <li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>


                    <center> 
                        <%

                            //String[] filedetails = request.getQueryString().split(",");
                            String filename =request.getParameter("filename");
                            String owner =request.getParameter("owner");
                            
                            InputStream is = null;
                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from file where filename='" +filename+ "' and owner='" +owner+ "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                //keyword =rt.getString("keyword");
                                is = (InputStream) rt.getAsciiStream("data");
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
                        
                      <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
                                  <center><h3> Encrypt File Data</h3>
                             
                        
                        <form name="f2" action="keygeneration.jsp" method="post" style="margin-right:  50px">
                            <label style="font-size: 23px">File Name</label><input class="textbox" type="text" value="<%=filename%>" readonly="" name="filename" style="margin-left: 58px;width: 250px" /><br /><br />
                            <label style="font-size: 23px">Owner</label><input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 250px" /><br /><br />
                            <label style="font-size: 23px;margin-left: -274px">File Content : </label><br /><textarea cols="40" rows="10" name="data" value="<%=sb.toString()%>" readonly="" style="margin-left: 200px"><%=sb.toString()%></textarea><br /><br />
                              <input type="submit" value="submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
                        </form> 
                    </center>
                </div>
            </div>
            <div id="footer"><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

