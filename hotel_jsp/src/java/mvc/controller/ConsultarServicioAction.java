/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import mvc.model.Servicios;

/**
 *
 * @author hotel balcones
 */
public class ConsultarServicioAction extends Action implements Serializable {

    public void run() throws ServletException, IOException {

       String codigo = request.getParameter("codigo");
       int co= Integer.parseInt(codigo);
       Servicios s = new Servicios();
       s.setCodigo(Integer.parseInt(null));
       System.out.println(s.getCodigo());

        try {
            List li= model.consultarservicio(co);
            for (int i=0;i<li.size();i++){
                s = (Servicios)li.get(i);               
                System.out.println(s.getCodigo());
                System.out.println(s.getCantidad());
                System.out.println(s.getNombre());
                System.out.println(s.getCosto());
            }

            } catch (SQLException exe) {
            throw new ServletException("Error al Consultar el Servicio " + exe);
            } catch (Exception ex) {
            throw new ServletException("Error al Consultar el Servicio " + ex);
            }

            final String next= "/newjsp.jsp";
            RequestDispatcher rd = application.getRequestDispatcher(next);
                if(rd==null)
                    throw new ServletException("No se pudo encontrar "+next);
                    rd.forward(request,response);
    }
}
