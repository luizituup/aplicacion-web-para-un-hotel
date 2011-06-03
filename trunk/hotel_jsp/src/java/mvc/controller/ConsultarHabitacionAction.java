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
import mvc.model.Habitacion;

/**
 *
 * @author Luis
 */
public class ConsultarHabitacionAction extends Action implements Serializable{

    public void run() throws ServletException,IOException{

         String numero = request.getParameter("numero");
         if (numero== null){
             System.out.print("nada");
         }else{
             int nu= Integer.parseInt(numero);
             Habitacion h = new Habitacion ();

            h.setNumero_Habitacion(Integer.parseInt(numero));
            System.out.println(h.getNumero_Habitacion());

        try {
            List li= model.consultarhabitacion(numero);
            for (int i=0;i<li.size();i++){
                h = (Habitacion)li.get(i);
                System.out.println(h.getNumero_Habitacion());
                System.out.println(h.getTipohabitacion());
            
            }

        } catch (SQLException exe) {
            throw new ServletException("Error al Consultar habitacion " + exe);
        } catch (Exception ex) {
            throw new ServletException("Error al Consultar habitacion " + ex);
        }

       final String next= "/ConsultarHabitacion.jsp";
       	  RequestDispatcher rd = application.getRequestDispatcher(next);
        if(rd==null)
            throw new ServletException("No se pudo encontrar "+next);
            rd.forward(request,response);
    }
         }


}
