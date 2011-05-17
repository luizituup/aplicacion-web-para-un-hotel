

package mvc.controller;

import java.io.*;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.*;
import mvc.model.Cliente;

/**
 *
 * @author usuario
 */
public class ConsultarClienteAction extends Action implements Serializable {

    public void run() throws ServletException,IOException{

         String Cedula = request.getParameter("cedula");
         Cliente c = new Cliente();
         c.setCedula(Integer.parseInt(null));
         System.out.println(c.getCedula());

        try {
            List li= model.consultarcliente(Cedula);
            for (int i=0;i<li.size();i++){
                c = (Cliente)li.get(i);
                System.out.println(c.getCodigo());
                System.out.println(c.getPnombre());
                System.out.println(c.getPapellido());
            }

        } catch (SQLException exe) {
            throw new ServletException("Error al Consultar el Cliente " + exe);
        } catch (Exception ex) {
            throw new ServletException("Error al Consultar el Cliente " + ex);
        }

       final String next= "/newjsp.jsp";
       	  RequestDispatcher rd = application.getRequestDispatcher(next);
        if(rd==null)
            throw new ServletException("No se pudo encontrar "+next);
            rd.forward(request,response);
    }
}
