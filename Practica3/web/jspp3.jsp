<%-- 
    Document   : jspp3
    Created on : 1/03/2019, 08:12:42 PM
    Author     : Kevin Alejandro Lugo Reyes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Práctica 3 LDOO</title>
    </head>
    <body>
        <% 
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String clave = request.getParameter("clave");
            String cumple = request.getParameter("cumple");
            String comentarios = request.getParameter("comentarios");
            String opcion = request.getParameter("opcion");
        %>
        <h2>Nombre: <%=nombre%></h2>
        <h2>Correo electrónico: <%=correo%></h2>
        <h2>Contraseña: <%=clave%></h2>
        <h2>Fecha de nacimiento: <%=cumple%></h2>
        <h2>Comentarios: <%=comentarios%></h2>
        <h2>Opción seleccionada: <%=opcion%></h2>
    </body>
</html>
