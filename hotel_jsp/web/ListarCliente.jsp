<%-- 
    Document   : ListarCliente
    Created on : 2/05/2011, 11:42:53 AM
    Author     : hotel balcones
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@page import ="java.text.DecimalFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.Model"/>
<jsp:useBean id="cli" scope="session" class="mvc.model.Cliente"/>
<%@page import="mvc.model.Cliente"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Listar Cliente</title>
        <link href="<%=request.getContextPath()%>/css/newcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>   
        <%
            try{
                model.conectar();
                System.out.println("Conexion Ok...");
            }catch(Exception ex){
                throw new Exception("Error en la Pagina: "+ex.toString());
            }
        %>
     <div class="form-all"> 
                <div class="form-header-group"> 
                    <h2 id="header_1" class="form-header">
                        <p align="center" class="style1">
                            <strong>
                        Listar Cliente:
                            </strong>
                        </p>
                    </h2> 
            <table width="100%" border="1" align="center">
                <tr>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Codigo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">P. Nombre</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">S. Nombre</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">P. Apellido</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">S. Apellido</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Cedula</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Sexo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Direccion</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Telefono</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Email</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Cod. Recepcionista</font></strong></div></td>
                </tr>
                    <%
                    List li = model.listarcliente();
                        for(int i=0;i<li.size();i++)
                    {
                    Cliente c=(Cliente)li.get(i);
                    %>
                <tr>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getCodigo()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getPnombre()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getSnombre()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getPapellido()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getSapellido()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getCedula()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getSexo()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getDireccion()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getTelefono()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getEmail()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=c.getCod_recepcionista()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><a href="Cliente.jsp?compra=<%=c.getCodigo()%>">Eliminar</a></font></div></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>      
    </body>
</html>
