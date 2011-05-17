/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

/**
 *
 * @author usuario
 */
public class EliminarClienteAction extends Action implements Serializable {
    
    public void run() throws ServletException,IOException{

        String Codigo = request.getParameter("Codigo");

//        Cliente c = new Cliente();
//        c.setCodigo(Integer.parseInt(Id));
//        System.out.println(c.getCodigo());

        try {
            model.eliminarcliente(Codigo);
            String hotel="/newjsp";
            final String next= hotel;
            RequestDispatcher rd=application.getRequestDispatcher(next);
            if(rd==null)
                throw new ServletException("No se pudo encontrar "+next);
                rd.forward(request,response);
            } catch (SQLException exe) {
                throw new ServletException("Error al Eliminar el Cliente " + exe);
            } catch (Exception ex) {
                throw new ServletException("Error al Eliminar el Cliente " + ex);
            }

         /* try{
                try{
                    String usuario=request.getParameter("login");
                    String contraseña=request.getParameter("password");
                    Usuario us=(Usuario)model.consultarUsuario(usuario,contraseña);

                    request.setAttribute("user",us);

                    request.getSession().setAttribute("login",us.getLogin());
                    request.setAttribute("nombres",us.getNombres());
                    request.setAttribute("apellidos",us.getApellidos());
                    request.setAttribute("celular",us.getCelular());
                    request.setAttribute("telefono",us.getTelefono());
                    request.setAttribute("email",us.getEmail());*/
	/*	    System.out.println(us.getLogin());

                    }catch (Exception e){
		     	throw new ServletException(e.getMessage());
		     }
                        }catch(NumberFormatException e){
                            throw new NumberFormatException(e.getMessage());
                        }*/
    }
}
