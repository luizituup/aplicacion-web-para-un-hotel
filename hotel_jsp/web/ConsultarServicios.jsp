<%--
    Document   : ConsultarServicios
    Created on : 2/05/2011, 11:48:18 AM
    Author     : hotel balcones
--%>
<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@page import ="java.text.DecimalFormat"%>
<%@page import="java.sql.*"%>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<jsp:useBean id="servi" scope="session" class="mvc.model.Servicios"/>
<%@page import="mvc.model.Servicios"%>
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
        <title>Page: Consultar Servicios</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/serviJotConsulta.css" rel="stylesheet" type="text/css" />
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
        width:484px;
        color:Black !important;
        font-family:Verdana;
        font-size:12px;
    }
</style>

        <script src="<%=request.getContextPath()%>/css/stylesJotform/serviJotConsulta.jgz" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sÃ³lo puede contener letras.","numeric":"Este campo sÃ³lo puede contener valores numÃ©ricos.","alphanumeric":"Este campo sÃ³lo puede contener letras y nÃºmeros.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"TamaÃ±o del archivo no puede ser mayor que:\n","confirmClearForm":"Â¿EstÃ¡ seguro que desea borrar el formulario?","lessThan":"Su puntuaciÃ³n debe ser inferior.","email":"Escriba una direcciÃ³n vÃ¡lida de correo electrÃ³nico.","uploadExtensions":"SÃ³lo puede cargar archivos siguientes:","pleaseWait":"Por favor espere ..."});
   });
</script>
    </head>
    <body>
        <form action="<%=CONTROLLER%>/Consultar/Servicio" method="post">
    <input type="hidden" name="formID" value="11245838084" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Consulta de Servicios:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Servicio:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="codigo" name="codigo">
                        <%
                        List li = model.listarservicios();
                        for(int i=0;i<li.size();i++)
                        {
                        Servicios s =(Servicios)li.get(i);
                        %>
                        <option><%=s.getCodigo()%></option>
                        <% } %>
                    </select>
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
                    <td><strong><font size="+1">Cantidad</font></strong></td>
                    <td><strong><font size="+1">Nombre</font></strong></td>
                    <td><strong><font size="+1">Costo</font></strong></td>
                </tr>
                    <%
                    String codigo = request.getParameter("codigo");
                    List lie = model.consultarservicio(codigo);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Servicios s=(mvc.model.Servicios)lie.get(ie2);
                    %>
                <tr>
                    <td><font size="+1"><%=s.getCodigo()%></font></td>
                    <td><font size="+1"><%=s.getCantidad()%></font></td>
                    <td><font size="+1"><%=s.getNombre()%></font></td>
                    <td><font size="+1"><%=s.getCosto()%></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/ModificarServicios.jsp?codigo=<%=s.getCodigo()%>">Modificar</a></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/EliminarServicios.jsp?compra=<%=s.getCodigo()%>">Eliminar</a></font></td>
                </tr>
                <%}%>
                <% %>
            </table>
        </ul>
    </div>
</form>
    </body>
</html>
