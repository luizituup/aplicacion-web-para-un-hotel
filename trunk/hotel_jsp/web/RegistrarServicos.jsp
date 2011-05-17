<%-- 
    Document   : RegistrarServicos
    Created on : 2/05/2011, 11:47:59 AM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<%@ page errorPage="/ErrorPages.jsp"%>
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
        <title>Page: Registro de Servicios</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/servicioform.css" rel="stylesheet" type="text/css" />
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

        <script src="<%=request.getContextPath()%>/css/stylesJotform/servicoform.jgz" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.","alphanumeric":"Este campo sólo puede contener letras y números.\n","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"Tamaño del archivo no puede ser mayor que:\n","confirmClearForm":"¿Está seguro que desea borrar el formulario?","lessThan":"Su puntuación debe ser inferior.","email":"Enter a valid e-mail address","uploadExtensions":"You can only upload following files:","pleaseWait":"Por favor espere ..."});
   });
</script> 
    </head>
    <body>
        <form class="jotform-form" action="<%=CONTROLLER%>/Registrar/Servicio" method="post" name="form_11314638127" id="11314638127" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11314638127" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Registrar Servicios:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Codigo:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Cantidad del Servicio:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cantidad" name="cantidad" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Nombre del Servicio:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox validate[required, Alphabetic]" id="nombre" name="nombre" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5">
                    Costo del Servicio:<span class="form-required">*</span>
                </label>
                <div id="cid_5" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="costo" name="costo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" name="submit" type="submit" class="form-submit-button">
                            Registrar
                        </button>
                        &nbsp;
                        <button id="input_reset_2" type="reset" class="form-submit-reset">
                            Reset
                        </button>
                    </div>
                </div>
            </li>
            <li style="display:none">
                Should be Empty:
                <input type="text" name="website" value="" />
            </li>
        </ul>
    </div>
    <input type="hidden" id="simple_spc" name="simple_spc" value="11314638127" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11314638127-11314638127";
    </script>
</form>
    </body>
</html>
