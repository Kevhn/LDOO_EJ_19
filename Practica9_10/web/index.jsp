<%-- 
    Document   : index
    Created on : 6/04/2019, 08:18:07 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
        <script src="js/main.js"></script>
    </head>
    <body>
        <h1>Iniciar sesión</h1>
        <form action="iniciar" method="post" id="forminicio">
            <label>Usuario</label>
            <input type="text" name="user" id="txtusuario"><br>
            <label>Contraseña</label>
            <input type="password" name="password" id="txtpass" value=">"><br>
            <input type="submit" value="Iniciar sesión" id="btniniciar">
        </form>
        <br>
        ¿No tienes una cuenta? <a href="registro.jsp">Registrarme</a>
    </body>
</html>
