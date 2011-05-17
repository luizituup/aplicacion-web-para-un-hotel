

package mvc.model;

import java.io.Serializable;

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
    private int cod_tipohab;
    private int cod_recepcionista;

    public int getNumero_Habitacion() {
        return Numero_Habitacion;
    }

    public String getEstado() {
        return Estado;
    }

    public String getTipohabitacion() {
        return Tipohabitacion;
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

    public int getCod_tipohab() {
        return cod_tipohab;
    }

    public void setCod_tipohab(int cod_tipohab) {
        this.cod_tipohab = cod_tipohab;
    }

    public int getCosto() {
        return Costo;
    }
}