<%-- 
    Document   : editar
    Created on : 29/06/2022, 11:05:35 PM
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
        <h1>Editar paciente</h1>
        <form action="ControlPacientes" method="post">
            <label>Nombres</label>
            <input type="text" name="nombres" value="${pac.nombres}"><br>
            <label>Apellidos</label>
            <input type="text" name="apellidos" value="${pac.apellidos}"><br>
            <label>DNI</label>
            <input type="number" name="dni" value="${pac.dni}"><br>
                        
            <label>Genero</label>
            <select name="genero">
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
            <label>Nacimiento</label>
            <input type="date" name="nacimiento" value="${pac.nacimiento}"><br>
            
            <label>Direccion</label>
            <input type="text" name="direccion" value="${pac.direccion}"><br>
            <label>Ubigeo</label>
            <input type="number" name="ubigeo" value="${pac.ubigeo}"><br>
            <label>Correo</label>
            <input type="text" name="correo" value="${pac.correo}"><br>
            <label>Telefono</label>
            <input type="text" name="telefono" value="${pac.telefono}"><br>
            <input type="hidden" name="idepacientes" value="${pac.idpacientes}"><br>
            <input type="hidden" name="accion" value="modificarPaciente">
            <input type="submit" value="Modificar">
        </form>
    </body>
</html>

