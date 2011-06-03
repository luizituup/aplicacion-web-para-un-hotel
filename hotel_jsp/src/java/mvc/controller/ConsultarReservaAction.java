package mvc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import mvc.model.Reserva;

/**
 *
 * @author hotel balcones
 */
public class ConsultarReservaAction extends Action implements Serializable {

    public void run() throws ServletException, IOException {

       String codigo = request.getParameter("codigo");
       if (codigo==null){
       System.out.print("nadaaaa.....");
       }else{
       int co= Integer.parseInt(codigo);
       Reserva s = new Reserva ();
//       s.setCodigo(co);
       s.setCodigo(Integer.parseInt(codigo));
       System.out.println(s.getCodigo());

        try {
            List li= model.consultarreserva(codigo);
            for (int i=0;i<li.size();i++){
                s = (Reserva)li.get(i);
                System.out.println(s.getCodigo());
                System.out.println(s.getCosto());

            }

            } catch (SQLException exe) {
            throw new ServletException("Error al Consultar el Reserva " + exe);
            } catch (Exception ex) {
            throw new ServletException("Error al Consultar el Reserva " + ex);
            }

            final String next= "/ConsultarReserva.jsp";
            RequestDispatcher rd = application.getRequestDispatcher(next);
                if(rd==null)
                    throw new ServletException("No se pudo encontrar "+next);
                    rd.forward(request,response);
    }
       }

}
