<%-- Define e inicializa el modelo --%>
<jsp:useBean id="model" scope="session" class="mvc.model.WebModel">
<%
System.out.println("----//INITMODEL----llegada----");
model.init(application); %>
</jsp:useBean>
<%-- proporciona un alias para el servlet del controlador --%>
<%
    String BASEURL=request.getContextPath();
    String CONTROLLER=BASEURL + "/controller";
%>
