
package mvc.model;

/**
 *
 * @author hotel balcones
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
			ps.setString(1, codigo);
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

    public List consultarservicio(String codigo) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Servicios s = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("SELECT * FROM servicio WHERE codigo=?");
			ps.setString(1, codigo);
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

                        pstmt=con.prepareStatement("INSERT INTO habitacion VALUES (?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, ha.getNumero_Habitacion());
                        pstmt.setString(2,ha.getEstado());
                        pstmt.setString(3,ha.getTipohabitacion());
                        pstmt.setDouble(4,ha.getCosto());
                        pstmt.setInt(5,ha.getNumerocamas());
                        pstmt.setString(6,ha.getAire());
                        pstmt.setString(7,ha.getDetalles());

                        pstmt.setInt(8, ha.getCod_recepcionista());


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
        public List consultarhabitacion(String numero) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Habitacion h = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("SELECT * FROM habitacion WHERE numero=?");
			ps.setString(1, numero);
			rs=ps.executeQuery();

                        while (rs.next()) {
                            h = mvc.model.Habitacion.load(rs);
                            lista.add(h);
            }
		}finally{
			if(rs!=null)
				rs.close();

			if(ps!=null)
				ps.close();
		}

		return lista;
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

        h.setCod_recepcionista(rs.getInt(8));

        return h;
    }




        public void registrarreserva (Reserva r) throws SQLException{
            if(existereserva(r))
                    throw new SQLException("Esta reserva  ya existe");
		PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO reserva VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, r.getCodigo());
                        pstmt.setInt(2, r.getInicioday());
                        pstmt.setInt(3, r.getIniciomonth());
                        pstmt.setInt(4, r.getInicioyear());
                        pstmt.setInt(5, r.getFinalday());
                        pstmt.setInt(6, r.getFinalmonth());
                        pstmt.setInt(7, r.getFinalyear());
                        pstmt.setString(8, r.getEstado());
                        pstmt.setInt(9, r.getCosto());
                        pstmt.setInt(10, r.getNumero_Habitacion());
                        pstmt.setInt(11, r.getNumeropersonas());
                        pstmt.setInt(12, r.getCodigo_Recepcionista());
                        pstmt.setInt(13, r.getCodigo_Cliente());

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

        public List consultarreserva(String codigo) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Reserva s = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("SELECT * FROM reserva WHERE codigo=?");
			ps.setString(1, codigo);
			rs=ps.executeQuery();

                        while (rs.next()) {
                            s = mvc.model.Reserva.load(rs);
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

    public List listarreserva() throws SQLException, Exception {
        if (!isConnect())
		throw new SQLException("no hay conexcion");

        PreparedStatement ps = null;
        ResultSet rs = null;
        Reserva r = null;
        List lista = new LinkedList();
        try {
            ps =(PreparedStatement) con.prepareStatement("select * from reserva");
            rs = ps.executeQuery();

            while (rs.next()) {
                r = mvc.model.Reserva.load(rs);
                lista.add(r);
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

    private boolean existehospedaje(Hospedaje h) throws SQLException {

                boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM hospedaje WHERE codigo=? ");
			pstmt.setInt(1,h.getCod_hospedaje());
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

   public void asignarhospedaje (Hospedaje h) throws SQLException{
            if(existehospedaje(h))
                    throw new SQLException("Esta este hospedaje  ya existe");
                    PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO hospedaje VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, h.getCod_hospedaje());
                        pstmt.setInt(2, h.getInicioday());
                        pstmt.setInt(3, h.getIniciomonth());
                        pstmt.setInt(4, h.getInicioyear());
                        pstmt.setInt(5, h.getFinalday());
                        pstmt.setInt(6, h.getFinalmonth());
                        pstmt.setInt(7, h.getFinalyear());
                        pstmt.setInt(8, h.getValor());
                        pstmt.setInt(9, h.getCod_cliente());
                        pstmt.setInt(10, h.getCod_habitacion());
                        pstmt.setInt(11, h.getCod_recepcionista());

                        pstmt.setString(12, h.getAcompañante());

			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }

   public List consultarhospedaje(String codigo) throws SQLException{

		PreparedStatement ps = null;
                ResultSet rs = null;
                Hospedaje h = null;
                List lista = new LinkedList();

		try{
			ps=con.prepareStatement("SELECT * FROM hospedaje WHERE codigo=?");
			ps.setString(1, codigo);
			rs=ps.executeQuery();

                        while (rs.next()) {
                            h = mvc.model.Hospedaje.load(rs);
                            lista.add(h);
            }
		}finally{
			if(rs!=null)
				rs.close();

			if(ps!=null)
				ps.close();
		}

		return lista;
    }

   public List listarhospedaje() throws SQLException, Exception {
        if (!isConnect())
		throw new SQLException("no hay conexcion");

        PreparedStatement ps = null;
        ResultSet rs = null;
        Hospedaje h = null;
        List lista = new LinkedList();
        try {
            ps =(PreparedStatement) con.prepareStatement("select * from hospedaje");
            rs = ps.executeQuery();

            while (rs.next()) {
                h = mvc.model.Hospedaje.load(rs);
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

   public void registrarconsumo (Consumo co)throws SQLException{
                if(existeconsumo(co))
                    throw new SQLException("Este consumo ya existe");
		PreparedStatement pstmt=null;

		try{

                        pstmt=con.prepareStatement("INSERT INTO consumo VALUES (?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1, co.getCodigo());
                        pstmt.setInt(2,co.getCod_cliente());
                        pstmt.setInt(3,co.getServicios());
                        pstmt.setInt(4,co.getCantidad());
                        pstmt.setInt(5,co.getFechaday());
                        pstmt.setInt(6, co.getFechamonth());
                        pstmt.setInt(7,co.getFechayear());

			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null){
				pstmt.close();
				pstmt=null;
			}
		}
    }

   public boolean existeconsumo(Consumo co) throws SQLException{
                if (!isConnect())
			throw new SQLException("no hay conexcion");
		boolean sw=true;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try{
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM consumo WHERE codigo=?");
			pstmt.setInt(1, co.getCodigo());
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