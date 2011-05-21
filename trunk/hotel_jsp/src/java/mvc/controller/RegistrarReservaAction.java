/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import mvc.model.Reserva;

/**
 *
 * @author Luis
 */
public class RegistrarReservaAction extends Action implements Serializable {

     String next="";
     HttpSession session =null;//request.getSession(true);

     public void run () throws ServletException,IOException{
        String cod_c= request.getParameter("cod_cliente");
        String cod_r= request.getParameter("cod_reserva");
        String f_inicio=request.getParameter("f_inicio");
        String f_final=request.getParameter("f_final");
        String numper= request.getParameter("n_personas");
        String cod_h= request.getParameter("cod_habitacion");
        String cod_rep= request.getParameter("cod_recepcionista");

        System.out.println("------"+ cod_r);

        Reserva r=new Reserva ();
        int cod_cliente= Integer.parseInt(cod_c);
        int cod_reserva = Integer.parseInt(cod_r);
        int n_persona = Integer.parseInt(numper);
        int cod_habitacion = Integer.parseInt(cod_h);
        int cod_recepcionista = Integer.parseInt(cod_rep);
        r.setCodigo_Cliente(cod_cliente);
        r.setCodigo(cod_reserva);
        r.setFecha_inicio( f_inicio);
        r.setFecha_final(f_final);
        r.setNumeropersonas(n_persona);
        r.setCodigo_Habitacion(cod_habitacion);
        r.setCodigo_Recepcionista(cod_recepcionista);

     	try{
     	  model.registrarreserva(r);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Registrar Cliente: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
        rd.forward(request,response);

     }
}
