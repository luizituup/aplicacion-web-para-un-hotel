package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import mvc.model.Cliente;


public class ModificarClienteAction extends Action implements Serializable{
     
     String next="";
     HttpSession session =null;
     public void run() throws ServletException,IOException{
         
            Cliente c =new Cliente();
            String codi=request.getParameter("codigo");
            String Pnom=request.getParameter("Pnombre");
            String Snom=request.getParameter("Snombre");
            String Papell=request.getParameter("Papellido");
            String Sapell=request.getParameter("Sapellido");
            String cdu = request.getParameter("cedula");
            String sex=request.getParameter("sexo");
            String Direccion = request.getParameter("Direccion");
            String Telefono = request.getParameter("Telefono");
            String Email = request.getParameter("Email");
                                      
           //<%=CONTROLLER%>/Modificar/Cliente
            
            c.setCedula(Integer.parseInt(cdu));            
            c.setPnombre(Pnom);
            c.setSnombre(Snom);
            c.setPapellido(Papell);
            c.setSapellido(Sapell);
            c.setCodigo(Integer.parseInt(codi));
            c.setSexo(sex);
            c.setDireccion(Direccion);
            c.setTelefono(Integer.parseInt(Telefono));           
            c.setEmail(Email);

            try {
            model.modificarcliente(c);
        } catch (Exception ex) {
            throw new ServletException("Error al Modificar el Cliente " + ex);
        }
            next = "/newjsp.jsp";
            RequestDispatcher rd = application.getRequestDispatcher(next);
            if (rd == null)
                throw new ServletException("No se pudo encontrar " + next);
                rd.forward(request, response);

     }

     }