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
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.","alphanumeric":"Este campo sólo puede contener letras y números.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"Tamaño del archivo no puede ser mayor que:\n","confirmClearForm":"¿Está seguro que desea borrar el formulario?","lessThan":"Su puntuación debe ser inferior.","email":"Escriba una dirección válida de correo electrónico.","uploadExtensions":"Sólo puede cargar archivos siguientes:","pleaseWait":"Por favor espere ..."});
   });
</script>
    </head>
    <body>
        <form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Servicio" method="post" name="form_11313122117" id="11313122117" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11313122117" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Consultar Servicios:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo del Servicio:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Consultar
                        </button>
                        &nbsp;
                        <button id="input_reset_2" type="reset" class="form-submit-reset">
                            Reset
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
                    int co= Integer.parseInt(codigo);
                    List lie = model.consultarservicio(co);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Servicios ser=(mvc.model.Servicios)lie.get(ie2);

                    %>                
                <tr>
                    <td><font size="+1"><%=ser.getCodigo()%></font></td>
                    <td><font size="+1"><%=ser.getCantidad()%></font></td>
                    <td><font size="+1"><%=ser.getNombre()%></font></td>
                    <td><font size="+1"><%=ser.getCosto()%></font></td>
                    <td><font><a href="<%=request.getContextPath()%>/ModificarServicios.jsp?codigo=<%=ser.getCodigo()%>">Modificar</a></font></td>                
                </tr>               
                <%}%>
                <% %>               
            </table>
            <li style="display:none">
                Should be Empty:
                <input type="text" name="website" value="" />
            </li>
        </ul>
    </div>
    <input type="hidden" id="simple_spc" name="simple_spc" value="11313122117" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11313122117-11313122117";
    </script>
</form>
    </body>
</html>
