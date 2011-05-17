/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.controller;

/**
 *
 * @author Alex
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import mvc.model.Model;

/**
* La clase base para todas las transiciones de estado
*/

public abstract class Action{
  protected HttpServletRequest request;
  protected HttpServletResponse response;
  protected ServletContext application;
  protected Model model;

  /***
   * Ejecuta la accion. Las subclases deberian sobreescribir
   * este metodo y hacer que reenvie la peticion  a la
   * siguiente componenete de la vista cuando termine de procesar.
   */
   public abstract void run() throws ServletException,IOException;

   /**
    * Configura la peticion.
    * @param request la peticion
    */
    public void setRequest(HttpServletRequest request){
      this.request=request;
    }

   /**
    * Configura la respuesta.
    * @param response la respuesta
    */
    public void setResponse(HttpServletResponse response){
      this.response=response;
    }

   /**
    * Configura el contexto de servlet
    * @param application la applicacion.
    */
    public void setApplication(ServletContext application){
      this.application=application;
    }

   /**
    * Configura el modelo.
    * @param model el modelo
    */
    public void setModel(Model model){
      this.model=model;
    }
}
