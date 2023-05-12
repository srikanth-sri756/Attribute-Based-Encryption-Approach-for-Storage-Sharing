/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package attributebased;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author java2
 */
public class encrypt1 extends HttpServlet {

    //private static java.sql.Date getCurrentDate() //{
        //java.util.Date today = new java.util.Date();
        //return new java.sql.Date(today.getTime());
    //}

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection con;
            PreparedStatement pstm = null;
             String filename = "";
             String owner = "";
             
             String privatekey = "";
             String policy = "";
             String time = "";
             String exp = "";
            String branch = "";
            String str = "";
            String fname = "";
         
            try {
                boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
                if (!isMultipartContent) {
                    return;
                }
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                try {
                    List<FileItem> fields = upload.parseRequest(request);
                    Iterator<FileItem> it = fields.iterator();
                    if (!it.hasNext()) {
                        return;
                    }
                    
                    while (it.hasNext()) {
                        FileItem fileItem = it.next();
                       
                         fname = fileItem.getName();
                          if (fileItem.getFieldName().equals("privatekey")) {
                            privatekey = fileItem.getString();
                            System.out.println("File Name" + privatekey);
                        
                        }
                          
                            if (fileItem.getFieldName().equals("policy")) {
                            policy = fileItem.getString();
                            System.out.println("File Name" + policy);
                        
                        }
                            
                              if (fileItem.getFieldName().equals("time")) {
                            time = fileItem.getString();
                            System.out.println("File Name" + time);
                        
                        }
                              
                                if (fileItem.getFieldName().equals("exp")) {
                            exp = fileItem.getString();
                            System.out.println("File Name" + exp);
                        
                        }
                                
                                  if (fileItem.getFieldName().equals("branch")) {
                            branch = fileItem.getString();
                            System.out.println("File Name" + branch);
                        
                        }
                        
                        if (fileItem.getFieldName().equals("filename")) {
                            filename = fileItem.getString();
                            System.out.println("File Name" + filename);
                        
                        }
                        if(fileItem.getFieldName().equals("owner")) {
                           owner = fileItem.getString();
                            System.out.println("File Keyword" + owner);
                            
                        
                        }
                        if(fileItem.getFieldName().equals("data")) {
                           str = getStringFromInputStream(fileItem.getInputStream());
                            System.out.println("data" + str);
                        }
                        
                       }
                        
                    
                    String polatt = "D:/policy_attri.txt";
                    String polatt1 = "D:/keypolicy_attri.txt";
                    String finalkey=null;
           
        // create list one and store values
         Map<String, String[]> map = new HashMap<String, String[]>();
          String[] attributesArray = new String[]{exp, branch};
        map.put(policy, attributesArray);
            
        
        
         FileWriter fstream;
         BufferedWriter output;
         fstream = new FileWriter(polatt);
         output = new BufferedWriter(fstream);
            
            for ( String key : map.keySet() )
            {
                      
                finalkey = key;
                 
             }
            
            for (int i=0;i<2;i++) 
            {
                     output.write(finalkey  +" " + attributesArray[i]  );
             output.append(" ");
              }
               
             // code for writiing policy and respective key  
             FileWriter fstream1;
         BufferedWriter output1;
         fstream1 = new FileWriter(polatt1);
         output1 = new BufferedWriter(fstream1);
         String key1= privatekey;
         String sales_value = policy;         
                
         output1.write(key1  +" " + sales_value +"\n");
         output1.close();
         output.close();
                    
                    
                            try {
                                con = Dbconnection.getConnection();
                                pstm = con.prepareStatement("insert into upload (filename, data, owner,skey,policy,time,exp,branch)values(?,?,?,?,?,?,?,?)");
                               
                               
                               byte[] bs = Base64.decode(privatekey);
                               SecretKey secretKey = new SecretKeySpec(bs, "AES");
            
                                String cipher = new encryption().encrypt(str, secretKey);
                                System.out.println(str);
                                
                                pstm.setString(1, filename);
                                pstm.setString(2, cipher);
                                pstm.setString(3, owner);
                                pstm.setString(4, privatekey);
                                pstm.setString(5, policy);
                                pstm.setString(6, time);
                                pstm.setString(7, exp);
                                pstm.setString(8, branch);
                                /*Cloud Start*/
                                File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input"+fname);
                                FileWriter fw = new FileWriter(f);
                                fw.write(cipher);
                                fw.close();
                               // Ftpcon ftpcon = new Ftpcon();
                                //ftpcon.upload(f, filename);
                                /*Cloud End*/
                                int i = pstm.executeUpdate();
                                if (i == 1) {
                                    response.sendRedirect("dataproviderencryptkeys.jsp?upload=File Upload Success");
                                } else {
                                    response.sendRedirect("dataproviderencryptkeys.jsp?upload1=File Upload Failed");
                                }
                                con.close();
                            } catch (Exception e) {
                                 response.sendRedirect("dataproviderencryptkeys.jsp?upload2=File Already Uploaded Failed");
                                out.println(e.toString());
                            }
                    
                    
                } catch (FileUploadException e) {
                } catch (Exception ex) {
                    Logger.getLogger(encrypt1.class.getName()).log(Level.SEVERE, null, ex);
                }
            } finally {
                out.close();
            }
        }
    }

    private static String getStringFromInputStream(InputStream is) {
        BufferedReader br = null;
        StringBuilder sb = new StringBuilder();
        String line;
        try {
            br = new BufferedReader(new InputStreamReader(is));
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
        } catch (IOException e) {
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                }
            }
        }
        return sb.toString();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
