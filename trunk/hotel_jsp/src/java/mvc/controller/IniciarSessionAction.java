package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import mvc.model.Model;
import mvc.model.Usuario;

public class IniciarSessionAction extends Action implements Serializable {
    String next="";
    HttpSession session = null;


public void run() throws ServletException,IOException{
        System.out.println("111111111111");

       String Tipos=request.getParameter("tipo");
       String clave=request.getParameter("clave");
       int cla=Integer.parseInt(clave);
       session=request.getSession(true);
       Model mo=(Model)session.getAttribute("model");


       Usuario usu=new Usuario();
       usu.setTipoUsuario(Tipos);
       usu.setClave(cla);

       //String Tipo="";
//        su =new Controladorusuario();
//       su.setModel(mo);

          System.out.println("<tipo QUE LLEGA:"+Tipos);
          try{
                System.out.println("fbsfdhfsdfksklfnadlksf");
               if(model.existeUsuario(usu)){
                   System.out.println("22222222");
                   if(Tipos.equals("Recepcionista")){
                        next="/Administrador.jsp";
                   }else if(Tipos.equals("Cliente")){
                        next="/AdminCliente.jsp";
                   }else{
                       throw new ServletException("No se encuentra el tipo, o existe un error ");
                   }
                    System.out.println("Tipos llegadows;"+Tipos);
                    session.setAttribute("Tipos",Tipos);
              }
           }catch(Exception ex){
               throw new ServletException("Error al verificar usuario: "+ex);
           }
          RequestDispatcher rd=application.getRequestDispatcher(next);
          if(rd==null)
                throw new ServletException("No se pudo encontrar "+next);
                rd.forward(request,response);

       }
}

