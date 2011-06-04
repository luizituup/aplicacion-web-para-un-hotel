<%-- 
    Document   : GenerarFactura
    Created on : 2/05/2011, 11:49:10 AM
    Author     : usuario
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import ="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<jsp:useBean id="c" scope="session" class="mvc.model.Cliente"/>
<jsp:useBean id="co" scope="session" class="mvc.model.Consumo"/>
<jsp:useBean id="s" scope="session" class="mvc.model.Servicios"/>
<%@page import="mvc.model.Consumo"%>
<%@page import="mvc.model.Cliente"%>
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
        <title>Page: Generar Factura</title>
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
        width:484px;
        color:Black !important;
        font-family:Verdana;
        font-size:12px;
    }
</style>

<script src="http://cdn.jotfor.ms/jotform.jgz?3.1.110" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.setCalendar("7");
   });
</script>
    </head>
    <body>
<form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Cliente5" method="post" name="form_11533516496" id="11533516496" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11533516496" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Buscar Cliente:
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
                <label class="form-label-left" id="label_3" for="input_3"> Codigo Cliente: </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown" style="width:70px" id="codigo" name="codigo">
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

                    <div style="margin-left:156px" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Buscar
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11533516496" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11533516496-11533516496";
    </script>
</form>

        <form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Consumo" method="post" name="form_11533516496" id="11533516496" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11533516496" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Buscar Consumo:
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
                <label class="form-label-left" id="label_3" for="input_3"> Codigo Consumo: </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown" style="width:70px" id="codigo" name="codigo">
                        <%
                        List li2 = model.listarconsumo();
                        for(int i=0;i<li2.size();i++)
                        {
                        Consumo cs =(Consumo)li2.get(i);
                        %>
                        <option><%=cs.getCodigo()%></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="margin-left:156px" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Buscar
                        </button>
                    </div>
                </div>
            </li>
            <table width="485" border="1" align="center">
                <tr>
                    <td><strong><font size="+1">Servicio</font></strong></td>
                    <td><strong><font size="+1">Fecha del Consumo</font></strong></td>
                </tr>
                <%
                    String codi = request.getParameter("codigo");
                    List li = model.consultarconsumo(codi);
                        for(int ie2=0;ie2<li.size();ie2++) {
                        mvc.model.Consumo con=(mvc.model.Consumo)li.get(ie2);
                %>
                <tr>
                    <td><font size="+1"><%=con.getServicios()%></font></td>
                    <td><font size="+1"><%=con.getFechaday()%>/<%=con.getFechamonth()%>/<%=con.getFechayear()%></font></td>
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11533516496" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11533516496-11533516496";
    </script>
</form>

                <form class="jotform-form" action="<%=CONTROLLER%>/Crear/Factura" method="post" name="form_11533516496" id="11533516496" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11533516496" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Factura:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Factura:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_codigoFactura" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Recepcionista:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="input_3" name="q3_codigoFactura" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_11">
                <label class="form-label-left" id="label_11" for="input_11">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_11" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:150px" id="input_11" name="q11_codigoCliente">
                        <option>  </option>

                        <option value="Opción 1 "> Opción 1 </option>
                        <option value=" Opción 2 "> Opción 2 </option>
                        <option value=" Opción 3"> Opción 3 </option>
                    </select>
                </div>
            </li>

            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5">
                    Codigo Consumo:<span class="form-required">*</span>
                </label>
                <div id="cid_5" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:150px" id="input_5" name="q5_codigoConsumo">
                        <option>  </option>

                        <option value="Opción 1 "> Opción 1 </option>
                        <option value=" Opción 2 "> Opción 2 </option>
                        <option value=" Opción 3"> Opción 3 </option>
                    </select>
                </div>
            </li>

            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Codigo Hospedaje:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:150px" id="input_6" name="q6_codigoHospedaje">
                        <option>  </option>

                        <option value="Opción 1 "> Opción 1 </option>
                        <option value=" Opción 2 "> Opción 2 </option>
                        <option value=" Opción 3"> Opción 3 </option>
                    </select>
                </div>
            </li>

            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_7" name="q7_fecha[day]" type="text" size="2" maxlength="2" value="03" />
                        -
                        <label class="form-sub-label" for="day_7" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_7" name="q7_fecha[month]" type="text" size="2" maxlength="2" value="06" />

                        -
                        <label class="form-sub-label" for="month_7" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_7" name="q7_fecha[year]" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_7" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_7_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_7_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8"> Descuento: </label>
                <div id="cid_8" class="form-input">
                    <input type="text" class="form-textbox validate[Numeric]" id="input_8" name="q8_totalConsumo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_8">
                <label class="form-label-left" id="label_8" for="input_8"> Total Consumo: </label>
                <div id="cid_8" class="form-input">
                    <input type="text" class="form-textbox validate[Numeric]" id="input_8" name="q8_totalConsumo" size="20" value="<%=s.getCosto()+10 %>" />
                </div>
            </li>
            <li class="form-line" id="id_9">
                <label class="form-label-left" id="label_9" for="input_9"> Total Hospedaje: </label>

                <div id="cid_9" class="form-input">
                    <input type="text" class="form-textbox validate[Numeric]" id="input_9" name="q9_totalHospedaje" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10"> Total Bruto: </label>
                <div id="cid_10" class="form-input">
                    <input type="text" class="form-textbox validate[Numeric]" id="input_10" name="q10_totalBruto" size="20" />

                </div>
            </li>
            <li class="form-line" id="id_15">
                <label class="form-label-left" id="label_15" for="input_15"> Total: </label>
                <div id="cid_15" class="form-input">
                    <input type="text" class="form-textbox validate[Numeric]" id="input_15" name="q15_total" size="20" />
                </div>
            </li>

            <li class="form-line" id="id_12">
                <div id="cid_12" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_12" type="submit" class="form-submit-button">
                            Total
                        </button>
                    </div>
                </div>
            </li>

            <li class="form-line" id="id_14">
                <label class="form-label-left" id="label_14" for="input_14"> Estado Factura: </label>
                <div id="cid_14" class="form-input">
                    <select class="form-dropdown" style="width:150px" id="input_14" name="q14_estadoFactura">
                        <option>  </option>
                        <option value="Opción 1 "> Opción 1 </option>

                        <option value=" Opción 2 "> Opción 2 </option>
                        <option value=" Opción 3"> Opción 3 </option>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_13">
                <div id="cid_13" class="form-input-wide">

                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_13" type="submit" class="form-submit-button">
                            Generar
                        </button>
                        &nbsp;
                        <button id="input_reset_13" type="reset" class="form-submit-reset">
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11533516496" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11533516496-11533516496";
    </script>
</form>
    </body>
</html>
