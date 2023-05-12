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
  //String polatt1 = "D:/keypolicy_attri.txt";
String skey = request.getParameter("skey");
    try {
            
      
        con = Dbconnection.getConnection();
        st = con.createStatement();
         st1 = con.createStatement();
        rs = st.executeQuery("select * from encryptkey where filename='" + filename + "'");
          rs1 = st1.executeQuery("select * from uploadcloud where filename='" + filename + "'"); 
       
        
        if (rs.next()) {
            
            String owner = rs.getString("owner");
            
            if(rs.getString("privatekey").equals(skey)) {
            if(rs1.next()) {
            if ( rs1.getString("skey").equals(rs.getString("privatekey")) )
            {
               
                response.sendRedirect("download?" + filename + "," + owner+ "," + skey);
            }
            else 
            {
                response.sendRedirect("verify_4.jsp?dmsg=vefication failed eithey  policy or attributes not matched");
            }
            }
            }
        } else {
            response.sendRedirect("verify_2.jsp?dmsg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>