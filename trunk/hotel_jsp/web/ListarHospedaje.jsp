<%-- 
    Document   : AñadirDetalleHabitacion
    Created on : 2/05/2011, 11:44:46 AM
    Author     : usuario
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import ="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.Model"/>
<jsp:useBean id="hos" scope="session" class="mvc.model.Hospedaje"/>
<%@page import="mvc.model.Hospedaje"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: listar Hospedaje</title>
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
                        Lista de Hospedaje:
                            </strong>
                        </p>
                    </h2>
            <table width="100%" border="1" align="center">
                <tr>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Codigo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Fecha Inicio</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Fecha Final</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Valor</font></strong></div></td>                  
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo Cliente</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo Habitacion</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo Recepcionista</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Acompañantes</font></strong></div></td>
                </tr>
                    <%
                    List li = model.listarhospedaje();
                        for(int i=0;i<li.size();i++)
                    {
                    Hospedaje h = (Hospedaje)li.get(i);
                    %>
                <tr>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCod_hospedaje()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getInicioday()%>/<%=h.getIniciomonth()%>/<%=h.getInicioyear()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getFinalday()%>/<%=h.getFinalmonth()%>/<%=h.getFinalyear()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getValor()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCod_cliente()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCod_habitacion()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCod_recepcionista()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getAcompañante()%></font></div></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    </body>
</html>
