<%-- 
    Document   : ListarHabitacion
    Created on : 24/05/2011, 11:12:54 AM
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
<jsp:useBean id="hab" scope="session" class="mvc.model.Habitacion"/>
<%@page import="mvc.model.Habitacion"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page: Listar Habitaciones</title>
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
                        Lista De Habitaciones:
                            </strong>
                        </p>
                    </h2>
            <table width="100%" border="1" align="center">
                <tr>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Numero</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Estado</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Tipo Habitacion</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Costo</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Numero de Camas</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Tiene Aire</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Detalles de Habitacion</font></strong></div></td>
    
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Codigo de Recepcionista</font></strong></div></td>
                </tr>
                    <%
                    List lie = model.listarhabitacion();
                        for(int i=0;i<lie.size();i++)
                    {
                    Habitacion h =(Habitacion)lie.get(i);
                    %>
                <tr>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getNumero_Habitacion()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getEstado()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getTipohabitacion()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCosto()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getNumerocamas()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getAire()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=h.getDetalles()%></font></div></td>
                  
                    <td width="40%"><div align="center"><font size="+1"><%=h.getCod_recepcionista()%></font></div></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    </body>
</html>
