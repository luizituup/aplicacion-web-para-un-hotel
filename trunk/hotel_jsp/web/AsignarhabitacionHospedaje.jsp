<%-- 
    Document   : AsignarhabitacionHospedaje
    Created on : 2/05/2011, 11:46:36 AM
    Author     : hotel  balcones
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <meta name="HandheldFriendly" content="true" />
        <title>Page: Asiganar Habitacion Hospedaje</title>
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
        padding-top:20px;
        width:483px;
        color:Black !important;
        font-family:Verdana;
        font-size:12px;
    }
</style>
<script src="http://cdn.jotfor.ms/jotform.jgz?3.1.110" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.setCalendar("7");
      JotForm.setCalendar("6");
   });
</script>
    </head>
    <body>
        <form class="jotform-form" action="http://www.jotform.com/submit.php" method="post" name="form_11225927260" id="11225927260" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11225927260" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Crear Hospedaje:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_codigoCliente" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Nombre del Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox validate[required, Alphabetic]" id="input_4" name="q4_nombreDel" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Buscar
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11225927260" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11225927260-11225927260";
    </script>
</form>
        <form class="jotform-form" action="http://www.jotform.com/submit.php" method="post" name="form_11225927260" id="11225927260" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11225927260" />
    <div class="form-all">
        <ul class="form-section">
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Hospedaje:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_codigoHospedaje" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">
                <label class="form-label-left" id="label_4" for="input_4">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_4" name="q4_codigoCliente4" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha Inicio:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_7" name="q7_fechaInicio[day]" type="text" size="2" maxlength="2" value="24" />
                        -
                        <label class="form-sub-label" for="day_7" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_7" name="q7_fechaInicio[month]" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_7" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_7" name="q7_fechaInicio[year]" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_7" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_7_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_7_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Fecha Final:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_6" name="q6_fechaFinal[day]" type="text" size="2" maxlength="2" value="24" />
                        -
                        <label class="form-sub-label" for="day_6" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_6" name="q6_fechaFinal[month]" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_6" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_6" name="q6_fechaFinal[year]" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_6" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_6_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_6_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_13">
                <label class="form-label-left" id="label_13" for="input_13">
                    Tipo Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_13" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:70px" id="input_13" name="q13_tipoHabitacion">
                        <option>  </option>
                        <option selected="selected" value="Suite "> Suite </option>
                        <option value="Normal"> Normal </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_11">
                <label class="form-label-left" id="label_11" for="input_11">
                    Numero Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_11" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_11" name="q11_numeroHabitacion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    Costo Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_12" name="q12_costoHabitacion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Numero Acompañantes:<span class="form-required">*</span>
                </label>
                <div id="cid_8" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:50px" id="input_8" name="q8_numeroAcompanantes">
                        <option>  </option>
                        <option selected="selected" value="1 "> 1 </option>
                        <option value="2"> 2 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Acompañantes:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <textarea id="input_10" class="form-textarea validate[required, AlphaNumeric]" name="q10_acompanantes" cols="40" rows="6"></textarea>
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9">
                    Codigo Recepcion:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_9" name="q9_codigoRecepcion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_5">
                <div id="cid_5" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_5" type="submit" class="form-submit-button">
                            Asignar
                        </button>
                        &nbsp;
                        <button id="input_reset_5" type="reset" class="form-submit-reset">
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11225927260" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11225927260-11225927260";
    </script>
</form>
    </body>
</html>
