<%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>PLACE</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
                   
<%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("username");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
        String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from user where email='"+email+"' and pass='"+password+"' and status='Activated'");
       if(rs.next())
        {
         user = rs.getString(2);
		   session.setAttribute("username",email);
		   System.out.println("User:"+user);
			response.sendRedirect("userhome.jsp?userlogin=LoginSuccess");
        }
       else 
        {
            response.sendRedirect("userlogin.jsp?userlogin1=LoginFail");
                }
	}
    catch(Exception e)
    {
         response.sendRedirect("userlogin.jsp?userlogin2=LoginFail");
        System.out.println("Error in studentact"+e.getMessage());
    }
%>
  <div style="clear: both;">&nbsp;</div>
               
                <div id="footer">
                     


                </div>

                </body>
                </html>