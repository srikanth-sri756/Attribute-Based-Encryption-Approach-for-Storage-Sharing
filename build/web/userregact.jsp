 <%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
    String name = request.getParameter("name");
       String pass = request.getParameter("pass");
        String email = request.getParameter("email");
         String dob = request.getParameter("dob");
          String gen = request.getParameter("gen");
          
           String location = request.getParameter("location");
          String jobposition = request.getParameter("jobposition");
               String contactno = request.getParameter("contactno");
           String exp = request.getParameter("exp");
         String status = null;
         
        
       
       
       try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root","");

    PreparedStatement ps = co.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");

    
    ps.setString(1,name);    
        ps.setString(2,pass);
        ps.setString(3,email);
        ps.setString(4,dob);
        ps.setString(5,gen);
         ps.setString(6,location);
        ps.setString(7,jobposition);
        ps.setString(8,contactno);
        ps.setString(9,exp);
          ps.setString(10,status);
        ps.executeUpdate();


response.sendRedirect("userlogin.jsp?userreg=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
    response.sendRedirect("userreg.jsp?userreg1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>
