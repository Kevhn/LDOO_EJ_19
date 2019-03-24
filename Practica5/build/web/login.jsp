<%-- 
    Document   : index
    Created on : 23/03/2019, 09:01:06 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Práctica 5</title>
    </head>
    <body>
        Inicio de sesión
        <form action="/Practica5/ControladorServlet" method="post">
            Nombre:
            <input type="text" name="nombre"><br>
            Matrícula:
            <input type="text" name="matricula"><br>
            Edad:
            <input type="text" name="edad"><br>
            Contraseña:
            <input type="password" name="clave"><br>
            <input type="submit" value="Iniciar sesión">
        </form>
    </body>
</html>
