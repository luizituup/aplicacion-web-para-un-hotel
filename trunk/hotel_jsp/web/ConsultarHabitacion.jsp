<%-- 
    Document   : ConsultarHabitacion
    Created on : 2/05/2011, 11:44:18 AM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
        <form class="jotform-form" action="http://www.jotform.com/submit.php" method="post" name="form_11223551222" id="11223551222" accept-charset="utf-8">
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
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_numeroHabitacion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Tipo de Habitación:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="input_4" name="q4_tipoDe">
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
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_5" name="q5_valor" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Numero De Camas:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:50px" id="input_6" name="q6_numeroDe">
                        <option>  </option>
                        <option selected="selected" value="1 "> 1 </option>
                        <option value="2 "> 2 </option>
                        <option value="3"> 3 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Aire Acondicionado:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:50px" id="input_7" name="q7_aireAcondicionado">
                        <option>  </option>
                        <option selected="selected" value="Si"> Si </option>
                        <option value="No"> No </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_8" class="form-input">
                    <input type="text" class="form-textbox validate[required]" id="input_8" name="q8_recepcionista" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Aceptar
                        </button>
                        &nbsp;
                        <button id="input_reset_2" type="reset" class="form-submit-reset">
                            Clear Form
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11223551222" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11223551222-11223551222";
    </script>
</form>
    </body>
</html>
