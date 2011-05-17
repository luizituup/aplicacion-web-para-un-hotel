<%-- 
    Document   : ListaServicios
    Created on : 12/05/2011, 01:52:46 PM
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
<jsp:useBean id="servi" scope="session" class="mvc.model.Servicios"/>
<%@page import="mvc.model.Servicios"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Listar Servicios</title>
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
        <div id="ListarServicios" title="Lista de Servicios">
            <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        <p align="center" class="style1">
                            <strong>
                        Listar Servicos:
                            </strong>
                        </p>
                    </h2>
           <table width="100%" border="1" align="center">
                <tr>
                    <td width="30%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Codigo</font></strong></div></td>
                    <td width="30%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Cantidad</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Nombre</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Costo</font></strong></div></td>
                </tr>
                    <%
                    List lis = model.listarservicios();
                        for(int i=0;i<lis.size();i++)
                    {
                    Servicios s = (Servicios)lis.get(i);
                    %>
                <tr>
                    <td width="30%"><div align="center"><font size="+1"><%=s.getCodigo()%></font></div></td>
                    <td width="30%"><div align="center"><font size="+1"><%=s.getCantidad()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=s.getNombre()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=s.getCosto()%></font></div></td>
                </tr>
                <% } %>
            </table>
            </div>
       </div>
    </body>
</html>
