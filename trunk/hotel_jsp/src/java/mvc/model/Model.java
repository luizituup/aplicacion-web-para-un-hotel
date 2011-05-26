
package mvc.model;

/**
 *
 * @author Alex
 */
import java.io.*;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;


public class Model implements Serializable{

    protected static Connection con;
    private String jdbcDriver;
    private String jdbcUrl;
    private String user;
    private String password;
    private String database;

    public String getJdbcDriver() {
        return jdbcDriver;
    }

    public void setJdbcDriver(String jdbcDriver) {
        this.jdbcDriver = jdbcDriver;
    }

    public String getJdbcUrl() {
        return jdbcUrl;
    }

    public void setJdbcUrl(String jdbcUrl) {
        this.jdbcUrl = jdbcUrl;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

//    public Model() {
//        this.jdbcDriver = "com.mysql.jdbc.Driver";
//        this.jdbcUrl = "jdbc:mysql://localhost:3306/hotel";
//    // lea de archivos
//    }

    public void conectar() throws SQLException {
        try {
            Class.forName(this.jdbcDriver);
        } catch (ClassNotFoundException ex) {
            throw new SQLException("Driver no cargado !!!"+ex.toString());
        }
        System.out.println("------------Conexion Driver--------- :"+this.getJdbcUrl()+this.getDatabase()+","+this.getUser()+","+this.getPassword());
        con = DriverManager.getConnection(this.getJdbcUrl()+this.getDatabase(), this.getUser(), this.getPassword());
    }
    public boolean isConnect()
    {
        if(con!=null)
        {
           return true;
        }else
        {
           return false;
        }
    }
    public void disconnect()
    {
        if(con!=null)
        {
            try
            {
              con.close();
            }catch(SQLException ignore){}
            finally
            {
              con=null;
            }
        }
    }


    public void registrarcliente (Cliente c)throws SQLException{
                if(existecliente(c))
                    throw new SQLException("Este cliente ya existe");
		PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO cliente VALUES (?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, c.getCodigo());
                        pstmt.setString(2,c.getPnombre());
                        pstmt.setString(3,c.getSnombre());
                        pstmt.setString(4,c.getPapellido());
                        pstmt.setString(5,c.getSapellido());
                        pstmt.setInt(6, c.getCedula());
                        pstmt.setString(7,c.getSexo());
                        pstmt.setString(8, c.getDireccion());
                        pstmt.setInt(9, c.getTelefono());
                        pstmt.setString(10, c.getEmail());
                        
                        pstmt.setInt(11, c.getCod_recepcionista());

			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }

    public boolean existecliente(Cliente c) throws SQLException{
                if (!isConnect())
			throw new SQLException("no hay conexcion");
		boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM cliente WHERE codigo=?");
			pstmt.setInt(1, c.getCodigo());
			rs=pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals("0"))
					sw=false;
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}

		return sw;
    }

    public List consultarcliente(String codigo) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Cliente c = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("select * from cliente where codigo=?");
			ps.setInt(1,c.getCodigo());
			rs=ps.executeQuery();

                        while (rs.next()) {
                            c = mvc.model.Cliente.load(rs);
                            lista.add(c);
            }
		}finally{
			if(rs!=null)
				rs.close();

			if(ps!=null)
				ps.close();
		}

		return lista;
    }

    public void modificarcliente(Cliente c)throws SQLException{

		PreparedStatement pstmt=null;

		try{

			pstmt=con.prepareStatement("Update Cliente c set c.cedula=?, c.Pnombre=?, c.Pnombre=?, c.Papellido=?, c.Sapellido=?, c.sexo=?, c.direccion=?, c.telefono=?, c.email=? where c.codigo=?");
			pstmt.setInt(1, c.getCedula());
                        pstmt.setString(2, c.getPnombre());
                        pstmt.setString(3, c.getPnombre());
                        pstmt.setString(4, c.getPapellido());
                        pstmt.setString(5, c.getSapellido());
                        pstmt.setInt(6, c.getCodigo());
                        pstmt.setString(7, c.getSexo());
			pstmt.setString(8, c.getDireccion());
			pstmt.setInt(9, c.getTelefono());
                        pstmt.setString(10, c.getEmail());
                        pstmt.executeUpdate();

		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
  }

    public List listarcliente() throws SQLException, Exception {
        if (!isConnect())
		throw new SQLException("no hay conexcion");

        PreparedStatement ps = null;
        ResultSet rs = null;
        Cliente c = null;
        List lista = new LinkedList();
        try {
            ps =(PreparedStatement) con.prepareStatement("select * from Cliente");
            rs = ps.executeQuery();

            while (rs.next()) {
                c = this.loadCliente(rs);
                lista.add(c);
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
        return lista;
    }

    public void eliminarcliente(String codigo) throws SQLException{

        PreparedStatement ps = null;
        ResultSet rs = null;

            try {
                ps = con.prepareStatement("delete from cliente where codigo=?");

                ps.setString(1, codigo);
                ps.executeUpdate();
            } catch (Exception ex) {
                throw new SQLException(ex);

            } finally {

            if (ps != null) {
                ps.close();
            }
        }
    }

    public Cliente extraercliente (String codigo) throws SQLException{
                if (!isConnect())
			throw new SQLException("no hay conexcion");
                Cliente c = new Cliente();
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT * FROM cliente WHERE codigo=?");
			pstmt.setString(1, codigo);
			rs=pstmt.executeQuery();
			if(rs.next()){
			  c = this.loadCliente(rs);

                        }else{

                        }
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}

		return c;
     }

    private Cliente loadCliente(ResultSet rs) throws SQLException {
        Cliente c = new Cliente();

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

    public boolean existeUsuario(Usuario per) throws SQLException{

		boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM usuario WHERE tipo=? AND clave=?");
			pstmt.setString(1, per.getTipoUsuario());
                        pstmt.setInt(2, per.getClave());
			rs=pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals("0"))
					sw=false;
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}

		return sw;
    }

    public String getTipoUsuario(Usuario per) throws SQLException{

		String tipo="";
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT tipo FROM usuario WHERE tipo=? AND clave=?");
			pstmt.setString(1, per.getUsuario());
                        pstmt.setInt(2, per.getClave());
			rs=pstmt.executeQuery();
			if(rs.next())
				tipo=rs.getString(1);

		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}

		return tipo;
    }

    public void registrarservicios (Servicios s)throws SQLException{
                if(existeservicio(s))
                    throw new SQLException("Este Servicio ya Existe");
                    PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO servicio VALUES (?,?,?,?)");
                        pstmt.setInt(1, s.getCodigo());
                        pstmt.setInt(2, s.getCantidad());
                        pstmt.setString(3,s.getNombre());
                        pstmt.setInt(4, s.getCosto());

			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }

    public boolean existeservicio(Servicios s) throws SQLException{
                if (!isConnect())
			throw new SQLException("no hay conexcion");
		boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM servicio WHERE codigo=?");
			pstmt.setInt(1, s.getCodigo());
			rs=pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals("0"))
					sw=false;
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}

		return sw;
    }

    public List listarservicios() throws SQLException, Exception {
        if (!isConnect())
		throw new SQLException("No hay Conexcion");

        PreparedStatement ps = null;
        ResultSet rs = null;
        Servicios s = null;
        List lista = new LinkedList();
        try {
            ps =(PreparedStatement) con.prepareStatement("SELECT * FROM servicio");
            rs = ps.executeQuery();

            while (rs.next()) {
                s = this.loadServicio(rs);
                lista.add(s);
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
        return lista;
    }

    private Servicios loadServicio(ResultSet rs) throws SQLException {
        Servicios s = new Servicios();

        s.setCodigo(rs.getInt(1));
        s.setCantidad(rs.getInt(2));
        s.setNombre(rs.getString(3));
        s.setCosto(rs.getInt(4));

        return s;
    }

    public List consultarservicio(int codigo) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Servicios s = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("SELECT * FROM servicio WHERE codigo=?");
			ps.setInt(1,s.getCodigo());
			rs=ps.executeQuery();

                        while (rs.next()) {
                            s = mvc.model.Servicios.load(rs);
                            lista.add(s);
            }
		}finally{
			if(rs!=null)
				rs.close();

			if(ps!=null)
				ps.close();
		}

		return lista;
    }

    public void crearhabitacion (Habitacion ha)throws SQLException{
                if(existehabitacion(ha))
                    throw new SQLException("Esta habitacion  ya existe");
		PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO habitacion VALUES (?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, ha.getNumero_Habitacion());
                        pstmt.setString(2,ha.getEstado());
                        pstmt.setString(3,ha.getTipohabitacion());
                        pstmt.setDouble(4,ha.getCosto());
                        pstmt.setInt(5,ha.getNumerocamas());
                        pstmt.setString(6,ha.getAire());
                        pstmt.setString(7,ha.getDetalles());
                        pstmt.setInt(8,ha.getCod_tipohab());
                        pstmt.setInt(9, ha.getCod_recepcionista());


			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }
        public boolean existehabitacion(Habitacion h) throws SQLException{

		boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM habitacion WHERE numero=? ");
			pstmt.setInt(1,h.getNumero_Habitacion());

			rs=pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals("0"))
					sw=false;
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}
		return sw;
   }

        public List listarhabitacion() throws SQLException, Exception {
        if (!isConnect())
		throw new SQLException("no hay conexcion");

        PreparedStatement ps = null;
        ResultSet rs = null;
        Habitacion h = null;
        List lista = new LinkedList();
        try {
            ps =(PreparedStatement) con.prepareStatement("select * from habitacion");
            rs = ps.executeQuery();

            while (rs.next()) {
                h = this.loadHabitacion(rs);
                lista.add(h);
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
        return lista;
    }

        private Habitacion loadHabitacion(ResultSet rs) throws SQLException {
        Habitacion h = new Habitacion();

        h.setNumero_Habitacion(rs.getInt(1));
        h.setEstado(rs.getString(2));
        h.setTipohabitacion(rs.getString(3));
        h.setCosto(rs.getInt(4));
        h.setNumerocamas(rs.getInt(5));
        h.setAire(rs.getString(6));
        h.setDetalles(rs.getString(7));
        h.setCod_tipohab(rs.getInt(8));
        h.setCod_recepcionista(rs.getInt(9));

        return h;
    }

        public void registrarreserva (Reserva r) throws SQLException{
            if(existereserva(r))
                    throw new SQLException("Esta reserva  ya existe");
		PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO reserva VALUES (?,?,?,?,?,?,?)");
                        pstmt.setInt(1, r.getCodigo_Cliente());
                        pstmt.setInt(2, r.getCodigo());
                        pstmt.setInt(3, r.getCodigo_Habitacion());
                        pstmt.setInt(4, r.getCodigo_Recepcionista());
                        pstmt.setInt(5, r.getNumeropersonas());
                        pstmt.setString(6, r.getFecha_inicio());
                        pstmt.setString(7, r.getFecha_final());

			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }
        private boolean existereserva(Reserva r) throws SQLException {
                boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM reserva WHERE codigo=? ");
			pstmt.setInt(1,r.getCodigo());
			rs=pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals("0"))
					sw=false;
		}finally{
			if(rs!=null)
				rs.close();

			if(pstmt!=null)
				pstmt.close();
		}
		return sw;
    }
}