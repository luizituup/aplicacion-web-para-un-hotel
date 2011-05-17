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
public class Hospedaje implements Serializable {

    private int cod_hospedaje;
    private String finicio;
    private String ffinal;
    private int cod_habitacion;
    private int cod_recepcionista;
    private double valor;
    private int cod_cliente;

 public Hospedaje (){
    }

    public int getCod_cliente() {
        return cod_cliente;
    }

    public int getCod_habitacion() {
        return cod_habitacion;
    }

    public int getCod_hospedaje() {
        return cod_hospedaje;
    }

    public int getCod_recepcionista() {
        return cod_recepcionista;
    }

    public String getFfinal() {
        return ffinal;
    }

    public String getFinicio() {
        return finicio;
    }

    public double getValor() {
        return valor;
    }

    public void setCod_cliente(int cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public void setCod_habitacion(int cod_habitacion) {
        this.cod_habitacion = cod_habitacion;
    }

    public void setCod_hospedaje(int cod_hospedaje) {
        this.cod_hospedaje = cod_hospedaje;
    }

    public void setCod_recepcionista(int cod_recepcionista) {
        this.cod_recepcionista = cod_recepcionista;
    }

    public void setFinicio(String finicio) {
        this.finicio = finicio;
    }

    public void setFfinal(String ffinal) {
        this.ffinal = ffinal;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }


}


