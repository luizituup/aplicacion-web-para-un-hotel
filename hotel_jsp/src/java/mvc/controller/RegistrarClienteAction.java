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
import mvc.model.Cliente;


/**
 *
 * @author hotel balcones
 */
public class RegistrarClienteAction extends Action implements Serializable {

    /**
     * Ejecuta la accion
     */

     String next="";
     HttpSession session =null;//request.getSession(true);

    @Override
     public void run() throws ServletException,IOException{

        // Obtener los parametros
        String cod=request.getParameter("codigo");
        String Pnom=request.getParameter("Pnombre");
        String Snom=request.getParameter("Snombre");
        String Papell=request.getParameter("Papellido");
        String Sapell=request.getParameter("Sapellido");
        String cedu=request.getParameter("cedula");
        String sex=request.getParameter("sexo");
        String direcc=request.getParameter("direccion");
        String tel=request.getParameter("telefono");
        String ema=request.getParameter("email");
        String cod_recep=request.getParameter("cod_recepcionista");


        System.out.println("------"+Pnom);
        System.out.println("------"+Papell);
        System.out.println("------"+cod);


     	Cliente cl= new Cliente ();
        cl.setCodigo(Integer.parseInt(cod));
        cl.setPnombre(Pnom);
        cl.setSnombre(Snom);
        cl.setPapellido(Papell);
        cl.setSapellido(Sapell);
        cl.setCedula(Integer.parseInt(cedu));
        cl.setSexo(sex);
        cl.setDireccion(direcc);
        cl.setTelefono(Integer.parseInt(tel));
        cl.setEmail(ema);
        
        cl.setCod_recepcionista(Integer.parseInt(cod_recep));



     	try{
     	  model.registrarcliente(cl);
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
