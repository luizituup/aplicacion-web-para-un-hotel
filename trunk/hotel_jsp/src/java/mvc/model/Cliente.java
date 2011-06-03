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
 * @author hotel balcones
 */
public class Cliente implements Serializable {

    private int codigo;
    private String Pnombre;
    private String Snombre;
    private String Papellido;
    private String Sapellido;
    private int cedula;
    private String sexo;
    private String direccion;
    private int telefono;
    private String email;
    private int cod_recepcionista;

    public int getCedula() {
        return cedula;
    }

    public int getCod_recepcionista() {
        return cod_recepcionista;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getPapellido() {
        return Papellido;
    }

    public String getPnombre() {
        return Pnombre;
    }

    public String getSapellido() {
        return Sapellido;
    }

    public String getSexo() {
        return sexo;
    }

    public String getSnombre() {
        return Snombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public void setCod_recepcionista(int cod_recepcionista) {
        this.cod_recepcionista = cod_recepcionista;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setPapellido(String Papellido) {
        this.Papellido = Papellido;
    }

    public void setPnombre(String Pnombre) {
        this.Pnombre = Pnombre;
    }

    public void setSapellido(String Sapellido) {
        this.Sapellido = Sapellido;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setSnombre(String Snombre) {
        this.Snombre = Snombre;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public static Cliente load(ResultSet rs)throws SQLException{

		Cliente c=new Cliente ();
                c.setCodigo(rs.getInt(1));
                c.setPnombre(rs.getString(2));
                c.setSnombre(rs.getString(3));
                c.setPapellido(rs.getString(4));
                c.setSapellido(rs.getString(5));
                c.setCedula(rs.getInt(6));
                c.setSexo(rs.getString(7));
                c.setDireccion(rs.getString(8));
                c.setTelefono(rs.getInt(9));
                c.setEmail(rs.getString(10));
                c.setCod_recepcionista(rs.getInt(11));

		return c;
	}
}
