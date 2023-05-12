<%@page import="javax.sound.midi.SysexMessage"%>
 <%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>

<%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<center><p></p></center>
                    <center> 
                        <% 
                      String email=session.getAttribute("username").toString();
                     String  filename=request.getParameter("filename");
                     String  data=request.getParameter("data");
                    String  owner=request.getParameter("owner");
                     String  policy=request.getParameter("policy");
                    String time = request.getParameter("time");
                    String exp = request.getParameter("exp");
                    String branch = request.getParameter("branch");
                            
        try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("insert into request(filename, data, owner, policy, time, exp, branch,umail, status) values ('"+filename+"','"+data+"','"+owner+"','"+policy+"','"+time+"','"+exp+"','"+branch+"','"+email+"','No')");
        if (j != 0) {

            response.sendRedirect("userhome.jsp?req=Request_sent_to_AA");
        } else {
            response.sendRedirect("userviewfiles.jsp?req1=Request_failed");
        }


    } catch (Exception ex) {
        response.sendRedirect("userviewfiles.jsp?req2=You_hava_already_given_request");
        ex.printStackTrace();
    }
%>