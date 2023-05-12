<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
   
         <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="attributebased.Dbconnection"%>
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
      <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Request Sent to Cloud');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert(' Request Failed ');</script> 
        
        <%}
        %>
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
                                   <li class="active"><a href="userhome.jsp">Home</a></li>
                                    <li><a href="viewfiles.jsp">View  Files</a></li>
                                    <li><a href="down.jsp">File Download</a></li>
                                
                                     <li><a href="index.html">Logout</a></li>
                                  
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div>
						<div class="mini-menu">
            
          </div>
                    
            </div>
            </div>
     

<% 


try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timeattribute","root","");
        System.out.println("2");
     
	PreparedStatement pst=con.prepareStatement("select * from upload");
        ResultSet rs=pst.executeQuery();
           System.out.println("3");
       PreparedStatement pst1=con.prepareStatement("select * from register");
        
	
        ResultSet rs1=pst1.executeQuery();
        %>
        
        <center> <table style="width:80%" border="2">
            <br>
             
  <tr>
    
     
    
     
     <th><font color="red"> File Name</th>
  <th><font color="red"> Data</th>
     
     <th><font color="red"> Owner</th>
     <th><font color="red"> Time</th>
       <th><font color="red"> Policy</th>
         
           <th><font color="red"> Experience</th>
             <th><font color="red"> Branch</th>
     <th><font color="red"> View</th>
     
</tr>

<%
       
    while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                 <td><%=rs.getString(6)%></td>
                <td><%=rs1.getString(9)%></td>
                 
                <td><%=rs1.getString(10)%></td>
                <td><%=rs1.getString(8)%></td>
               
        
 <td> <a href="viewfiles1.jsp?filename=<%=rs.getString("filename")%>&data=<%=rs.getString("data").replaceAll("\\+", "%2B")%>&owner=<%=rs.getString("owner")%>&jobposition=<%=rs1.getString("jobposition")%>&time=<%=rs.getString("time")%>&exp=<%=rs1.getString("exp")%>&loc=<%=rs1.getString("loc")%>"><font style="color: green; font-size: 16px">Send</a></font> </td>
            
 
 
      <%
      System.out.println("99999999"+rs.getString("data").replaceAll("\\+", "%2B"));
    }

}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        </table>
</div>
</body>
</html>