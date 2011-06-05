<%-- 
    Document   : index
    Created on : 30/04/2011, 05:28:44 PM
    Author     : Hotel Balcones
--%>
<%@ page session="true" %>
<%@ page import= "java.util.*" %>
<%@ page import= "mvc.model.*" %>
<%@ include file="/WEB-INF/InitModel.jsp" %>
<%@ page errorPage="/ErrorPages.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="usu"scope="session" class="mvc.model.Usuario"/>
<%
String usuario= "";

HttpSession sesion = request.getSession();
if (sesion.getAttribute("Tipos")==null){
   %>
   <jsp:forward page="index.jsp">
       <jsp:param name="error" value="<center><font color=\"red\" >Es Obligatorio Identificarse</font></center>"/>
   </jsp:forward>
<%
   }else{
    usuario =(String)sesion.getAttribute("usuario");
   }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel los balcones de Badillo</title>
        <link type="text/css" href="<%=request.getContextPath()%>/css/ui-lightness/jquery-ui-1.8.12.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui-1.8.12.custom.min.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/menu_style.css" type="text/css" />
        <link href="<%=request.getContextPath()%>/css/stylesheet.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript">
			$(function(){

				// Accordion
				$("#accordion").accordion({ header: "h3" });

                                // AccordionPrecio
				$("#accordion1").accordion({ header: "h2" });

				// Tabs
				$('#tabs').tabs();


				// Dialoginformacion
				$('#dialog').dialog({
					autoOpen: false,
					width: 600,
                                        show: "bounce",
                                        hide: "explode",
					buttons: {
						"Ok": function() {
							$(this).dialog("close");
						}
					}
				});

                                // DialogQuienesSomos
				$('#dialog2').dialog({
					autoOpen: false,
					width: 600,
                                        show: "explode",
                                        hide: "puff",
					buttons: {
						"Ok": function() {
							$(this).dialog("close");
						}
					}
				});

                                // DialogPrecios
				$('#dialogPrecios').dialog({
					autoOpen: false,
					width: 600,
                                        show: "explode",
                                        hide: "puff",
					buttons: {
						"Ok": function() {
							$(this).dialog("close");
						}
					}
				});

                                // DialogoContact
                                $('#dialogFormContact').dialog({
                                         autoOpen: false,
                                         height: 400,
                                         width: 500,
                                         show: "drop",
                                         hide: "clip",
                                         modal: true,
                                         buttons: {
                                             "Ok": function() {
							$(this).dialog("close");
						},
                                             "Cancel": function() {
                                                        $( this ).dialog( "close" );
                                                }
					}
				});
                                                             
				// DialogImformacion
				$('#dialogImformacion').button().click(function(){
					$('#dialog').dialog('open');
					return false;
				});

                                // DialogQuienesSomos
                                $('#dialogQuienesSomos').button().click(function(){
					$('#dialog2').dialog('open');
					return false;
				});

                                // DialogContact
                                $('#dialogContact').button().click(function(){
					$('#dialogFormContact').dialog('open');
					return false;
				});

                                // DialogServicios
                                $('#dialogServicios').button().click(function(){
                                        $('#dialogPrecios').dialog('open');
					return false;
				});

                                // DialogFotos 
                                $('#dialogFotos').button().click(function(){
				});

                                // DialogNovedades 
                                $('#dialogNovedades').button().click(function(){
				});                               

                                // CerrarLaSesion
                                $('#cerrarlasesion').button().click(function(){
				});

				// Datepicker
				$('#datepicker').datepicker({
					inline: true
				});

				// Slider
				$('#slider').slider({
					range: true,
					values: [17, 67]
				});

				// Progressbar
				$("#progressbar").progressbar({
					value: 20
				});

				//hover states on the static widgets
				$('#dialogImformacion, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); },
					function() { $(this).removeClass('ui-state-hover'); }
				);

			});
	</script>
        <script>
            //Button
	$(function() {
		$( "button, input:submit, a", ".demo" ).button();
		$( "a", ".demo" ).click(function() { return false; });
	});
	</script>
        <style>
		body { font-size: 62.5%; }
		label, input, textarea { display:block; }
		input.text { margin-bottom:12px; width:95%; padding: .4em; }
		fieldset { padding:0; border:0; margin-top:20px; }
                textarea.texto {width: 95%; height: 30%}
	</style>
    </head>
    <body>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" valign="top">                    
                    <table width="685" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="left" valign="top">
                                <table width="700" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="8" rowspan="3" align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/header_left.jpg" alt="" width="8" height="310" /></td>
                                        <td align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/header_top2.gif" alt="" width="708" height="40" /></td>
                                        <td width="8" rowspan="3" align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/header_right.jpg" alt="" width="8" height="310" /></td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="header_image_box">
                                            <table width="700" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="left" valign="top" class="header_image_top">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valign="top" class="header_image_bottom">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="menu_bg">
                                            <table width="90%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <div>
                                                        <ul class="menu">
                                                            <li class="top">
                                                                <a href="<%=request.getContextPath()%>/AdminCliente.jsp" class="top_link"><span>Inicio</span></a>
                                                            </li>
                                                            <li class="top">
                                                                <a href="#" class="top_link"><span>Reserva</span></a>
                                                                <ul class="sub">
                                                                    <li><a href="<%=request.getContextPath()%>/RegistrarReserva.jsp" target="Content" title="CrearR">Crear</a></li>
                                                                    <li><a href="<%=request.getContextPath()%>/ConsultarReserva.jsp" target="Content" title="ConsultarR">Consultar</a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                               </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <table width="725" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="8" align="left" valign="top" class="body_left_bg"><img src="<%=request.getContextPath()%>/imagenes/body_left.jpg" alt="" width="8" height="140" /></td>
                                      <td align="left" valign="top" class="body_text_box">
                                            <table width="644" height="364" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="130" align="left" valign="top">
                                                        <table width="130" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td align="left" valign="top">
                                                                    <table width="130" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td class="mainoff" onmouseover="this.className='mainon'" onmouseout="this.className='mainoff'" align="center" valign="middle"><button id="dialogImformacion" class="ui-state-default ui-corner-all">Imformaci&ograve;n</button></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="mainoff" onmouseover="this.className='mainon'" onmouseout="this.className='mainoff'" align="center" valign="middle"><button id="dialogQuienesSomos" class="ui-state-default ui-corner-all">Quienes Somos</button></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="mainoff" onmouseover="this.className='mainon'" onmouseout="this.className='mainoff'" align="center" valign="middle"><button id="dialogServicios" class="ui-state-default ui-corner-all">Precios</button></td>
                                                                        </tr>                                                                      
                                                                        <tr>
                                                                            <td class="mainoff" onmouseover="this.className='mainon'" onmouseout="this.className='mainoff'" align="center" valign="middle"><button id="dialogContact" class="ui-state-default ui-corner-all">Contactanos</button></td>
                                                                        </tr>                                                                        
                                                                        <tr>
                                                                            <td class="mainoff" onmouseover="this.className='mainon'" onmouseout="this.className='mainoff'" align="center" valign="middle"><a href="<%=request.getContextPath()%>/Gallery.jsp" target="Content" title="Gallery"><button id="dialogFotos" class="ui-state-default ui-corner-all">Fotos</button></a></td>
                                                                        </tr>                                                                       
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="32" align="left" valign="top">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="top">
                                                                    <table width="130" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/box_left_top.gif" alt="" width="9" height="9" /></td>
                                                                            <td align="left" valign="top" class="box_top_line"><img src="<%=request.getContextPath()%>/images/top_line.gif" alt="" width="4" height="9" /></td>
                                                                            <td align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/box_right_top.gif" alt="" width="9" height="9" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" valign="top" class="box_left_line">&nbsp;</td>
                                                                            <td  align="left" valign="top">
                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="20" align="center" valign="middle" class="highlight" style="text-transform:uppercase; font-size:10px;" onMouseOver="this.className='mainon'" onMouseOut="this.className='mainoff'">
                                                                                            <span class="style4"><strong>BIENVENIDO CLIENTE</strong><br><%=usu.getUsuario2() %></span>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td height="22" align="center" valign="middle" onMouseOver="this.className='mainon'" onMouseOut="this.className='mainoff'">
                                                                                            <button id="cerrarlasesion" class="ui-state-default ui-corner-all"><a href="<%=BASEURL%>/CerrarSession.jsp"><span>Cerrar Sessi&oacute;n</span></a></button>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td align="left" valign="top" class="box_right_line">&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/box_left_bottom.gif" alt="" width="9" height="9" /></td>
                                                                            <td align="left" valign="top" class="box_bottom_line"><img src="<%=request.getContextPath()%>/images/bottom_line.gif" alt="" width="4" height="9" /></td>
                                                                            <td align="left" valign="top"><img src="<%=request.getContextPath()%>/imagenes/box_right_bottom.gif" alt="" width="9" height="9" /></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="30" align="left" valign="top">&nbsp;</td>
                                                    <td width="484" align="left" valign="top">
                                                        <table width="485" height="365" border="0" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img src="<%=request.getContextPath()%>/imagenes/Hotel Badillo.jpg" width="485" height="30" />
								</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="485" height="365" align="left" valign="top">
                                                                    <iframe src="<%=request.getContextPath()%>/ContenidoHotel.jsp" name="Content" frameborder="0" width="485" height="650">

                                                                    </iframe>
								</td>
                                                            </tr>                                                            
                                                      </table>
                                                  </td>
                                                </tr>
                                        </table>
                                      </td>
                                        <td width="8" align="left" valign="top" class="body_right_bg"><img src="<%=request.getContextPath()%>/imagenes/body_right.jpg" alt="" width="8" height="140" /></td>
                                    </tr>
                              </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <table width="717" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="8" rowspan="2" align="left" valign="top"><img src="imagenes/footer_left.gif" alt="" width="8" height="56" /></td>
                                        <td style="white-space:pre; font-size:12px; color:#601E29; color:#B46471;" height="23" colspan="2" align="center" valign="middle" bgcolor="#FFEEF2">
                                        </td>                                       
                                    </tr>
                                    <tr>
                                        <td width="514" align="right" valign="top" class="footer_left_bg">
                                            <span class="footer_link" style="font-size:10px; text-decoration:none; padding-right:130px; color:#B46471;">&copy; Company Hotel los Balcones de Badillo.</span></td>
                                        <td width="196" align="left" valign="top">
                                            <a href="<%=request.getContextPath()%>/http://www.sarkis-webdesign.com/" target="_blank">
                                                <img src="<%=request.getContextPath()%>/imagenes/web-designer.gif" alt="Freelance Web Designer" width="196" height="32" border="0" /></a>                                        </td>
                                    </tr>
                              </table>
                            </td>
                        </tr>
                   </table>
                </td>
            </tr>
       </table>
        <div id="dialog" title="Dialogo de Imformacion">
            <div id="accordion">
			<div>
                            <h3><a href="#">Contactos</a></h3>
                            <div>Hotel Los Balcones De Badillo<br>
                                Reservas:<br>
                                Tel/Fax: (+575) 6601703 - 300   8050916<br>
                                Ciudad Antigua, Calle 2da de   Badillo #36 - 12<br>
                                Email:   losbalconesdebadillo@hotmail.com<br>
                                www.hotellosbalconesdebadillo.com<br>
                            </div>
			</div>
			<div>
                            <h3><a href="#">Informacion</a></h3>
				<div>El hotel Balcones de Badillo está ubicado en la Ciudad Antigua, Calle 2da de Badillo Nº 36 – 12
                                    de la ciudad de Cartagena de Indias. Consta de un personal de 45 trabajadores incluyendo el gerente,
                                    Luis Armando Castellano, que es el encargado. De velar por el bienestar y confort de todos los huéspedes.
                                    Este Hotel se encuentra en pleno corazón del corralito de piedra, bañado por historias de reyes y
                                    marqueses entre la hermosura azul del mar Caribe. Este hotel cuenta con 12 habitaciones confortables
                                    (10 habitaciones y 2 suites.) hermosos acabados, aire central, TV con cable, balcones y una terraza
                                    desde donde se puede apreciar parte de la ciudad antigua y la ciudad nueva.
                                </div>
			</div>
			<div>
                            <h3><a href="#">Detalles</a></h3>
				<div>La Casa de Badillo, cuanta con un Sala muy confortable y comoda para comversar o leer, y como hantes 
                                    mencionado con unos espacios unicos con un concepto poco frecuenta, como tambien lugares vanguardistas 
                                    y de un diseño combinado entre el confort y la estetica. Como tambien una hermosa vista a la hermosa 
                                    cartagena, a un de las ciudades mas turisticas, pues gracias a sus historias de reyes y masqueses. 
                                    Ya que con esta estupenda vista se puede apreciar muy bien la hermosa cartagena, y como tambien sus 
                                    edificios y construcciones historicas, como por ejemplo el Gran Reloj y demas.
                                </div>
			</div>
		</div>
        </div>

        <div id="dialog2" title="Dialogo Quienes Somos">
            <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Hotel Balcones</a></li>
		<li><a href="#tabs-2">Casa de Balcones</a></li>
            </ul>
            <div id="tabs-1">Hotel "Los Balcones De Badillo" se encuentra en pleno corazón
                            del corralito de piedra bañado por historias de reyes y marqueses entre la
                            hermosura azul del mar caribe cerca del la hermosa plaza Fernández de Madrid
                            Nuestras instalaciones cuentan con 12 habitaciones Confortables
                            (10 Habitaciones Dobles y 2 Duplex), hermosos acabados, aire central,
                            TV cable, balcones y una terraza desde donde se puede apreciar parte de la
                            ciudad antigua y la ciudad nueva, disfrute su servicio de desayunos disponible
                            ya en nuestras instalaciones.</div>
            <div id="tabs-2">Casa de Badillo: Un concepto diferente en hospedaje en el que funcionan
                            los servicios de un Hotel con las comodidades de un Aparta Hotel, espacios ùnicos
                            con un concepto poco frecuente, lugares vanguardistas y de estudiado diseño
                            combinan la estetica y el confort con una propia manera de ser y de hacer que
                            marcan su personalidad. Estamos ubicados centricamente a pocos pasos de embajadas,
                            consulados, monumentos, iglesias, museos, bancos, centros comerciales y de
                            esparcimiento. Casa de Badillo cuentan con 4 habitaciones Confortables, hermosos
                            acabados en madera, jackusy, aire acondicionado, TV cable, gran confort en mueble,
                            baño privado, cocina completamente equipada, servicio de desayuno y muchas
                            caracteristicas adicioanales que hacen de Casa de Badillo el lugar ideal para
                            satisfacer sus expectativas y necesidades.</div>
            </div>
        </div>

        <div id="dialogFormContact" title="Contactanos">
            <p>Todos los campos son obligatorios.</p>
            <form>
                <fieldset>
                    <label for="nombre">Nombre:</label>
                    <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" />
                    <label for="direccion">Dirección:</label>
                    <input type="text" name="direccion" id="direccion" class="text ui-widget-content ui-corner-all"/>
                    <label for="ciudad">Ciudad:</label>
                    <input type="text" name="ciudad" id="ciudad" class="text ui-widget-content ui-corner-all"/>
                    <label for="pais">Pais:</label>
                    <input type="text" name="pais" id="pais" class="text ui-widget-content ui-corner-all"/>
                    <label for="ciudad">Telefono:</label>
                    <input type="text" name="telefono" id="telefono" class="text ui-widget-content ui-corner-all"/>
                    <label for="email">Email:</label>
                    <input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all" />
                    <label for="comentarios">Comentarios:</label>
                    <textarea type="texto" name="comentarios" id="comentarios" class="text ui-widget-content ui-corner-all" />                    
                </fieldset>
            </form>
        </div>

        <div id="dialogPrecios" title="Dialogo de Tarifas">
            <div id="accordion1">
			<div>
                            <h2><a href="#">TEMPORADA BAJA</a></h2>
                            <div>Hotel Los Balcones De Badillo<br>
                                Habitación 1 Persona: $ 144.000.oo - US $ 80 .00<br>
                                Habitación Pareja: $ 198.500.oo - US $ 110.00<br>
                                Habitación SUITE: $297.000.oo - US $ 165 .00<br>
                            </div>
			</div>
			<div>
                            <h2><a href="#">TEMPORADA ALTA</a></h2>
				<div>Hotel Los Balcones De Badillo<br>
                                    Habitación 1 Persona: $ 155.000.oo - US $ 86 .00
                                    Habitación Pareja: $ 210.000.oo - US $ 116.00
                                    Habitación SUITE: $ 309.000.oo - US $ 171.00
                                    Habitación Doble Del 20 de Diciembre hasta el 15 de Enero: $ 253.000.oo - US $ 125.00
                                    ESTOS PRECIOS  INCLUYEN DESAYUNO,  IMPUESTOS, SEGURO HOTELERO E INTERNET.
                                </div>
			</div>
		</div>
        </div>
    </body>
</html>
