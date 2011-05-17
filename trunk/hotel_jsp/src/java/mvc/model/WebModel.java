/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.model;

/**
 *
 * @author Alex
 */
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.SQLException;
/**
 *  Subclase de Model especifica de HTPP. Implementa vinculacion y
 *  desviculacion de sesion. Hace posible que la conexion a base de
 *  datos se desconecte cuando transcurre completamente el tiempo
 *  de espera de la sesion o cuando es invalida.
 */
public class WebModel extends Model implements HttpSessionBindingListener{

    /**
     * Inicializa la conexion a base de datos
     */
     public void init(ServletContext context)throws ServletException{
        // Configura la propiedad del controlador JDBC del  modelo
        // a partir de un valor de ambito de aplicacion del web.xml


        String jdbcDriver=context.getInitParameter("jdbcDriver");
        if(jdbcDriver==null)
            throw new ServletException ("Propiedad jdbcDriver no especificada");
        setJdbcDriver(jdbcDriver);
		//System.out.println("jdbcDriver es: "+jdbcDriver);

//************************************************
        String databaseURL=context.getInitParameter("databaseURL");
        if(databaseURL==null)
            throw new ServletException ("Propiedad databaseURL no especificada");
        setJdbcUrl(databaseURL);
            //System.out.println("databaseURL: "+databaseURL);

//**************************************************
        String databaseUser=context.getInitParameter("databaseUser");
        if (databaseUser == null)
        	databaseUser = "";
        this.setUser(databaseUser);
            //System.out.println("databaseUser: "+databaseUser);

//**************************************************
        String databasePassword=context.getInitParameter("databasePassword");
        if (databasePassword == null)
        	 databasePassword = "";
        this.setPassword(databasePassword);
            //System.out.println("databasePassword: "+databasePassword);

//**************************************************
        String database=context.getInitParameter("database");
        if (database == null)
        	 throw new ServletException ("Propiedad database no especificada");
        this.setDatabase(database);
            //System.out.println("database: "+database);
//**************************************************
    try {
            conectar();
        } catch (SQLException e){
              throw new ServletException (e.getMessage());
        }
     }

     /**
      * Invocado cuando el modelo se vincula a una sesion
      */
    @Override
      public void valueBound(HttpSessionBindingEvent event){
      }

     /**
      * Invocado cuando el modelo se quita de una sesion
      */
    @Override
      public void valueUnbound(HttpSessionBindingEvent event) {

        disconnect();
      }
}
