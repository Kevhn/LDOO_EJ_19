<%-- 
    Document   : registro
    Created on : 6/04/2019, 08:22:35 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <h1>Formulario de registro</h1>
        <form action="redirect" method="post">
            <select name="usertype">
                <option value="Admin">Administrador</option>
                <option value="Invitado">Invitado</option>
                <option value="UsuarioNormal">Usuario</option>
            </select>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
