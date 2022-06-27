<%-- 
    Document   : agregar
    Created on : 26/06/2022, 08:14:11 PM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar paciente</h1>
        <form action="ControlPaciente" method="post">
            <label>Codigo</label>
            <input type="text" name="codigo"><br>
            <label>Nombre</label>
            <input type="text" name="nombre"><br>
            <label>Apellido</label>
            <input type="text" name="apellido"><br>
            <label>Edad</label>
            <input type="text" name="edad"><br>
            <input type="hidden" name="accion" value="agregarRegistro">
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
