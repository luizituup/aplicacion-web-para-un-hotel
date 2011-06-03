/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import mvc.model.Cliente;

/**
 *
 * @author usuario
 */
public class EliminarClienteAction extends Action implements Serializable {
    
    public void run() throws ServletException,IOException{

        String Codigo = request.getParameter("Codigo");

        Cliente c = new Cliente();
        c.setCodigo(Integer.parseInt(Codigo));
        System.out.println(c.getCodigo());

        try {
            model.eliminarcliente(Codigo);
            String hotel="/newjsp";
            final String next= hotel;
            RequestDispatcher rd=application.getRequestDispatcher(next);
            if(rd==null)
                throw new ServletException("No se pudo encontrar "+next);
                rd.forward(request,response);
            } catch (SQLException exe) {
                throw new ServletException("Error al Eliminar el Cliente " + exe);
            } catch (Exception ex) {
                throw new ServletException("Error al Eliminar el Cliente " + ex);
            }
    }
}
