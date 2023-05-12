<%@page import="attributebased.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>

<%   
String filename = request.getParameter("filename");

String umail = request.getParameter("umail");
String username=session.getAttribute("user").toString();

String skey = null;



try{
    int j =0;
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
       rs = st.executeQuery("select owner from request where umail='"+umail+"' and filename='"+filename+"'");
                           
       while( rs.next())
       {
       rs.getString("owner");
        System.out.println("owner name is   "  + rs.getString("owner")  ); 
        rs1 =st.executeQuery("select skey from uploadcloud where owner='"+rs.getString("owner")+"' and filename='"+filename+"'");
        if(rs1.next() )
        {
         skey =rs1.getString("skey");
         System.out.println("key is   "  + rs1.getString("skey")  );
          j = st.executeUpdate("update request set status= 'yes', skey='"+rs1.getString("skey")+"' where filename='"+filename+"'and umail='"+umail+"'");
          if (j !=0){
          Mail m = new Mail();
          String msg ="File Name:"+filename+"\ndecryption key :"+skey+"\nkeyverifier :"+username;
          m.secretMail(msg,filename,umail);
          response.sendRedirect("aaverify.jsp?msg=Key Verification Success & Key Sent to User Mail");
          
        }
          else{
          response.sendRedirect("aaverify.jsp?msgg=Failed");
      }
           }
      
       }
       
       
       
    
      
     
    
} catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
