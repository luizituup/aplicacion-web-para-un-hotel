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
 * @author abministrador
 */
public class Factura implements Serializable {

    private int cod_cliente;
    private int cod_factura;
    private int fechaday;
    private int fechamonth;
    private int fechayear;
    private int  cod_consumo ;
    private int cod_recepcionista;
    private int descuento;
    private int total;
    private int cod_hospedaje;
    private String estado;
    

    public Factura (){

    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setFechayear(int fechayear) {
        this.fechayear = fechayear;
    }

    public void setFechamonth(int fechamonth) {
        this.fechamonth = fechamonth;
    }

    public void setFechaday(int fechaday) {
        this.fechaday = fechaday;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public int getTotal() {
        return total;
    }

    public int getFechayear() {
        return fechayear;
    }

    public int getFechamonth() {
        return fechamonth;
    }

    public int getFechaday() {
        return fechaday;
    }

    public int getDescuento() {
        return descuento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setCod_hospedaje(int cod_hospedaje) {
        this.cod_hospedaje = cod_hospedaje;
    }

    public int getCod_hospedaje() {
        return cod_hospedaje;
    }

    public void setCod_recepcionista(int cod_recepcionista) {
        this.cod_recepcionista = cod_recepcionista;
    }


    public int getCod_recepcionista() {
        return cod_recepcionista;
    }

    public void setCod_factura(int cod_factura) {
        this.cod_factura = cod_factura;
    }

    public int getCod_factura() {
        return cod_factura;
    }

    public int getCod_cliente() {
        return cod_cliente;
    }

    /**
     * @param codcliente the codcliente to set
     */
    public void setCod_cliente(int codcliente) {
        this.cod_cliente = codcliente;
    }

    public void setCod_consumo(int cod_consumo) {
        this.cod_consumo = cod_consumo;
    }

    public int getCod_consumo() {
        return cod_consumo;
    }   
}