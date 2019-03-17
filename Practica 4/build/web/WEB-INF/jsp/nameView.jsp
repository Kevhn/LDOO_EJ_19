<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 4</title>
    </head>
    <body>
        <h1>¡Bienvenido! Por favor rellena el siguiente formulario</h1>
        <spring:nestedPath path="name">
            <form method="post">
                Nombre:
                <input name="name" type="text"/>
                <br/>
                Edad:
                <input name="age" type="text"/>
                <br/>
                Contraseña:
                <input name="pass" type="password"/>
                <br/>
                Matrícula: 
                <input name="id" type = "text"/>
                <input type="submit" value="OK">
            </form>
        </spring:nestedPath>
    </body>
</html>
