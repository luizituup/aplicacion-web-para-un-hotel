/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Servicios implements Serializable {

    private int Codigo;
    private String Nombre;
    private int Costo;
    private int cantidad;

    public Servicios (){
     
    }



 public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }


    public int getCantidad() {
        return cantidad;
    }


    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }


    public int getCodigo() {
        return Codigo;
    }


    public String getNombre() {
        return Nombre;
    }

    public int getCosto() {
        return Costo;
    }


    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setCosto(int Precio) {
        this.Costo = Precio;
    }

    public static Servicios load(ResultSet rs)throws SQLException{

		Servicios s = new Servicios();
                s.setCodigo(rs.getInt(1));
                s.setCantidad(rs.getInt(2));
                s.setNombre(rs.getString(3));
                s.setCosto(rs.getInt(4));
                
		return s;
	}
}