
package mvc.model;

import java.io.*;
import java.sql.*;


public class Usuario implements Serializable{

    private String Usuario = "eduardo barrios";
    private String usuario2 = "deivis herrera";
    private String TipoUsuario;
    private int Clave;

    //Analizadores y Modificadores

    public String getUsuario2() {
        return usuario2;
    }

    /**
     * @return the Nombre
     */
    public String getUsuario() {
        return Usuario;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    /**
     * @return the TipoUsuario
     */
    public String getTipoUsuario() {
        return TipoUsuario;
    }

    /**
     * @param TipoUsuario the TipoUsuario to set
     */
    public void setTipoUsuario(String TipoUsuario) {
        this.TipoUsuario = TipoUsuario;
    }

    
    /**
     * @return the Contraseña
     */
    public int getClave() {
        return Clave;
    }

    /**
     * @param Contraseña the Contraseña to set
     */
    public void setClave(int Clave) {
        this.Clave = Clave;
    }

//Metodos

  public static Usuario loadUsuario(ResultSet rs)throws SQLException{
      Usuario usu=new Usuario();
      usu.setUsuario(rs.getString(1));
      usu.setClave(rs.getInt(2));
      usu.setTipoUsuario(rs.getString(3));
      
      return usu;
  }

    @Override
  public String toString() {

		String sep = System.getProperty("line.separator");

		StringBuffer buffer = new StringBuffer();
		buffer.append(sep);
                buffer.append("Tipo de Usuario = ");
		buffer.append(TipoUsuario);                              
		buffer.append(sep);
		buffer.append("Usuario = ");
		buffer.append(Usuario);
		buffer.append(sep);
		buffer.append("Clave = ");
		buffer.append(Clave);
                buffer.append(sep);

		return buffer.toString();
	}
}
