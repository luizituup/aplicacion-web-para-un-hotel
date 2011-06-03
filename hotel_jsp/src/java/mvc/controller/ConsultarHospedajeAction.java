package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import mvc.model.Hospedaje;

/**
 *
 * @author hotel balcones
 */
public class ConsultarHospedajeAction extends Action implements Serializable {

    public void run() throws ServletException, IOException {

       String codigo = request.getParameter("codigo");
       if (codigo==null){
       System.out.print("nadaaaa.....");
       }else{
       int co= Integer.parseInt(codigo);
       Hospedaje s = new Hospedaje ();
//       s.setCodigo(co);
       s.setCod_hospedaje(Integer.parseInt(codigo));
       System.out.println(s.getCod_hospedaje());

        try {
            List li= model.consultarhospedaje(codigo);
            for (int i=0;i<li.size();i++){
                s = (Hospedaje)li.get(i);
                System.out.println(s.getCod_hospedaje());


            }

            } catch (SQLException exe) {
            throw new ServletException("Error al Consultar el hospedaje " + exe);
            } catch (Exception ex) {
            throw new ServletException("Error al Consultar el hospedaje" + ex);
            }

            final String next= "/ConsultarHospedaje.jsp";
            RequestDispatcher rd = application.getRequestDispatcher(next);
                if(rd==null)
                    throw new ServletException("No se pudo encontrar "+next);
                    rd.forward(request,response);
    }
       }

}