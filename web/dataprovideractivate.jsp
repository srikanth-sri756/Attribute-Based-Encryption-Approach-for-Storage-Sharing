<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
<%
String mail=request.getQueryString();

Connection con=Dbconnection.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  ResultSet rs=st.executeQuery("select * from dataprovider where email='"+mail+"'");
  if(rs.next()){
  int i=st.executeUpdate("update dataprovider set status='Activated' where email='"+mail+"'");
  if(i!=0){
  response.sendRedirect("viewdataproviders.jsp?dataprovideract=activated");
  }
    
   else{
      System.out.println("error");
   }}
    
%>