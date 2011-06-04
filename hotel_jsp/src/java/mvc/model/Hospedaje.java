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
    private int inicioday;
    private int iniciomonth;
    private int inicioyear;
    private int finalday;
    private int finalmonth;
    private int finalyear;
    private int cod_habitacion;
    private int cod_recepcionista;
    private int valor;
    private int cod_cliente;
 
    private String acompañante;

 public Hospedaje (){
    }

    public String getAcompañante() {
        return acompañante;
    }

    public void setAcompañante(String acompañante) {
        this.acompañante = acompañante;
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

    public void setCod_cliente(int cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public void setCod_habitacion(int cod_habitacion) {
        this.cod_habitacion = cod_habitacion;
    }

    public int getFinalday() {
        return finalday;
    }

    public void setFinalday(int finalday) {
        this.finalday = finalday;
    }

    public int getFinalmonth() {
        return finalmonth;
    }

    public void setFinalmonth(int finalmonth) {
        this.finalmonth = finalmonth;
    }

    public int getFinalyear() {
        return finalyear;
    }

    public void setFinalyear(int finalyear) {
        this.finalyear = finalyear;
    }

    public int getInicioday() {
        return inicioday;
    }

    public void setInicioday(int inicioday) {
        this.inicioday = inicioday;
    }

    public int getIniciomonth() {
        return iniciomonth;
    }

    public void setIniciomonth(int iniciomonth) {
        this.iniciomonth = iniciomonth;
    }

    public int getInicioyear() {
        return inicioyear;
    }

    public void setInicioyear(int inicioyear) {
        this.inicioyear = inicioyear;
    }

    public void setCod_hospedaje(int cod_hospedaje) {
        this.cod_hospedaje = cod_hospedaje;
    }

    public void setCod_recepcionista(int cod_recepcionista) {
        this.cod_recepcionista = cod_recepcionista;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int getValor() {
        return valor;
    }

    public static Hospedaje load(ResultSet rs)throws SQLException{

		Hospedaje h = new Hospedaje ();
                h.setCod_hospedaje(rs.getInt(1));
                h.setInicioday(rs.getInt(2));
                h.setIniciomonth(rs.getInt(3));
                h.setInicioyear(rs.getInt(4));
                h.setFinalday(rs.getInt(5));
                h.setFinalmonth(rs.getInt(6));
                h.setFinalyear(rs.getInt(7));
                h.setValor(rs.getInt(8));
                h.setCod_cliente(rs.getInt(9));
                h.setCod_habitacion(rs.getInt(10));
                h.setCod_recepcionista(rs.getInt(11));
                h.setAcompañante(rs.getString(12));

		return h;
	}


}


