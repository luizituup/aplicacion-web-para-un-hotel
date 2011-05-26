<%-- 
    Document   : UploadPhotos
    Created on : 17/05/2011, 08:40:02 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page: Upload Photos</title>
    </head>
    <body>
        <form name="form1" action="cargarservlet" method="post" enctype="multipart/form-data">
          <input type="file" name="archivo"/>
          <input type="submit" name="enviar" value="enviar"/>
        </form>
    </body>
</html>
