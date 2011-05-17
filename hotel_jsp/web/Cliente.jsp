<%-- 
    Document   : Cliente
    Created on : 5/05/2011, 09:38:41 AM
    Author     : hotel balcones
--%>

<%@ include file="/WEB-INF/InitModel.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import ="java.util.*" import ="java.text.DecimalFormat" import="java.sql.*" errorPage="ErrorPages.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="cli" scope="session" class="mvc.model.Cliente"/>
<%@page import="mvc.model.Cliente" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page: Cliente</title>
        <link href="<%=request.getContextPath()%>/css/newcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
       <div class="formLista">
        <ul class="formSection">
            <li>
                <div>
                    <h2 id="cliente" class="formlist">
                        Confirmar la ELiminacion del Cliente:
                    </h2>
                </div>
            </li>
            <table width="485" border="1" align="center">
                <tr class="style2">
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
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><strong><font>Esta Seguro que Desea Eliminar</font></strong></td>
                </tr>
                    <%
                    String codigo = request.getParameter("compra");
                    Cliente c = new Cliente();
                    c = model.extraercliente(codigo);
                    %>
                <tr bordercolor="#000000" >
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
                    <td width="40%"><div align="center"><font size="+1"><a href="<%=CONTROLLER%>/Eliminar/Cliente?codigo=<%=cli.getCodigo()%>">Eliminar</a></font></div></td>
                </tr>
            </table>
        </ul>
       </div>
                <center><a href="<%=BASEURL%>/ListarCliente.jsp" title="atras" >Atras</a></center>
    </body>
</html>
