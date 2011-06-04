package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import mvc.model.Factura;

/**
 *
 * @author eduardo
 */
public class CrearFacturaAction extends Action implements Serializable {

     String next="";
     HttpSession session =null;//request.getSession(true);

    @Override
     public void run() throws ServletException,IOException{

        // Obtener los parametros
        String cod=request.getParameter("codigo");
        String re=request.getParameter("cod_recepcionista");
        String cli=request.getParameter("cod_cliente");
        String con=request.getParameter("cod_consumo");
        String hos=request.getParameter("cod_hospedaje");
        String fday=request.getParameter("fechaday");
        String fmonth=request.getParameter("fechamonth");
        String fyear=request.getParameter("fechayear");
        String des=request.getParameter("descuento");
        String to=request.getParameter("total");
        String es=request.getParameter("estado");

        System.out.println("------"+cod);

     	Factura f= new Factura();

        f.setCod_factura(Integer.parseInt(cod));
        f.setCod_recepcionista(Integer.parseInt(re));
        f.setCod_cliente(Integer.parseInt(cli));
        f.setCod_consumo(Integer.parseInt(con));
        f.setCod_hospedaje(Integer.parseInt(hos));
        f.setFechaday(Integer.parseInt(fday));
        f.setFechamonth(Integer.parseInt(fmonth));
        f.setFechayear(Integer.parseInt(fyear));
        f.setDescuento(Integer.parseInt(des));
        f.setTotal(Integer.parseInt(to));
        f.setEstado(es);

     	try{
     	  model.generarfactura(f);
     	}catch(Exception ex){
     	   throw new ServletException("Error al Generar factura: "+ex);
	}

     	next = "/newjsp.jsp";
     	RequestDispatcher rd=application.getRequestDispatcher(next);
        if(rd==null)
          	throw new ServletException("No se pudo encontrar "+next);
        rd.forward(request,response);
        }
    }

