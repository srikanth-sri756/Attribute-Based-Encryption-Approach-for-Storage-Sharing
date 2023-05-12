<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page import="attributebased.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
     ResultSet rs1 = null;
    String filename = request.getParameter("filename");
   Statement st1 = null;
   String umail = request.getParameter("umail");

    try {
            
      int j=0;
        con = Dbconnection.getConnection();
        st = con.createStatement();
         st1 = con.createStatement();
        rs = st.executeQuery("select * from user where email='" + umail + "'");
          rs1 = st1.executeQuery("select * from request where filename='" + filename + "' and umail='" + umail + "'"); 
       
        
        if (rs.next()) {
            
           // String owner = rs.getString("owner");
            if(rs1.next()) {
            if ( rs1.getString("exp").equals(rs.getString("exp")) && rs1.getString("branch").equals(rs.getString("location")))
            {
               j = st.executeUpdate("update request set status= 'Attributes Vefied' where filename='"+filename+"'and umail='"+umail+"'");
          if (j !=0){
          
         response.sendRedirect("keyverify.jsp?" + filename + "" );
          
        } 
                
            }
            else 
            {
               j = st.executeUpdate("update request set status= 'Attributes verification failed' where filename='"+filename+"'and umail='"+umail+"'");
                if (j !=0){
               response.sendRedirect("aaverify.jsp?dmsg=vefication failed attributes not matched");
                }  
                
                
               
            }
            }
            
        } else {
            response.sendRedirect("attributeverify.jsp?attributes=Failed");
        }
    } catch (Exception ex) {
        response.sendRedirect("attributeverify.jsp?attributes1=Failed");
        ex.printStackTrace();
    }

%>