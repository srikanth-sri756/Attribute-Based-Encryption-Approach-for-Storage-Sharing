
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
       
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.css">
        <link rel="stylesheet" href="css/custom-styles.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/component.css">
        <link rel="stylesheet" href="css/font-awesome-ie7.css">

        <script src="js/modernizr.custom.js"></script>
        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
     
            <div class="header-wrapper">
                <div class="container">
                    <div class="row-fluid">
                    
                        <div class="site-name">
                            <h1>TAFC: Time and Attribute Factors Combined Access Control
for Time-Sensitive Data in Public Cloud</h1>
                        </div>
                    
                    
                 
                        <div class="cust-form">
                            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                                
                                    <input type="text" class="search-query">
                                    <button type="submit" class="btn"><i class="fw-icon-search"></i></button>
                                
                            </form>
                        </div>
                    
                    </div>
                </div>
            </div>
      </div>
          <div class="container">
            <div class="menu">
                
                        <div class="navbar">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <i class="fw-icon-th-list"></i>
                            </a>
                            <div class="nav-collapse collapse">
                                <ul class="nav">
                                     <li ><a href="userhome.jsp">Home</a></li>
                                    <li><a href="viewfiles.jsp">View  Files</a></li>
                                    <li class="active"><a href="down.jsp">File Download</a></li>
                                
                                     <li><a href="index.html">Logout</a></li>
                                  
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div>
						<div class="mini-menu">
            
          </div>
                    
            </div>
            </div> 

<div class="search" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px"><br /><br />
                    <%
                         Connection con = null;
    Statement st = null;
    String filename = request.getQueryString();
                        //session.setAttribute("filename", filename);
                       //String data1[] = request.getQueryString().split(",");
                       // String filename1=(String)session.getAttribute("filename");
                     //    String filename = request.getParameter("filename");
                          String owner = request.getParameter("owner");
                         session.setAttribute("filename", filename);
                        session.setAttribute("owner", owner);
                    %>
                 <br>   <center> 
                        <h2>Key Verification System</h2>
                            <form action="verify.jsp" method="post">
                                <label>File Name  :</label><input type="text" name="filename" value="<%=filename%>"  style="margin-left: 30px" class="textbox"/><br /><br />
                                <label>Decryption Key :</label><input type="text" name="skey" required="" class="textbox"/><br /><br />
                                <input type="submit" value="Download" class="button" /><br /><br />
                            </form>
                    </center><br />
                </div>