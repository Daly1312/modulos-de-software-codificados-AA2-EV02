<%-- 
    Document   : index
    Created on : 17/08/2025, 3:10:41 p. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo formulario JSP</title>
    </head>
    <body>
        <h1>Formulario de ejemplo</h1>
        <form name="ingreso" method="">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" value=""><br><br>
            <label for="clave"> Clave:</label>
            <input type="password" id="clave" name="clave" value=""><br><br>
            <input type="submit" value="Enviar">
        </form>
        <% 
            String mensaje = "Bienvenido al formulario";
            
            if (request.getParameter("usuario") != null){
            String usuario = request.getParameter("usuario");
            mensaje = "hola" + usuario + "Has enviado el formulario";
            }
            
        %>
        <p><%= mensaje %></p>
        
    </body>
</html>
