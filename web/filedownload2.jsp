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
  
    String skey = request.getParameter("skey");
    String mail=session.getAttribute("username").toString();
    
    try {
            
      
        con = Dbconnection.getConnection();
        st = con.createStatement();
         st1 = con.createStatement();
        rs = st.executeQuery("select * from request where filename='" + filename + "' and umail='"+mail+"'");
          rs1 = st1.executeQuery("select * from uploadcloud where filename='" + filename + "'"); 
       
        
        if (rs.next()) {
            
            String owner = rs.getString("owner");
            
            if(rs.getString("skey").equals(skey)) {
            if(rs1.next()) {
            if ( rs1.getString("skey").equals(rs.getString("skey")) )
            {
               
                response.sendRedirect("download?" + filename + "," + owner+ "," + skey);
            }
            else 
            {
                response.sendRedirect("filedownload.jsp?download=Vefication Failed   Key not Matched");
            }
            }
            }
            else 
            {
                response.sendRedirect("filedownload.jsp?download1=Vefication Failed   Key not Matched");
            }
            
        } else {
            response.sendRedirect("filedownload.jsp?download2=Failed");
        }
    } catch (Exception ex) {
         response.sendRedirect("filedownload.jsp?download3=Failed");
        ex.printStackTrace();
    }

%>