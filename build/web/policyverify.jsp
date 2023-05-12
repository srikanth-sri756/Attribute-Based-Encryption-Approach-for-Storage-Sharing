<%@page import="org.apache.catalina.Session"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page import="attributebased.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    String filename = request.getParameter("filename");
     String umail = request.getParameter("umail");
 //HttpSession ses=request.getSession(true);
            //String email=ses.getAttribute("username").toString();
  //  String skey = request.getParameter("skey");
    try {
        
       
       int j =0;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        st1 = con.createStatement();
        rs = st.executeQuery("select * from user where email='" + umail + "'");
           
       rs1 =st1.executeQuery("select * from request where filename='" + filename + "' and umail='" + umail + "'");
       // umail='" + umail + "'
        if (rs.next()) {
            
            //String owner = rs.getString("owner");
              
           if(rs1.next()) {
             if (rs1.getString("policy").equals(rs.getString("jobposition")))
                  {           
               
           session.setAttribute("filename",filename);
           j = st.executeUpdate("update request set status= 'Policy Vefied' where filename='"+filename+"'and umail='"+umail+"'");
          if (j !=0){
          
          response.sendRedirect("attributeverify.jsp?" + filename + "");
          
        }
           
              //  response.sendRedirect("attributeverify.jsp?" + filename + "");
                 
            }
             else 
            {
                j = st.executeUpdate("update request set status= 'Policy verification failed' where filename='"+filename+"'and umail='"+umail+"'");
                if (j !=0){
                response.sendRedirect("aaverify.jsp?policy=vefication failed   policy not matched");
                }
            }
           }
             
               
           
        } else {
            response.sendRedirect("aaverify.jsp?policy1=Failed");
        }
    } catch (Exception ex) {
         response.sendRedirect("aaverify.jsp?policy2=Failed");
        ex.printStackTrace();
    }

%>