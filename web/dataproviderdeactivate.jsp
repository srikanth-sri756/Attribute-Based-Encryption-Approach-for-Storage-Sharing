<%@page import="java.sql.PreparedStatement"%>
<%@page import="attributebased.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
  <%

                       
                       String email=request.getQueryString();

                        try {

                            Connection con=Dbconnection.getConnection();

                            String query = "update dataprovider set status='Deactivated' where email=?";
                            //update register set status='yes' where email='"+mail+"'

                            PreparedStatement ps = con.prepareStatement(query);

                           
                           
                            ps.setString(1,email);
                            int k = ps.executeUpdate();

                    

                   

                                                      if (k == 1) {
                                response.sendRedirect("viewdataproviders.jsp?dataproviderdeact=success");
                            } else {
                                out.println("registration failed");
                            }
                                                      } catch (Exception e) {
                                    e.printStackTrace();
                                }

                        %>