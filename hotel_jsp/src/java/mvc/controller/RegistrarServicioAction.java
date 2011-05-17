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
import mvc.model.Servicios;

/**
 *
 * @author hotel balcones
 */
public class RegistrarServicioAction extends Action implements Serializable {

     String next="";
     HttpSession session =null;//request.getSession(true);

     @Override
     public void run() throws ServletException,IOException{

        // Obtener los parametros
        String cod=request.getParameter("codigo");
        String can=request.getParameter("cantidad");
        String nom=request.getParameter("nombre");
        String cos=request.getParameter("costo");

        System.out.println("------"+cod);
        System.out.println("------"+can);
        System.out.println("------"+nom);
        System.out.println("------"+cos);


     	Servicios s= new Servicios ();
        s.setCodigo(Integer.parseInt(cod));
        s.setCantidad(Integer.parseInt(can));
        s.setNombre(nom);
        s.setCosto(Integer.parseInt(cos));

     	try{
     	  model.registrarservicios(s);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Registrar Servicios: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
                rd.forward(request,response);
        }
}
