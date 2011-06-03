<%-- 
    Document   : ConsultarCliente
    Created on : 2/05/2011, 11:43:13 AM
    Author     : hotel balcones
--%>
<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@page import ="java.text.DecimalFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<%@page import="mvc.model.Cliente"%>
<%
    model.init(application);
       HttpSession sesion=request.getSession();
    request= (HttpServletRequest)pageContext.getRequest();
    String BASEURL= request.getContextPath();
    String CONTROLLER=BASEURL + "/controller";

 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Consultar Cliente</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/jotform.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .form-label{
        width:150px !important;
    }
    .form-label-left{
        width:150px !important;
    }
    .form-line{
        padding:10px;
    }
    .form-label-right{
        width:150px !important;
    }
    body, html{
        margin:0;
        padding:0;
        background:false;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:485px;
        color:Black !important;
        font-family:Verdana;
        font-size:12px;
    }
</style>
    </head>
    <body>
        <form action="<%=CONTROLLER%>/Consultar/Cliente" method="post">
    <input type="hidden" name="formID" value="11245838084" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Consulta de Cliente:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" name="codigo" id="codigo" size="20" />
                </div>
            </li>
            <li>
                <div>
                    <div style="text-align:center">
                        <button id="input_2" type="submit">
                            Consultar
                        </button>
                    </div>
                </div>
            </li>
            <table width="485" border="1" align="center">
                <tr>
                    <td><strong><font size="+1"></font><font size="+1">Codigo</font></strong></td>
                    <td><strong><font size="+1">P. Nombre</font></strong></td>
                    <td><strong><font size="+1">S. Nombre</font></strong></td>
                    <td><strong><font size="+1">P. Apellido</font></strong></td>
                    <td><strong><font size="+1">S. Apellido</font></strong></td>
                    <td><strong><font size="+1">Cedula</font></strong></td>
                    <td><strong><font size="+1">Sexo</font></strong></td>
                    <td><strong><font size="+1">Direccion</font></strong></td>
                    <td><strong><font size="+1">Telefono</font></strong></td>
                    <td><strong><font size="+1">Email</font></strong></td>
                    <td><strong><font size="+1">Cod. Recepcionista</font></strong></td>
                </tr>
                    <%
                    String codigo = request.getParameter("codigo");
                    List lie = model.consultarcliente(codigo);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Cliente cli=(mvc.model.Cliente)lie.get(ie2);

                    %>
                <tr>
                    <td><font size="+1"><%=cli.getCodigo()%></font></td>
                    <td><font size="+1"><%=cli.getPnombre()%></font></td>
                    <td><font size="+1"><%=cli.getSnombre()%></font></td>
                    <td><font size="+1"><%=cli.getPapellido()%></font></td>
                    <td><font size="+1"><%=cli.getSapellido()%></font></td>
                    <td><font size="+1"><%=cli.getCedula()%></font></td>
                    <td><font size="+1"><%=cli.getSexo()%></font></td>
                    <td><font size="+1"><%=cli.getDireccion()%></font></td>
                    <td><font size="+1"><%=cli.getTelefono()%></font></td>
                    <td><font size="+1"><%=cli.getEmail()%></font></td>
                    <td><font size="+1"><%=cli.getCod_recepcionista()%></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/ModificarCliente.jsp?codigo=<%=cli.getCodigo()%>">Modificar</a></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/Cliente.jsp?compra=<%=cli.getCodigo()%>">Eliminar</a></font></td>
                </tr>
                <%}%>
                <% %>
            </table>
        </ul>
    </div>
</form>
    </body>
</html>
