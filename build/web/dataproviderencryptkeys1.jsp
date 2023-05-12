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
			<li><a href="dataproviderhome.jsp">Home</a></li>
			<li><a href="fileupload.jsp">File Upload</a></li>			
			<li><a href="dataproviderfiles.jsp">Key Generation</a></li>
                        <li class="selected"><a href="dataproviderencryptkeys.jsp">Files Upload to Cloud</a></li>
			<li><a href="duploadedfiles.jsp">Uploaded Files</a></li>
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>


                    <center> 
                        <%

                           // String[] filedetails = request.getQueryString().split(",");
                            String filename =request.getParameter("filename");
                            String owner =request.getParameter("owner");
                            String privatekey = null;
                            InputStream is = null;

                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from encryptkey where filename='" +filename+ "' and owner='" +owner+ "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                privatekey = rt.getString("privatekey");
                               
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
                            
                        %>
                        <center>
                                 <div id="splash">
	<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
                            <h4>Encrypted Data Upload to Cloud </h4>       
                                  
                          <br>

<form name="f2" action="encrypt1" method="post" enctype="multipart/form-data" style="margin-right:  50px">
<b><font color='black'>File Name</b><input class="textbox" type="text" value="<%=filename%>"  name="filename" style="margin-left: 58px;width: 250px" /><br /><br />
  <b>Owner</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 250px" /><br /><br />
<b>Private Key</b><input class="textbox" type="text" value="<%=privatekey%>" readonly="" name="privatekey" style="margin-left: 58px;width: 250px" /><br /><br />
<b>File Content  </b><input  name="data" value="<%=sb.toString()%>" readonly="" style="margin-left: 58px;width: 250px"></textarea><br /><br />

 <b>Policy</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select  name="policy"  required="required"style="margin-left: 58px;width: 250px">
                <option value="na" selected="" style="color:darkblue">Choose Policy</option>
                <option value="scientist" style="color:darkblue">Scientist</option>
                <option value="cardiologist"style="color:darkblue">Cardiologist</option>
                 <option value="LifeInstitute"style="color:darkblue">Life Institute</option>
                 <option value="GeneralHospital"style="color:darkblue">General Hospital</option>
     </select><br><br>

      <b>Date</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="date" name="time" style="margin-left: 58px;width: 250px" /><br /><br />
    <b>Experience</b><input class="textbox" type="text"  name="exp" style="margin-left: 58px;width: 250px" /><br /><br />


       <b>Branch</b>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select  name="branch"  required="required" style="margin-left: 58px;width: 250px"><br>
                <option value="na" selected="" style="color:darkblue">Choose Branch</option>
                <option value="hyderabad" style="color:darkblue">Hyderabad</option>
                <option value="pune"style="color:darkblue">Pune</option>
                 <option value="delhi"style="color:darkblue">Delhi</option>
                </select>
      <br><br><br>
    <input type="submit" value="submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
</form> 
                    </center>
                </div>
            </div>
            <div id="footer">
                <center></center>
            </div>
        </div>
    </body>
</html>

