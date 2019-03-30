<%-- 
    Document   : register
    Created on : 30/03/2019, 01:58:19 PM
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
        <form action = "login.jsp" method = "post">
            <input type = "text" name = "nombre" placeholder = "Nombre"><br><br>
            <input type = "text" name = "matricula" placeholder = "Matrícula"><br><br>
            <input type = "text" name = "edad" placeholder = "Edad"><br><br>
            <input type = "password" name = "clave" placeholder = "Contraseña"><br><br>
            <input type = "submit" value = "Registrarse"><br><br>
            <a href = "login.jsp">Iniciar sesión</a>
        </form>
    </body>
</html>
