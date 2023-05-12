 <%@page import="java.sql.*"%>
<%@page import="attributebased.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
       // String user=null;
        //String password=null;
	Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from cloud where user='"+username+"' and pwd='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(2);
		   session.setAttribute("user",user);
		   System.out.println("User:"+user);
			response.sendRedirect("cloudhome.jsp?login=login success");
        }
       else 
        {
            response.sendRedirect("cloudlogin.jsp?login1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in cloudlogact"+e.getMessage());
    }
%>



