<%-- 
    Document   : menu
    Created on : 6/04/2019, 08:39:13 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession objsession = request.getSession(false);
    String usuario = (String) objsession.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <h1>Hola <% out.println(usuario); %> ¡Acceso correcto!</h1>
        <form action="cerrar" method="post">
            <input type="submit" value="Cerrar sesión">
        </form>
    </body>
</html>
