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
 * @author Usuario
 */
public class Reserva implements Serializable{

    private int Codigo;
    private String fecha_inicio;
    private String fecha_final;
    private int Codigo_Habitacion;
    private int Codigo_Recepcionista;
    private int Codigo_Cliente;

    /**
     * @return the Codigo
     */
    public int getCodigo() {
        return Codigo;
    }

    /**
     * @param Codigo the Codigo to set
     */
    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    /**
     * @return the fecha_inicio
     */
    public String getFecha_inicio() {
        return fecha_inicio;
    }

    /**
     * @param fecha_inicio the fecha_inicio to set
     */
    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    /**
     * @return the fecha_final
     */
    public String getFecha_final() {
        return fecha_final;
    }

    /**
     * @param fecha_final the fecha_final to set
     */
    public void setFecha_final(String fecha_final) {
        this.fecha_final = fecha_final;
    }

    /**
     * @return the Codigo_Habitacion
     */
    public int getCodigo_Habitacion() {
        return Codigo_Habitacion;
    }

    /**
     * @param Codigo_Habitacion the Codigo_Habitacion to set
     */
    public void setCodigo_Habitacion(int Codigo_Habitacion) {
        this.Codigo_Habitacion = Codigo_Habitacion;
    }

    /**
     * @return the Codigo_Recepcionista
     */
    public int getCodigo_Recepcionista() {
        return Codigo_Recepcionista;
    }

    /**
     * @param Codigo_Recepcionista the Codigo_Recepcionista to set
     */
    public void setCodigo_Recepcionista(int Codigo_Recepcionista) {
        this.Codigo_Recepcionista = Codigo_Recepcionista;
    }

    /**
     * @return the Codigo_Cliente
     */
    public int getCodigo_Cliente() {
        return Codigo_Cliente;
    }

    /**
     * @param Codigo_Cliente the Codigo_Cliente to set
     */
    public void setCodigo_Cliente(int Codigo_Cliente) {
        this.Codigo_Cliente = Codigo_Cliente;
    }

}
