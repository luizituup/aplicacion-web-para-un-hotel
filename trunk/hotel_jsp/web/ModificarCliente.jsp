<%-- 
    Document   : ModificarCliente
    Created on : 2/05/2011, 11:42:16 AM
    Author     : hotel balcones
--%>

<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import ="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@ include file="/WEB-INF/InitModel.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="cli" scope="session" class="mvc.model.Cliente"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" /> 
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Modificar Cliente</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/ClientejotformModificar.css" rel="stylesheet" type="text/css" />
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

<script src="<%=request.getContextPath()%>/css/stylesJotform/ClientejotformModificar.jgz" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      $('input_12').hint('ex: myname@example.com');
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.","alphanumeric":"Este campo sólo puede contener letras y números.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.\n","uploadFilesize":"Tamaño del archivo no puede ser mayor que:","confirmClearForm":"Are you sure you want to clear the form","lessThan":"Your score should be less than","email":"Enter a valid e-mail address","uploadExtensions":"You can only upload following files:","pleaseWait":"Please wait..."});
   });
</script>
    </head>
    <body>
        <%
           String codigo = request.getParameter("codigo");
           if(codigo!=null){
              cli.setCodigo(Integer.parseInt(codigo));
        %>
        <form class="jotform-form" action="<%=CONTROLLER%>/Modificar/Cliente?codigo=<%=cli.getCodigo()%>" method="post" name="form_11223945270" id="11223945270" accept-charset="utf-8">
        <%
        if(model.existecliente(cli)){
        cli = model.extraercliente(codigo);
        %>
        <input type="hidden" name="formID" value="11223945270" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Modificar Cliente:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Codigo:<span class="form-required">*</span>
                </label>
                <div id="cid_8" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="codigo" name="codigo" value="<%=cli.getCodigo()%>" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Nombres:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="10" name="Pnombre" id="Pnombre" value="<%=cli.getPnombre()%>" />
                        <label class="form-sub-label" for="first_6" id="sublabel_first"> Primer Nombre </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="15" name="Snombre" id="Snombre" />
                        <label class="form-sub-label" for="last_6" id="sublabel_last"> Segundo Nombre </label></span>
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Apellidos:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="10" name="Papellido" id="Papellido" value="<%=cli.getPapellido()%>" />
                        <label class="form-sub-label" for="first_7" id="sublabel_first"> Primer Apellido </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="15" name="Sapellido" id="Sapellido" value="<%=cli.getSapellido()%>" />
                        <label class="form-sub-label" for="last_7" id="sublabel_last"> Segundo Apellido </label></span>
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Cedula:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cedula" name="cedula" value="<%=cli.getCedula()%>" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9">
                    Sexo:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:150px" id="sexo" name="sexo">
                        <option value="Seleccione..."> Seleccione... </option>
                        <option value="Masculino"> Masculino </option>
                        <option value="Femenino"> Femenino </option>
                        <option value="N / A"> N / A </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Direccion:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <input type="text" class="form-textbox validate[required]" id="direccion" name="direccion" value="<%=cli.getDireccion()%>" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_14">
                <label class="form-label-left" id="label_14" for="input_14">
                    Telefono:<span class="form-required">*</span>
                </label>
                <div id="cid_14" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="telefono" name="telefono" value="<%=cli.getTelefono()%>" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    E-mail:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="email" class="form-textbox validate[required, Email]" id="email" name="email" value="<%=cli.getEmail()%>" size="30" />
                </div>
            </li>
            <li class="form-line" id="id_13">
                <label class="form-label-left" id="label_13" for="input_13">
                    Codigo Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_13" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cod_recepcionista" name="cod_recepcionista" value="<%=cli.getCod_recepcionista()%>" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_3">
                <div id="cid_3" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_3" type="submit" class="form-submit-button">
                            Modificar
                        </button>
                        &nbsp;
                        <button id="input_reset_3" type="reset" class="form-submit-reset">
                            Reset
                        </button>
                    </div>
                </div>
            </li>
            <li class="form-line" id="id_15">
                <div id="cid_15" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <a href="<%=BASEURL%>/ConsultarCliente.jsp" title="Atras">
                        <button id="input_15" class="form-submit-button">
                            Atras
                        </button>
                        </a>
                    </div>
                </div>
            </li> 
            <li style="display:none">
                Should be Empty:
                <input type="text" name="website" value="" />
            </li>
        </ul>
    </div>
    <input type="hidden" id="simple_spc" name="simple_spc" value="11223945270" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11223945270-11223945270";
    </script>
</form>
      <% }
           }%>
    </body>
</html>
