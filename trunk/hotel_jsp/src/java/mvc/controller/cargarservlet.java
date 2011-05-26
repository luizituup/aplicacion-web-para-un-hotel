/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Alex
 */
public class cargarservlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        } finally { 
            out.close();
        }
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
        
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        File yourTempDirectory= new File("D:\\PruebaArchivos");
       
        System.out.println("---***---***---****");
        DiskFileItemFactory factory = new DiskFileItemFactory();


        factory.setSizeThreshold(170000);
        factory.setRepository(yourTempDirectory);
        ServletFileUpload upload = new ServletFileUpload(factory);
        System.out.println("--1");
        upload.setSizeMax(1700000);
        System.out.println("--2");
        try {
            System.out.println("--3");
            List  items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            System.out.println("--4");
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                System.out.println("--5");
                if(!item.isFormField() && item.getSize()>0){
                    System.out.println("--6--2");
                    processUploadedFile(item);
                }
            }
        } catch (FileUploadException ex) {
            Logger.getLogger(cargarservlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception exc){
            Logger.getLogger(cargarservlet.class.getName()).log(Level.SEVERE, null, exc);
        }
        

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processUploadedFile(FileItem item) {
        System.out.println("----------------------"+item.getName());
                try {
            item.write(new File("D:\\PruebaArchivos\\" + item.getName()));
        } catch (Exception ex) {
            Logger.getLogger(cargarservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
