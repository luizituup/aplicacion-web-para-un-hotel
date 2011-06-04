<%-- 
    Document   : RegistrarReserva
    Created on : 2/05/2011, 11:45:11 AM
    Author     : usuario
--%>
<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@page import ="java.text.DecimalFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<jsp:useBean id="clien" scope="session" class="mvc.model.Cliente"/>
<jsp:useBean id="habit" scope="session" class="mvc.model.Habitacion"/>
<jsp:useBean id="usua" scope="session" class="mvc.model.Usuario"/>
<%@page import="mvc.model.Cliente"%>
<%@page import="mvc.model.Habitacion"%>
<%@page import="mvc.model.Usuario"%>
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
        width:485px;
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
        <form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Cliente3" method="post" name="form_11225927262" id="11225927262" accept-charset="utf-8">
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
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo:
                </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="codigo" name="codigo">
                        <%
                        List li = model.listarcliente();
                        for(int i=0;i<li.size();i++)
                        {
                        Cliente c =(Cliente)li.get(i);
                        %>
                        <option><%=c.getCodigo()%></option>
                        <% } %>
                    </select>
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
            <table width="485" border="1" align="center">
                <tr>
                    <td><strong><font size="+1">Nombre y Apellido</font></strong></td>
                </tr>
                    <%
                    String codigo = request.getParameter("codigo");
                    List lie = model.consultarcliente(codigo);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Cliente cli=(mvc.model.Cliente)lie.get(ie2);
                    %>
                <tr>
                    <td><font size="+1"><%=cli.getPnombre()%> <%=cli.getSnombre()%> <%=cli.getPapellido()%> <%=cli.getSapellido()%></font></td>
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11225927262" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11225927262-11225927262";
    </script>
</form>
                <form class="jotform-form" action="<%=CONTROLLER%>/Registrar/Reserva" method="post" name="form_11225927262" id="11225927262" accept-charset="utf-8">
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
            <li class="form-line" id="id_13">
                <label class="form-label-left" id="label_13" for="input_13"> Codigo reserva: </label>
                <div id="cid_13" class="form-input">
                    <input type="text" class="form-textbox" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">

                <label class="form-label-left" id="label_6" for="input_6">
                    Fecha Inicio:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_6" name="inicioday" type="text" size="2" maxlength="2" value="31" />
                        -
                        <label class="form-sub-label" for="day_6" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_6" name="iniciomonth" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_6" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_6" name="inicioyear" type="text" size="4" maxlength="4" value="2011" />

                        <label class="form-sub-label" for="year_6" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_6_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_6_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha Final:<span class="form-required">*</span>

                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_7" name="finalday" type="text" size="2" maxlength="2" value="31" />
                        -
                        <label class="form-sub-label" for="day_7" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_7" name="finalmonth" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_7" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_7" name="finalyear" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_7" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_7_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />

                        <label class="form-sub-label" for="input_7_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8">
                    Estado<span class="form-required">*</span>
                </label>

                <div id="cid_8" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="estado" name="estado">
                        <option>  </option>
                        <option selected="selected" value="Activa"> Activa </option>
                        <option value="Inactiva"> Inactiva </option>
                    </select>

                </div>
            </li>
            <li class="form-line" id="id_14">
                <label class="form-label-left" id="label_14" for="input_14">
                    Costo:<span class="form-required">*</span>
                </label>
                <div id="cid_14" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="costo" name="costo">
                        <option selected="selected" value="50000"> 50000 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_9">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_9" for="input_9">
                    Numero de Habitación:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="n_habitacion" name="n_habitacion">
                        <%
                        List li2 = model.listarhabitacion();
                        for(int i=0;i<li2.size();i++)
                        {
                        Habitacion h =(Habitacion)li2.get(i);
                        %>
                        <option><%=h.getNumero_Habitacion()%></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Numero de Personas:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:40px" id="n_personas" name="n_personas">
                        <option>  </option>
                        <option selected="selected" value="1 "> 1 </option>

                        <option value="2"> 2 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_12">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_12" for="input_12">
                    Código de Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="cod_recepcionista" name="cod_recepcionista">
                        <%
                        List li3 = model.listarusuario();
                        for(int i=0;i<li3.size();i++)
                        {
                        Usuario u =(Usuario)li3.get(i);
                        %>
                        <option><%=u.getClave()%></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_15">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_15" for="input_15">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_15" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="cod_cliente" name="cod_cliente">
                        <%
                        List li1 = model.listarcliente();
                        for(int i=0;i<li1.size();i++)
                        {
                        Cliente ci =(Cliente)li1.get(i);
                        %>
                        <option><%=ci.getCodigo()%></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Reservar
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
