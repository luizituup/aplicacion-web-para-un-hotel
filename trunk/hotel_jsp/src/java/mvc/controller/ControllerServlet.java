/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvc.model.Model;

/**
 *
 * @author Alex
 */


/**
 * El componente controlador de la arquitectura Modelo-Vista-Controlador
 * para el sistema Sife.Net
 */
public class ControllerServlet extends HttpServlet{
  /**
   * Gestiona una peticion GET HTPP
   */
    @Override
   public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
      doPost(request,response);
   }

  /**
   * Gestiona una peticion POST HTPP
   */
    @Override
   public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
      HttpSession session=request.getSession();
      Map actionMap=(Map)session.getAttribute("actionMap");
      if (actionMap==null){
          actionMap=new HashMap();
          session.setAttribute("actionMap",actionMap);
      }


      ServletContext context= getServletContext();
      try {
          // Obtener el estado y el evento de la informacion de la ruta
          String pathInfo=request.getPathInfo();
          if(pathInfo==null)
            throw new ServletException("Estado Interno Invalido - No hay informacion de la ruta");

          // Cargar el objeto accion (action) que gestiona el estado y el evento
          Action action= (Action) actionMap.get(pathInfo);
          if(action==null){
            // Esta es la primera vez que el servlet esta accion
            // Obtiene el nombre del estado y el evento de pathInfo(informacion de la ruta)

            StringTokenizer st=  new StringTokenizer(pathInfo,"/");
            if(st.countTokens() !=2)
              throw new ServletException("Estado Interno Invalido - No hay informacion de la ruta ["
                                         + pathInfo+"]" );
            //Registrar
            String state = st.nextToken();
            //Cliente
            String event= st.nextToken();

            // Formar el nombre de la clase a partir del estado y el evento.
            //mvc.controller.RegistrarClienteAction
            String className="mvc.controller."+state+event+"Action";

            // Cargar la clase y crea una instancia
            try {

                Class actionClass= Class.forName(className);
                action=(Action)actionClass.newInstance();
            }
             catch (ClassNotFoundException e) {
                    throw new ServletException("No se pudo cargar la clase "+ className
                                               + ": "+e.getMessage());
                                              }
             catch (InstantiationException e) {
                    throw new ServletException("No se pudo crear un ejemplar de "+ className
                                               + ": "+ e.getMessage());
                                              }
             catch (IllegalAccessException e) {
                    throw new ServletException(className + ": "+ e.getMessage());
                                              }

            // Guardar en memoria cache el ejemplar en un plan de accion
            actionMap.put(pathInfo,action);
          }// End If

          // Asegurar que existe un modelo en la session
          Model model=(Model)session.getAttribute("model");
          if(model==null)
              throw new ServletException("Modelo No encontrado en la session");

          // Ahora ejecutar la accion. La accion deberia ejecutar a
          // RequestDispatcher.forward() cuando termine
          action.setRequest(request);
          action.setResponse(response);
	  action.setApplication(context);
          action.setModel(model);
          action.run();
      } catch (ServletException e) {
             // Usar la pagina Jsp de error para todos los errores de servlet
         request.setAttribute("javax.servlet.jsp.jspException",e);
         String next = "/ErrorPages.jsp";
     	 RequestDispatcher rd=context.getRequestDispatcher(next);
          if(rd==null)
                throw new ServletException("No se pudo encontrar la pagina ErrorPage");
          else{
                if(response.isCommitted()){
                    rd.include(request,response);
                }else{
                    rd.forward(request,response);
                 }
          }

      }
   }// END doPost

}