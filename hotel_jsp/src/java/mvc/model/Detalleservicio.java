/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Administrador
 */
public class Detalleservicio implements Serializable {

    private int cod_detalleservicio;
    private String fecha;
    private int cod_servicio;
    private int cod_hospedaje;

    public int getCod_detalleservicio() {
        return cod_detalleservicio;
    }

    public void setCod_detalleservicio(int cod_detalleservicio) {
        this.cod_detalleservicio = cod_detalleservicio;
    }

    public int getCod_servicio() {
        return cod_servicio;
    }

    public void setCod_servicio(int cod_servicio) {
        this.cod_servicio = cod_servicio;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFecha() {
        return fecha;
    }

    /**
     * @return the cod_hospedaje
     */
    public int getCod_hospedaje() {
        return cod_hospedaje;
    }

    /**
     * @param cod_hospedaje the cod_hospedaje to set
     */
    public void setCod_hospedaje(int cod_hospedaje) {
        this.cod_hospedaje = cod_hospedaje;
    }

    
}
