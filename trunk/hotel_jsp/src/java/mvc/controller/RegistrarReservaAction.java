/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
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
        
        String cod= request.getParameter("codigo");
        String iniday=request.getParameter("inicioday");
        String inimonth=request.getParameter("iniciomonth");
        String iniyear=request.getParameter("inicioyear");
        String finday=request.getParameter("finalday");
        String finmonth=request.getParameter("finalmonth");
        String finyear=request.getParameter("finalyear");
        String estad=request.getParameter("estado");
        String cost=request.getParameter("costo");
        String nh= request.getParameter("n_habitacion");
        String numper= request.getParameter("n_personas");
        String cod_rep= request.getParameter("cod_recepcionista");
        String cod_cli= request.getParameter("cod_cliente");

        System.out.println("------"+ cod);

        Reserva r=new Reserva ();
        r.setCodigo(Integer.parseInt(cod));
        r.setInicioday(Integer.parseInt(iniday));
        r.setIniciomonth(Integer.parseInt(inimonth));
        r.setInicioyear(Integer.parseInt(iniyear));
        r.setFinalday(Integer.parseInt(finday));
        r.setFinalmonth(Integer.parseInt(finmonth));
        r.setFinalyear(Integer.parseInt(finyear));
        r.setEstado(estad);
        r.setCosto(Integer.parseInt(cost));
        r.setNumero_Habitacion(Integer.parseInt(nh));
        r.setNumeropersonas(Integer.parseInt(numper));
        r.setCodigo_Recepcionista(Integer.parseInt(cod_rep));
        r.setCodigo_Cliente(Integer.parseInt(cod_cli));

     	try{
     	  model.registrarreserva(r);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Registrar Reserva: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
        rd.forward(request,response);

     }
}
