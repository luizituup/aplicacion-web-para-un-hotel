<%-- 
    Document   : ListarReserva
    Created on : 2/06/2011, 04:02:07 PM
    Author     : Luis
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import ="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.Model"/>
<jsp:useBean id="res" scope="session" class="mvc.model.Reserva"/>
<%@page import="mvc.model.Reserva"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Listar Reserva</title>
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
                        Listar Reserva:
                            </strong>
                        </p>
                    </h2>
            <table width="100%" border="1" align="center">
                <tr>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Codigo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Fecha Inicio</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Fecha Final</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Estado</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Costo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Numero de Habitacion</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Numero de Personas</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo Recepcionista</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo Cliente</font></strong></div></td>
                </tr>
                    <%
                    List li = model.listarreserva();
                        for(int i=0;i<li.size();i++)
                    {
                    Reserva r = (Reserva)li.get(i);
                    %>
                <tr>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getCodigo()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getInicioday()%>/<%=r.getIniciomonth()%>/<%=r.getInicioyear()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getFinalday()%>/<%=r.getFinalmonth()%>/<%=r.getFinalyear()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getEstado()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getCosto()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getNumero_Habitacion()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getNumeropersonas()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getCodigo_Recepcionista()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=r.getCodigo_Cliente()%></font></div></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    </body>
</html>
