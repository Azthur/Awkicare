<%-- 
    Document   : editar
    Created on : 26/06/2022, 08:20:38 PM
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
        <h1>Editar paciente</h1>
        <form action="ControlEnfermeros" method="post">
            <label>Nombres</label>
            <input type="text" name="nombres" value="${enf.nombres}"><br>
            <label>Apellidos</label>
            <input type="text" name="apellidos" value="${enf.apellidos}"><br>
            <label>DNI</label>
            <input type="number" name="dni" value="${enf.dni}"><br>
            <label>Codigo CEP</label>
            <input type="number" name="codigo_cep" value="${enf.codigo_cep}"><br>
            
            <label>Genero</label>
            <select name="genero">
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
            <label>Nacimiento</label>
            <input type="date" name="nacimiento" value="${enf.nacimiento}"><br>
            
            <label>Direccion</label>
            <input type="text" name="direccion" value="${enf.direccion}"><br>
            <label>Ubigeo</label>
            <input type="number" name="ubigeo" value="${enf.ubigeo}"><br>
            <label>Correo</label>
            <input type="text" name="correo" value="${enf.correo}"><br>
            <label>Telefono</label>
            <input type="text" name="telefono" value="${enf.telefono}"><br>
            <input type="hidden" name="idenfermeros" value="${enf.idenfermeros}"><br>
            <input type="hidden" name="accion" value="modificarEnfermero">
            <input type="submit" value="Modificar">
        </form>
    </body>
</html>
