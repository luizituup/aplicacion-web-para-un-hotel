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
import mvc.model.Habitacion;


/**
 *
 * @author hotel balcones
 */
public class CrearHabitacionAction extends Action implements Serializable {

    /**
     * Ejecuta la accion
     */

     String next="";
     HttpSession session =null;//request.getSession(true);

    @Override
     public void run() throws ServletException,IOException{

        // Obtener los parametros de la habitacion
        String  num=request.getParameter("Numero_Habitacion");
        String estado=request.getParameter("Estado");
        String tipoh=request.getParameter("Tipohabitacion");
        String costo=request.getParameter("Costo");
        String numeroc=request.getParameter("numerocamas");
        String aire=request.getParameter("aire");
        String detalles=request.getParameter("detalles");

        String cod_recep=request.getParameter("cod_recepcionista");


        System.out.println("------"+num);
        System.out.println("------"+estado);
        System.out.println("------"+tipoh);


     	Habitacion h= new Habitacion();
        h.setNumero_Habitacion(Integer.parseInt(num));
        h.setEstado(estado);
        h.setTipohabitacion(tipoh);
        h.setCosto(Integer.parseInt(costo));
        h.setNumerocamas(Integer.parseInt(numeroc));
        h.setAire(aire);
        h.setDetalles(detalles);

        h.setCod_recepcionista(Integer.parseInt(cod_recep));



     	try{
     	  model.crearhabitacion(h);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Crear la habitacion: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
        rd.forward(request,response);
        }
}

