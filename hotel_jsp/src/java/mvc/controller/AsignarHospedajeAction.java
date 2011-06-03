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
import mvc.model.Hospedaje;

/**
 *
 * @author Luis
 */

public class AsignarHospedajeAction extends Action implements Serializable {

     String next="";
     HttpSession session =null;//request.getSession(true);

    @Override
    public void run() throws ServletException,IOException{

        // Obtener los parametros
        String cod=request.getParameter("codigo");
        String iniday=request.getParameter("inicioday");
        String inimonth=request.getParameter("iniciomonth");
        String iniyear=request.getParameter("inicioyear");
        String finday=request.getParameter("finalday");
        String finmonth=request.getParameter("finalmonth");
        String finyear=request.getParameter("finalyear");
        String val=request.getParameter("valor");
        String cod_cli=request.getParameter("cod_cliente");
        String cod_habi=request.getParameter("cod_habitacion");
        String cod_recep=request.getParameter("cod_recepcionista");
     
        String acomp=request.getParameter("acompañantes");

        System.out.println("------"+cod);

     	Hospedaje h = new Hospedaje();
        h.setCod_hospedaje(Integer.parseInt(cod));
        h.setInicioday(Integer.parseInt(iniday));
        h.setIniciomonth(Integer.parseInt(inimonth));
        h.setInicioyear(Integer.parseInt(iniyear));
        h.setFinalday(Integer.parseInt(finday));
        h.setFinalmonth(Integer.parseInt(finmonth));
        h.setFinalyear(Integer.parseInt(finyear));
        h.setValor(Integer.parseInt(val));
        h.setCod_cliente(Integer.parseInt(cod_cli));
        h.setCod_habitacion(Integer.parseInt(cod_habi));
        h.setCod_recepcionista(Integer.parseInt(cod_recep));
        h.setAcompañante(acomp);

     	try{
     	  model.asignarhospedaje(h);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Asignar Hospedaje: "+ex);
	}
     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
            if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
                rd.forward(request,response);
        }
}