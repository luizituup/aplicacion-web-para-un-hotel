
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
public class ConsultarCliente4Action extends Action implements Serializable {

    public void run() throws ServletException,IOException{

         String Codigo = request.getParameter("codigo");
         if (Codigo== null){
             System.out.print("nada");

         }else{
            Cliente c = new Cliente();
         c.setCodigo(Integer.parseInt(Codigo));
         System.out.println(c.getCodigo());

        try {
            List li= model.consultarcliente(Codigo);
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

       final String next= "/AgregarConsumo.jsp";
       	  RequestDispatcher rd = application.getRequestDispatcher(next);
        if(rd==null)
            throw new ServletException("No se pudo encontrar "+next);
            rd.forward(request,response);
        }
    }
}