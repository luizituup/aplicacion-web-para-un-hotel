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
    private String fecha;
    private int  cod_detalleservicio ;
    private int cod_recepcionista;
    private double descuento;
    private double total;
    private double iva;

    public Factura (){

    }

    public double getIva() {
        return iva;
    }


    public void setIva(double iva) {
        this.iva = iva;
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


  

    public double getDescuento() {
        return descuento;
    }

    public String getFecha() {
        return fecha;
    }

    public double getTotal() {
        return total;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    /**
     * @return the codcliente
     */
    public int getCod_cliente() {
        return cod_cliente;
    }

    /**
     * @param codcliente the codcliente to set
     */
    public void setCod_cliente(int codcliente) {
        this.cod_cliente = codcliente;
    }

    /**
     * @return the cod_detalleservicio
     */
    public int getCod_detalleservicio() {
        return cod_detalleservicio;
    }

    /**
     * @param cod_detalleservicio the cod_detalleservicio to set
     */
    public void setCod_detalleservicio(int cod_detalleservicio) {
        this.cod_detalleservicio = cod_detalleservicio;
    }



    }
