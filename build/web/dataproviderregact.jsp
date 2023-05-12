 <%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
    String name = request.getParameter("name");
     String pass = request.getParameter("pass");
     String Email = request.getParameter("email");
     String dob = request.getParameter("dob");
     String gen = request.getParameter("gen");
     String location = request.getParameter("location");
      String contactno = request.getParameter("contactno");
      String status = null;
        
       
       
       try{
       
       Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");

    PreparedStatement ps = co.prepareStatement("insert into dataprovider values(?,?,?,?,?,?,?,?)");

    
        ps.setString(1,name);    
        ps.setString(2,pass);
        ps.setString(3,Email);
        ps.setString(4,dob);
        ps.setString(5,gen);
        ps.setString(6,location);
        ps.setString(7,contactno);
        ps.setString(8,status);
        ps.executeUpdate();



response.sendRedirect("dataproviderlogin.jsp?message=success");
out.println("Data Provider Registered Successfully");
}
catch(Exception e1)
{
    response.sendRedirect("dataproviderlogin.jsp?email=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>
