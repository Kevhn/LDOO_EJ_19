<%-- 
    Document   : vista
    Created on : 23/03/2019, 10:18:27 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Práctica 6</title>
    </head>
    <body>
        <%
            String nombre = "";
            Cookie[] cookie1 = request.getCookies();
            for (Cookie cookie : cookie1) {
                if (cookie.getName().equals("nombre")) {
                    nombre = cookie.getValue();
                }
            }
            String matricula = "";
            Cookie[] cookie2 = request.getCookies();
            for (Cookie cookie : cookie2) {
                if (cookie.getName().equals("matricula")) {
                    matricula = cookie.getValue();
                }
            }
            String edad = "";
            Cookie[] cookie3 = request.getCookies();
            for (Cookie cookie : cookie3) {
                if (cookie.getName().equals("edad")) {
                    edad = cookie.getValue();
                }
            }
            String clave = "";
            Cookie[] cookie4 = request.getCookies();
            for (Cookie cookie : cookie4) {
                if (cookie.getName().equals("clave")) {
                    clave = cookie.getValue();
                }
            }
        %>
        Hola, <%=nombre%>!<br>
        Tu matrícula es: <%=matricula%><br>
        Tu edad es: <%=edad%><br>
        Tu clave es: <%=clave%>

    </body>
</html>
