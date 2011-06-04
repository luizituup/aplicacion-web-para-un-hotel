

package mvc.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author a101
 */

public class Habitacion implements Serializable {

    private int Numero_Habitacion;
    private String Estado;
    private String Tipohabitacion;
    private int Costo;
    private int numerocamas;
    private String aire;
    private String detalles;
    private int cod_recepcionista;

    public int getNumero_Habitacion() {
        return Numero_Habitacion;
    }

    public String getEstado() {
        return Estado;
    }

    


    public void setNumero_Habitacion(int Numero_Habitacion) {
        this.Numero_Habitacion = Numero_Habitacion;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public void setCosto(int Costo) {
        this.Costo = Costo;
    }

    public void setTipohabitacion(String Tipohabitacion) {
        this.Tipohabitacion = Tipohabitacion;
    }

    public String getAire() {
        return aire;
    }

    public int getCod_recepcionista() {
        return cod_recepcionista;
    }

    public String getDetalles() {
        return detalles;
    }

    public int getNumerocamas() {
        return numerocamas;
    }

    public void setAire(String aire) {
        this.aire = aire;
    }

    public void setCod_recepcionista(int cod_recepcionista) {
        this.cod_recepcionista = cod_recepcionista;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public void setNumerocamas(int numerocamas) {
        this.numerocamas = numerocamas;
    }

    

    public String getTipohabitacion() {
        return Tipohabitacion;
    }


    public int getCosto() {
        return Costo;
    }



    public static Habitacion load(ResultSet rs)throws SQLException{

		Habitacion s = new Habitacion ();
                s.setNumero_Habitacion(rs.getInt(1));
                s.setEstado(rs.getString(2));
                s.setTipohabitacion(rs.getString(3));
                s.setCosto(rs.getInt(4));
                s.setNumerocamas(rs.getInt(5));
                s.setAire(rs.getString(6));
                s.setDetalles(rs.getString(7));
                s.setCod_recepcionista(rs.getInt(8));

		return s;
	}
}