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
import mvc.model.Consumo;

/**
 *
 * @author Luis
 */
public class ResgistrarConsumoAction extends Action implements Serializable {

     String next="";
     HttpSession session =null;//request.getSession(true);

    @Override
     public void run() throws ServletException,IOException{

        // Obtener los parametros
        String cod=request.getParameter("codigo");
        String codc=request.getParameter("cod_cliente");
        String ser=request.getParameter("servicios");
        String cant=request.getParameter("cantidad");
        String fday=request.getParameter("fechaday");
        String fmonth=request.getParameter("fechamonth");
        String fyear=request.getParameter("fechayear");

        System.out.println("------"+cod);

     	Consumo con= new Consumo();
        con.setCodigo(Integer.parseInt(cod));
        con.setCod_cliente(Integer.parseInt(codc));
        con.setServicios(Integer.parseInt(ser));
        con.setCantidad(Integer.parseInt(cant));
        con.setFechaday(Integer.parseInt(fday));
        con.setFechamonth(Integer.parseInt(fmonth));
        con.setFechayear(Integer.parseInt(fyear));

     	try{
     	  model.registrarconsumo(con);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Registrar Consumo: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
        rd.forward(request,response);
        }
}
