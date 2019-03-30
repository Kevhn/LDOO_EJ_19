<%-- 
    Document   : vista
    Created on : 30/03/2019, 01:27:48 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
    </head>
    <body>
        <form action = "UserController" method = "post">
            <%
                Cookie[] cookies = request.getCookies();
                String nombre = "";
                String matricula = "";
                String edad = "";
                String clave = "";
                for (Cookie c : cookies) {
                    if (c.getName().equals("nombre")) {
                        nombre = (String) c.getValue();
                    }
                    if (c.getName().equals("matricula")) {
                        matricula = (String) c.getValue();
                    }
                    if (c.getName().equals("edad")) {
                        edad = (String) c.getValue();
                    }
                    if (c.getName().equals("clave")) {
                        clave = (String) c.getValue();
                    }
                }
            %>
            <input type = "text" name = "nombre" placeholder = "Nombre" value = "<%=nombre%>"><br><br>
            <input type = "text" name = "matricula" placeholder = "Matrícula" value = "<%=matricula%>"><br><br>
            <input type = "text" name = "edad" placeholder = "Edad" value = "<%=edad%>"><br><br>
            <input type = "password" name = "clave" placeholder = "Contraseña" value = "<%=clave%>"><br><br>
            <input type = "submit" value = "Iniciar sesión"><br><br>
            <a href = "register.jsp">Regístrate</a>
        </form>
    </body>
</html>
