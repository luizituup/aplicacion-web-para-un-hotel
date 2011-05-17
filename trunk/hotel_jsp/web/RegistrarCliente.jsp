<%-- 
    Document   : RegistrarCliente
    Created on : 2/05/2011, 11:41:49 AM
    Author     : hotel balcones
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Page: Registrar Cliente</title>
        <link href="<%=request.getContextPath()%>/css/stylesJotform/clientejotformregistrar.css" rel="stylesheet" type="text/css" />
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
        font-family:Arial;
        font-size:12px;
    }
</style>

<script src="<%=request.getContextPath()%>/css/stylesJotform/ClientejotformRegistrar.jgz" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/">
   JotForm.init(function(){
      $('input_9').hint('ex: myname@example.com');
      JotForm.alterTexts({"alphabetic":"Este campo sólo puede contener letras","alphanumeric":"This field can only contain letters and numbers.","confirmClearForm":"Are you sure you want to clear the form","email":"Enter a valid e-mail address","incompleteFields":"Hay campos obligatorios incompletos. Por favor complete.","lessThan":"Your score should be less than","numeric":"Este campo sólo puede contener valores numéricos","pleaseWait":"Please wait...","required":"Este campo es obligatorio.","uploadExtensions":"You can only upload following files:","uploadFilesize":"Tamaño del archivo no puede ser mayor que:"});
   });
</script>
    </head>
    <body>
        <form class="jotform-form" action="<%=CONTROLLER%>/Registrar/Cliente" method="post" name="form_11213813046" id="11213813046" accept-charset="utf-8" src="<%=request.getContextPath()%>/">
    <input type="hidden" name="formID" value="11213813046" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_4" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_4" class="form-header">
                        Registrar Cliente:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Codigo:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_1">
                <label class="form-label-left" id="label_1" for="input_1">
                    Nombres:<span class="form-required">*</span>
                </label>
                <div id="cid_1" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="10" name="Pnombre" id="Pnombre" />
                        <label class="form-sub-label" for="first_1" id="sublabel_first"> Primer Nombre </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="15" name="Snombre" id="Snombre" />
                        <label class="form-sub-label" for="last_1" id="sublabel_last"> Segundo Nombre </label></span>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Apellidos:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="10" name="Papellido" id="Papellido" />
                        <label class="form-sub-label" for="first_3" id="sublabel_first"> Pirmer Apellido </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" type="text" size="15" name="Sapellido" id="Sapellido" />
                        <label class="form-sub-label" for="last_3" id="sublabel_last"> Segundo Apellido </label></span>
                </div>
            </li>
            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5">
                    Cedula:<span class="form-required">*</span>
                </label>
                <div id="cid_5" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cedula" name="cedula" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Sexo:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:90px" id="sexo" name="sexo">
                        <option>  </option>
                        <option selected="selected" value="Masculino"> Masculino </option>
                        <option value="Femenino"> Femenino </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_11">
                <label class="form-label-left" id="label_11" for="input_11">
                    Direccion:<span class="form-required">*</span>
                </label>
                <div id="cid_11" class="form-input">
                    <input type="text" class="form-textbox validate[required, AlphaNumeric]" id="direccion" name="direccion" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_13">
                <label class="form-label-left" id="label_13" for="input_13">
                    Telefono:<span class="form-required">*</span>
                </label>
                <div id="cid_13" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="telefono" name="telefono" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9">
                    E-mail:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <input type="email" class="form-textbox validate[required, Email]" id="email" name="email" size="30" />
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    Codigo Resepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="cod_recepcionista" name="cod_recepcionista" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">
                <div id="cid_6" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_6" name="submit" type="submit" class="form-submit-button" value="Enviar">
                            Enviar
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11213813046" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11213813046-11213813046";
    </script>
</form>
    </body>
</html>
