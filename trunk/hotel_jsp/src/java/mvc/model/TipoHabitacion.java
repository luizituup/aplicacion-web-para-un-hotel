/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.model;

import java.io.Serializable;


/**
 *
 * @author Administrador
 */
public class TipoHabitacion implements Serializable {

    private int cod_tipohab;
    private int numero;
    private String nombre;
    private double costo;


    public TipoHabitacion (){

    }

    public String getNombre() {
        return nombre;
    }

  public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getNumero() {
        return numero;
    }

    public void setCod_tipohab(int cod_tipohab) {
        this.cod_tipohab = cod_tipohab;
    }

    public int getCod_tipohab() {
        return cod_tipohab;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public double getCosto() {
        return costo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
