<%-- 
    Document   : RegistroNormal
    Created on : 12/04/2019, 11:28:37 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Normal</title>
    </head>
    <body>
        <form action="nuevousuario" method="post">
            Usuario: <input type="text" name="user"><br>
            Contraseña: <input type="password" name="password"><br>
            Fecha de nacimiento: <input type="date" name="birthdate"><br>
            Email: <input type="text" name="email"><br>
            <input type="hidden" name="usertype" value="UsuarioNormal">
            ID: <input type="text" name="userid"><br>
            Nombre: <input type="text" name="name"><br>
            Tipo de suscripción: <input type="radio" name="suscriptiontype" value="Gratis">
            <input type="radio" name="suscriptiontype" value="De pago">
            Dirección: <input type="text" name="address">
            <input type="submit" value="Regístrate" onclick="getDate()">
        </form>
    </body>
</html>


