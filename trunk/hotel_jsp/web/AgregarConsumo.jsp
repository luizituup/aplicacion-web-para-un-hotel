<%-- 
    Document   : AgregarConsumo
    Created on : 2/06/2011, 05:59:34 PM
    Author     : EDUARDO
--%>
<%@ page import= "java.util.*" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@page import ="java.text.DecimalFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel"/>
<jsp:useBean id="servi" scope="session" class="mvc.model.Consumo"/>
<%@page import="mvc.model.Consumo"%>
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
        <title>Page: Agregar Consumo</title>
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
        <form class="jotform-form" action="<%=CONTROLLER%>/Consultar/Cliente4" method="post" name="form_11225927262" id="11225927262" accept-charset="utf-8">
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
                    Codigo:
                </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox" id="codigo" name="codigo" size="20" />
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
                    <td><strong><font size="+1">P. Nombre</font></strong></td>
                    <td><strong><font size="+1">S. Nombre</font></strong></td>
                </tr>
                    <%
                    String codigo = request.getParameter("codigo");
                    List lie = model.consultarcliente(codigo);
                        for(int ie2=0;ie2<lie.size();ie2++) {
                        mvc.model.Cliente cli=(mvc.model.Cliente)lie.get(ie2);
                    %>
                <tr>
                    <td><font size="+1"><%=cli.getPnombre()%></font></td>
                    <td><font size="+1"><%=cli.getSnombre()%></font></td>
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
        <%
            try{
                model.conectar();
                System.out.println("Conexion Ok...");
            }catch(Exception ex){
                throw new Exception("Error en la Pagina: "+ex.toString());
            }
        %>
        <div id="ListarServicios" title="Lista de Servicios">
            <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        <p align="center" class="style1">
                            <strong>
                        Listar Servicos:
                            </strong>
                        </p>
                    </h2>
           <table width="100%" border="1" align="center">
                <tr>
                    <td width="30%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1"></font><font size="+1">Codigo</font></strong></div></td>
                    <td width="30%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Cantidad</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Nombre</font></strong></div></td>
                    <td width="40%" bordercolor="#000000" bgcolor="#9797FF"><div align="center"><strong><font size="+1">Costo</font></strong></div></td>
                </tr>
                    <%
                    List lis = model.listarservicios();
                        for(int i=0;i<lis.size();i++)
                    {
                    Servicios s = (Servicios)lis.get(i);
                    %>
                <tr>
                    <td width="30%"><div align="center"><font size="+1"><%=s.getCodigo()%></font></div></td>
                    <td width="30%"><div align="center"><font size="+1"><%=s.getCantidad()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=s.getNombre()%></font></div></td>
                    <td width="40%"><div align="center"><font size="+1"><%=s.getCosto()%></font></div></td>
                </tr>
                <% } %>
            </table>
            </div>
       </div>
        <form class="jotform-form" action="<%=CONTROLLER%>/Registrar/Consumo" method="post" name="form_11525314412" id="11525314412" accept-charset="utf-8">
    <input type="hidden" name="formID" value="11525314412" />
    <div class="form-all">
        <ul class="form-section">
            <li id="cid_1" class="form-input-wide">
                <div class="form-header-group">
                    <h2 id="header_1" class="form-header">
                        Agregar Consumo:
                    </h2>
                </div>
            </li>
            <li class="form-line" id="id_3">
                <label class="form-label-left" id="label_3" for="input_3"> Codigo: </label>
                <div id="cid_3" class="form-input">
                    <input type="text" class="form-textbox" id="codigo" name="codigo" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_4">

                <label class="form-label-left" id="label_4" for="input_4"> Codigo Cliente: </label>
                <div id="cid_4" class="form-input">
                    <input type="text" class="form-textbox" id="cod_cliente" name="cod_cliente" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_5">
                <label class="form-label-left" id="label_5" for="input_5"> Servicio Consumido: </label>

                <div id="cid_5" class="form-input">
                    <input type="text" class="form-textbox" id="servicios" name="servicios" size="20" />
                </div>
            </li>
            <li class="form-line" id="id_6">
                <label class="form-label-left" id="label_6" for="input_6"> Cantidad: </label>
                <div id="cid_6" class="form-input">
                    <input type="text" class="form-textbox" id="cantidad" name="cantidad" size="20" />

                </div>
            </li>
             <li class="form-line" id="id_7">

                <label class="form-label-left" id="label_7" for="input_7">
                    Fecha :<span class="form-required">*</span>
                </label>
                <div id="cid_7" class="form-input"><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="fechaday" name="fechaday" type="text" size="2" maxlength="2" value="31" />
                        -
                        <label class="form-sub-label" for="day_6" id="sublabel_day"> Día </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="fechamonth" name="fechamonth" type="text" size="2" maxlength="2" value="05" />
                        -
                        <label class="form-sub-label" for="month_6" id="sublabel_month"> Mes </label></span><span class="form-sub-label-container"><input class="form-textbox validate[required]" id="fechayear" name="fechayear" type="text" size="4" maxlength="4" value="2011" />

                        <label class="form-sub-label" for="year_6" id="sublabel_year"> Año </label></span><span class="form-sub-label-container"><img alt="Elija una fecha" id="input_6_pick" src="http://www.jotform.com/images/calendar.png" align="absmiddle" />
                        <label class="form-sub-label" for="input_6_pick"> &nbsp;&nbsp;&nbsp; </label></span>
                </div>
            </li>

            <li class="form-line" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" class="form-buttons-wrapper">
                        <button id="input_2" type="submit" class="form-submit-button">
                            Agregar
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

    <input type="hidden" id="simple_spc" name="simple_spc" value="11525314412" />
    <script type="text/javascript">
        document.getElementById("si" + "mple" + "_spc").value = "11525314412-11525314412";
    </script>
</form>
    </body>
</html>
