<%-- 
    Document   : AsignarhabitacionHospedaje
    Created on : 2/05/2011, 11:46:36 AM
    Author     : hotel  balcones
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import ="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<jsp:useBean id="clien" scope="session" class="mvc.model.Cliente"/>
<jsp:useBean id="hab" scope="session" class="mvc.model.Habitacion"/>
<jsp:useBean id="usua" scope="session" class="mvc.model.Usuario"/>
<%@page import="mvc.model.Habitacion"%>
<%@page import="mvc.model.Usuario"%>
<%@page import="mvc.model.Cliente"%>
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
        <form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Cliente2" method="post" name="form_11225927260" id="11225927260" accept-charset="utf-8">
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
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Cliente:
                </label>
                <div id="cid_3" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="codigo" name="codigo">
                        <%
                        List li1 = model.listarcliente();
                        for(int i=0;i<li1.size();i++)
                        {
                        Cliente c =(Cliente)li1.get(i);
                        %>
                        <option><%=c.getCodigo()%></option>
                        <% } %>
                    </select>
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
    <input type="hidden" id="simple_spc" name="simple_spc" value="11225927260" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11225927260-11225927260";
    </script>
</form>
        <form class="jotform-form" action="<%=CONTROLLER%>/Asignar/Hospedaje" method="post" name="form_11225927260" id="11225927260" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11225927260" />
    <div class="form-all">
        <ul class="form-section">
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3">
                    Codigo Hospedaje:<span class="form-required">*</span>
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_7">
                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha Inicio:<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_7" name="inicioday" type="text" size="2" maxlength="2" value="24" />
                        -
                        <label class="form-sub-label" for="day_7" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_7" name="iniciomonth" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_7" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_7" name="inicioyear" type="text" size="4" maxlength="4" value="2011" />
                            <label class="form-sub-label" for="year_7" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_7_pick" src="<%=request.getContextPath()%>/imagenes/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_7_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6">
                    Fecha Final:<span class="form-required">*</span>
                </label>
                <div id="cid_6" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="day_6" name="finalday" type="text" size="2" maxlength="2" value="24" />
                        -
                        <label class="form-sub-label" for="day_6" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="month_6" name="finalmonth" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_6" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="year_6" name="finalyear" type="text" size="4" maxlength="4" value="2011" />
                        <label class="form-sub-label" for="year_6" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_6_pick" src="<%=request.getContextPath()%>/imagenes/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_6_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>
            <li class="form-line" id="id_12">
                <label class="form-label-left" id="label_12" for="input_12">
                    Valor:<span class="form-required">*</span>
                </label>
                <div id="cid_12" class="form-input">
                    <input type="text" class="form-textbox validate[required, Numeric]" id="valor" name="valor" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_4" for="input_4">
                    Codigo Cliente:<span class="form-required">*</span>
                </label>
                <div id="cid_4" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="cod_cliente" name="cod_cliente">
                        <%
                        List li2 = model.listarcliente();
                        for(int i=0;i<li2.size();i++)
                        {
                        Cliente ci =(Cliente)li2.get(i);
                        %>
                        <option><%=ci.getCodigo()%></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="form-line" id="id_4">
                <%
                try{
                    model.conectar();
                    System.out.println("Conexion Ok...");
                }catch(Exception ex){
                    throw new Exception("Error en la Pagina: "+ex.toString());
                }
                %>
                <label class="form-label-left" id="label_4" for="input_4">
                    Numero De Habitacion:<span class="form-required">*</span>
                </label>
                <div id="cid_2" class="form-input">
                    <select class="form-dropdown validate[required]" style="width:80px" id="cod_habitacion" name="cod_habitacion">
                        <%
                        List li = model.listarhabitacion();
                        for(int i=0;i<li.size();i++)
                        {
                        Habitacion h =(Habitacion)li.get(i);
                        %>
                        <option><%=h.getNumero_Habitacion()%></option>
                        <% } %>
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
                    Codigo Recepcion:<span class="form-required">*</span>
                </label>
                <div id="cid_9" class="form-input">
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
            
            <li class="form-line" id="id_10">
                <label class="form-label-left" id="label_10" for="input_10">
                    Acompañantes:<span class="form-required">*</span>
                </label>
                <div id="cid_10" class="form-input">
                    <input type="text" id="acompañantes" class="form-textbox" name="acompañantes" size="20"/>
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
