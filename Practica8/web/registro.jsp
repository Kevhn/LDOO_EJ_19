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
        <form action="nuevousuario" method="post">
            <label>Usuario</label>
            <input type="text" name="usuario"><br>
            <label>Nombre</label>
            <input type="text" name="nombre"><br>
            <label>Apellido</label>
            <input type="text" name="apellido"><br>
            <label>Contraseña</label>
            <input type="password" name="pass"><br>
            <input type="submit" value="Registrarme">
        </form>
    </body>
</html>
