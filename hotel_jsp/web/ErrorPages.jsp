<%@page session="false" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.* " %>
<%@page import="javax.servlet.http.* " %>
<%@page isErrorPage="true" %>

<%!protected HttpServletRequest request;%>
<% request= (HttpServletRequest)pageContext.getRequest();
   String BASEURL= request.getContextPath();

 %>
<html>
 <head>
  <title> Pagina de Error </title>
  <style type="">
      .Errores{
          Color:#0000FF;
          font-size: xx-large;
          text-align: justify;
        }
  </style>
 </head>
 <body  text="#000000">

     <p align="center"></p>
<form method="post" action="">
  <table border="0">
  <tr><td height="10"></td></tr>
  </table>

  <table align="center" width="407" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="32" >&nbsp;</td>
      <td width="123" ><p>&nbsp;</p>
        <p>&nbsp;</p></td>
      <td width="210" >&nbsp;</td>
      <td width="3" >&nbsp;</td>
      <td width="32" >&nbsp;</td>
      <td width="1"></td>
    </tr>
    <tr>
      <td >&nbsp;</td>
      <td rowspan="1"  ></td>
      <td colspan="2"> <H3><font color="#FF0000">Advertencia </font></H3>
        <H4><font color="#FF0000">Fallo en la Transacion ...</font></H4></td>
      <td >&nbsp;</td>
      <td></td>
    </tr>
    <tr>
      <td >&nbsp;</td>
      <td colspan="3" rowspan="2">
          <p class="Errores"><%=normalize(exception.getMessage()) %></p>
	  </td>
      <td >&nbsp;</td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="2" valign="top" >&nbsp;</td>
      <td height="1"></td>
      <td></td>
      <td width="6"></td>
    </tr>
    <tr>
      <td height="80" rowspan="2" >&nbsp;</td>
      <td rowspan="2" ><input class="boton" type="button" name="Atras" value="&laquo; Atras" onClick="javascript:self.history.back();"></td>
      <td rowspan="2" >&nbsp;</td>
      <td rowspan="2" >&nbsp;</td>
      <td height="30"></td>
    </tr>
  </table>

 </form>
 </BODY>
<HTML>
<%!private String normalize(String value){
  		StringBuffer sb=new StringBuffer();

		if (value==null)
                    return "Objeto Vacio";
		for(int i=0;i< value.length();i++){
			char c=value.charAt(i);
			 if ((c=='|'))
				sb.append("<br>");
			else
			   sb.append(c);
		}
		return sb.toString();
  }
%>