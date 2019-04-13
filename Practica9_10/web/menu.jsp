<%-- 
    Document   : menu
    Created on : 6/04/2019, 08:39:13 PM
    Author     : Kevin
--%>

<%@page import="FactoriaDeUsuarios.FactoriaUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <%
        FactoriaUsuarios factoria = FactoriaUsuarios.getFactoria();
        String user = (String)session.getAttribute("user");
        %>
        <h1>Hola <%=factoria.obtenerUsuario(user).getNombreDeUsuario()%> ¡Acceso correcto!</h1>
        <form action="cerrar" method="post">
            <input type="submit" value="Cerrar sesión">
        </form>
    </body>
</html>
