<%-- 
    Document   : agregar
    Created on : 29/06/2022, 11:05:27 PM
    Author     : rdro2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Pacientes</h1>
        <form action="ControlPacientes" method="post">
            <label>Nombres</label>
            <input type="text" name="nombres"><br>
            <label>Apellidos</label>
            <input type="text" name="apellidos"><br>
            <label>DNI</label>
            <input type="number" name="dni"><br>
                       
            <label>Genero</label>
            <select name="genero">
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
            <label>Nacimiento</label>
            <input type="date" name="nacimiento"><br>
            
            <label>Direccion</label>
            <input type="text" name="direccion"><br>
            <label>Ubigeo</label>
            <input type="number" name="ubigeo"><br>
            <label>Correo</label>
            <input type="text" name="correo"><br>
            <label>Telefono</label>
            <input type="text" name="telefono"><br>
            
            
            <input type="hidden" name="accion" value="agregarRegistro">
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
