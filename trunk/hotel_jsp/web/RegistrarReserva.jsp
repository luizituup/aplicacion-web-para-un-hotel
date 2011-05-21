<%-- 
    Document   : RegistrarReserva
    Created on : 2/05/2011, 11:45:11 AM
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
        <title>Page: Registrar Reservas</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/ReservajotformRegistro.css" rel="stylesheet" type="text/css" />
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
<script src="<%=request.getContextPath()%>/css/stylesJotform/ClientejotformRegistrar.jgz" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.setCalendar("6");
      JotForm.setCalendar("7");
      JotForm.alterTexts({"required":"Este campo es obligatorio.","alphabetic":"Este campo sólo puede contener letras.","numeric":"Este campo sólo puede contener valores numéricos.","alphanumeric":"Este campo sólo puede contener letras y números.","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","uploadFilesize":"Tamaño del archivo no puede ser mayor que:","confirmClearForm":"¿Está seguro que desea borrar el formulario?","lessThan":"Your score should be less than","email":"Introduzca una dirección de correo electrónico válida.","uploadExtensions":"You can only upload following files:","pleaseWait":"Por favor espere ..."});
   });
</script> 
    </head>
    <body>
        <form class="jotform-form" action="http://www.jotform.com/submit.php" method="post" name="form_11225927262" id="11225927262" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11225927262" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Consultar Cliente:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_cedula" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5">
                    Nombre Completo:<span class="form-required">*</span>
                </label>
                <div id="cid_5" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="10" name="q5_nombreCompleto5[first]" id="first_5" />
                        <label class="form-sub-label" for="first_5" id="sublabel_first"> Nombre </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="15" name="q5_nombreCompleto5[last]" id="last_5" />
                        <label class="form-sub-label" for="last_5" id="sublabel_last"> Apellido </label></span>
                </div>
            </li>
            <li class="form-line" id="id_4">
                <div id="cid_4" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_4" type="submit" class="form-submit-button">
                            Consultar
                        </button>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</form>
            <form class="jotform-form" action="http://www.jotform.com/submit.php" method="post" name="form_11225927262" id="11225927262" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11225927262" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Registrar Reserva:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_11">
                <label class="form-label-left" id="label_11" for="input_11">
                    Código Reserva:<span class="form-required">*</span>
                </label>
                <div id="cid_11" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_11" name="q11_codigoReserva" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Fecha Inicio:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_6" name="q6_fechaInicio[day]" type="text" size="2" maxlength="2" value="03" />
                        -
                        <label class="form-sub-label" for="day_6" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_6" name="q6_fechaInicio[month]" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_6" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_6" name="q6_fechaInicio[year]" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_6" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_6_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_6_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha Final:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_7" name="q7_fechaFinal[day]" type="text" size="2" maxlength="2" value="03" />
                        -
                        <label class="form-sub-label" for="day_7" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_7" name="q7_fechaFinal[month]" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_7" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_7" name="q7_fechaFinal[year]" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_7" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_7_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_7_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Tipo Habitación:<span class="form-required">*</span>
                </label>
                <div id="cid_8" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="input_8" name="q8_tipoHabitacion">
                        <option>  </option>
                        <option selected="selected" value="Suite"> Suite </option>
                        <option value="Normal"> Normal </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9">
                    Numero de Habitación:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="input_8" name="q8_tipoHabitacion">
                        <option selected="selected" value="---------"> --------- </option>
                        <option value="1"> 1 </option>
                        <option value="Normal"> 2 </option>
                        <option value="Normal"> 3 </option>
                        <option value="Normal"> 4 </option>
                        <option value="Normal"> 5 </option>
                        <option value="Normal"> 6 </option>
                        <option value="Normal"> 7 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    Código de Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_12" name="q12_codigoDe" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    Código de Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_12" name="q12_codigoDe" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Numero de Personas:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:40px" id="input_10" name="q10_numeroDe10">
                        <option>  </option>
                        <option selected="selected" value="1 "> 1 </option>
                        <option value="2 "> 2 </option>
                        <option value="3"> 3 </option>
                        <option value="4"> 4 </option>
                        <option value="5"> 5 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Crear Reserva
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11225927262" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11225927262-11225927262";
    </script>
</form>
    </body>
</html>
