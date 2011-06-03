<%-- 
    Document   : ConsultarHabitacion
    Created on : 2/05/2011, 11:44:18 AM
    Author     : eduardo
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
<%@page import="mvc.model.Habitacion"%>
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
        <title>Page: Consultar habitacion</title>
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
<script src="<%=request.getContextPath()%>/css/stylesJotform/jotform.jgz" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.alterTexts({"required":"Este campo es obligatorio.\n","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.\n","alphanumeric":"Este campo sólo puede contener letras y números.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"Tamaño del archivo no puede ser mayor que:","confirmClearForm":"¿Está seguro que desea borrar el formulario?","lessThan":"Your score should be less than","email":"Escriba una dirección válida de correo electrónico.","uploadExtensions":"You can only upload following files:","pleaseWait":"Please wait..."});
   });
</script>
    </head>
    <body>
        <form class="jotform-form" action=" <%=CONTROLLER%>/Consultar/Habitacion" method="post" name="form_11223551222" id="11223551222" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11223551222" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Consultar Habitación:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Numero Habitación:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" id="numero" name="numero" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Consultar
                        </button>
                    </div>
                </div>
            </li>
            <table width="485" border="1" align="center">
                <tr>
                    <td><strong><font size="+1"></font><font size="+1">Numero Habitacion</font></strong></td>
                    <td><strong><font size="+1">Estado</font></strong></td>
                    <td><strong><font size="+1">Tipo Habitacion</font></strong></td>
                    <td><strong><font size="+1">Costo</font></strong></td>
                    <td><strong><font size="+1">Numero Camas</font></strong></td>
                    <td><strong><font size="+1">Aire</font></strong></td>
                    <td><strong><font size="+1">Detalles</font></strong></td>
                    <td><strong><font size="+1">Codigo Recepcionista</font></strong></td>
                </tr>
                    <%
                    String numero = request.getParameter("numero");
                    List lie = model.consultarhabitacion(numero);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Habitacion h=(mvc.model.Habitacion)lie.get(ie2);
                    %>
                <tr>
                    <td><font size="+1"><%=h.getNumero_Habitacion()%></font></td>
                    <td><font size="+1"><%=h.getEstado()%></font></td>
                    <td><font size="+1"><%=h.getTipohabitacion()%></font></td>
                    <td><font size="+1"><%=h.getCosto()%></font></td>
                    <td><font size="+1"><%=h.getNumerocamas()%></font></td>
                    <td><font size="+1"><%=h.getAire()%></font></td>
                    <td><font size="+1"><%=h.getDetalles()%></font></td>
                    <td><font size="+1"><%=h.getCod_recepcionista()%></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/ModificarHabitacion.jsp?numero=<%=h.getNumero_Habitacion()%>">Modificar</a></font></td>
                </tr>
                <%}%>
                <% %>
            </table>
        </ul>
    </div>
</form>
    </body>
</html>
