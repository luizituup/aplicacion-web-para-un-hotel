<%-- 
    Document   : CrearHabitacion
    Created on : 2/05/2011, 11:44:00 AM
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
        <title>Page: Crear Habitacion</title>
        <link href="http://cdn.jotfor.ms/jotform.cssgz?3.1.110" rel="stylesheet" type="text/css" />
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
        width:483px;
        color:Black !important;
        font-family:Verdana;
        font-size:12px;
    }
</style>

<script src="http://cdn.jotfor.ms/jotform.jgz?3.1.110" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.\n","alphanumeric":"Este campo sólo puede contener letras y números.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"Tamaño del archivo no puede ser mayor que:","confirmClearForm":"¿Está seguro que desea borrar el formulario?","lessThan":"Your score should be less than","email":"Escriba una dirección válida de correo electrónico.","uploadExtensions":"You can only upload following files:","pleaseWait":"Please wait..."});
   });
</script>
    </head>
   <body>
        <form class="jotform-form" action="<%=CONTROLLER%>/Crear/Habitacion"  method="post" name="form_11221739189" id="11221739189" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11221739189" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Crear Habitacion:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Numero De Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="Numero_Habitacion" name="Numero_Habitacion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                     <label class="form-label-left" id="label_2" for="input_2">
                    Estado de Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_2" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="Estado" name="Estado">
                        <option>  </option>
                        <option selected="selected" value="Libre"> Libre </option>
                        <option value="ocupada"> Ocupada </option>
                        <option value="eservada"> Reservada </option>
                    </select>
                </div>
                 </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Tipo de Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="Tipohabitacion" name="Tipohabitacion">
                        <option>  </option>
                        <option selected="selected" value="Suite"> Suite </option>
                        <option value="Normal"> Normal </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5">
                    Valor:<span class="form-required">*</span>
                </label>
                <div id="cid_5" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="Costo" name="Costo" size="20" value="200.000" />
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Numero De Camas:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:50px" id="numerocamas" name="numerocamas">
                        <option>  </option>
                        <option selected="selected" value="1 "> 1 </option>
                        <option value="2 "> 2 </option>
                        <option value="3"> 3 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Aire Acondicionado:<span class="form-required">*</span>
                </label>
                <div id="cid_8" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:50px" id="aire" name="aire">
                        <option>  </option>
                        <option selected="selected" value="Si"> Si </option>
                        <option value="No"> No </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9">
                    Otros Detalles:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <textarea id="detalles" class="form-textarea validate[required]" name="detalles" cols="40" rows="6"></textarea>
                </div>
            </li>
             <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Codigo Tipo de Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cod_tipohabitacion" name="cod_tipohabitacion" size="20" />
                </div>
            </li>
             <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Codigo Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cod_recepcionista" name="cod_recepcionista" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:left" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Crear habitacion
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11221739189" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11221739189-11221739189";
    </script>
</form>
    </body>
</html>
