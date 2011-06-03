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
    private int inicioday;
    private int iniciomonth;
    private int inicioyear;
    private int finalday;
    private int finalmonth;
    private int finalyear;
    private String estado;
    private int costo;
    private int numero_Habitacion;
    private int numeropersonas;
    private int Codigo_Recepcionista;
    private int Codigo_Cliente;

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public int getCodigo_Recepcionista() {
        return Codigo_Recepcionista;
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

    public void setCodigo_Recepcionista(int Codigo_Recepcionista) {
        this.Codigo_Recepcionista = Codigo_Recepcionista;
    }

    public int getCodigo_Cliente() {
        return Codigo_Cliente;
    }

    public void setCodigo_Cliente(int Codigo_Cliente) {
        this.Codigo_Cliente = Codigo_Cliente;
    }

    public int getNumeropersonas() {
        return numeropersonas;
    }

    public void setNumeropersonas(int numeropersonas) {
        this.numeropersonas = numeropersonas;
    }

    public int getCosto() {
        return costo;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getNumero_Habitacion() {
        return numero_Habitacion;
    }

    public void setNumero_Habitacion(int numero_Habitacion) {
        this.numero_Habitacion = numero_Habitacion;
    }

    public static Reserva load(ResultSet rs)throws SQLException{

		Reserva r = new Reserva ();
                r.setCodigo(rs.getInt(1));
                r.setInicioday(rs.getInt(2));
                r.setIniciomonth(rs.getInt(3));
                r.setInicioyear(rs.getInt(4));
                r.setFinalday(rs.getInt(5));
                r.setFinalmonth(rs.getInt(6));
                r.setFinalyear(rs.getInt(7));
                r.setEstado(rs.getString(8));
                r.setCosto(rs.getInt(9));
                r.setNumero_Habitacion(rs.getInt(10));
                r.setNumeropersonas(rs.getInt(11));
                r.setCodigo_Recepcionista(rs.getInt(12));
                r.setCodigo_Cliente(rs.getInt(13));

		return r;
	}
}