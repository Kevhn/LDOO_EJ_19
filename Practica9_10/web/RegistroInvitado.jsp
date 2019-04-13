<%-- 
    Document   : RegistroInvitado
    Created on : 12/04/2019, 11:28:27 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/main.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Invitado</title>
    </head>
    <body>
        <form action="nuevousuario" method="post">
            Usuario: <input type="text" name="user"><br>
            Contraseña: <input type="password" name="password"><br>
            Fecha de nacimiento: <input type="date" name="birthdate"><br>
            Email: <input type="text" name="email"><br>
            <input type="hidden" name="usertype" value="Invitado">
            <input  id="hora" type="hidden" name="registerdate" value="">
            ID: <input type="text" name="userid"><br>
            Nombre: <input type="text" name="name"><br>
            <input type="submit" value="Regístrate" onclick="getDate()">
        </form>
    </body>
</html>


