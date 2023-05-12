<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
        <script>alert('Email Id you Entered already in Use');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
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
			<li><a href="index.html">Home</a></li>
			<li class="selected"><a href="adminlogin.jsp">Data Provider</a></li>			
			<li><a href="cloudlogin.jsp">Cloud</a></li>
                        <li><a href="userlogin.jsp">User</a></li>			
			<li class="last"><a href="contact.html">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	

</html>
        <br>
        <center>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h3>Data Provider Registration</h3>
          
          <div class="clr"></div>
          <!---star Body -->
          <form name="form1"   action="dataproviderregact.jsp" method="get">

            <center>   <table align="center">

                <center>   

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">User Name:</font></strong></td>
                        <td><input type="text" class="uname" name="name" placeholder= UserName required style="height:30px; width:200px" />&nbsp;<span class="status"></span></td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Password: </font></strong></td>
                        <td> <input type="password" name="pass" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td>
                    </td>
                </tr>

  <tr>
                    <td>
                        <td><strong><font size="3" color="black">Email: </font></strong></td> 
                        <td><input type="email" name="email" id="email1" placeholder= Email required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>
                
               

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">DOB: </font></strong></td>
                        <td><input type="date" name="dob" id="dob1" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

               
 <tr>
                    <td>
                        <td><strong><font size="3" color="black">Gender: </font></strong></td> 
                        <td><select id="kk" name="gen" required style="height:34px; width:150px">
                               <option value="na" selected="" >Gender:</option>
                                <option value="male" >Male</option>
                                        <option value="female">Female</option>
                                           </select></td>
                    </td>
                </tr>
                    
                    <tr>
                    <td>
                        <td><strong><font size="3" color="black">Location: </font></strong></td> 
                        <td><select id="kk" name="location" required style="height:34px; width:150px">
                                  <option value="na" selected="" >Location:</option>
                                  <option value="hyderabad" >Hyderabad</option>
                                  <option value="pune">Pune</option>
                                   <option value="delhi">Delhi</option>  </select></td>
                    </td>
                </tr>
                    
                    
              <tr>
                    <td>
                        <td><strong><font size="3" color="black">Contact: </font></strong></td> 
                        <td><select id="kk" required style="height:34px; width:50px">
                                <option value="+91">+91</option>

                                <input type="text" name="contactno" id="contactno1" placeholder= MobileNo. required style="height:30px; width:200px"></input>
                            </select></td>
                    </td>
                </tr>

 
      <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td>
                        <td><input type="submit" value="Register" style="height:50px; width:55px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                            <input type="reset" value="Reset" style="height:50px; width:50px" /></td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                       
                    </td>
                </tr>





            </table>
        </form>
          
          <!---End Body -->
         <br></div>
     </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

