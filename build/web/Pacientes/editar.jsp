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
            <input type="text" name="nombres" value="${paci.getNombres()}"><br>
            <label>Apellidos</label>
            <input type="text" name="apellidos" value="${paci.getApellidos()}"><br>
            <label>DNI</label>
            <input type="number" name="dni" value="${paci.dni}"><br>
                        
            <label>Genero</label>
            <select name="genero">
                <option value="Masculino">Masculino</option>
                <option value="Femenino">Femenino</option>
            </select>
            <label>Nacimiento</label>
            <input type="date" name="nacimiento" value="${paci.getNacimiento()}"><br>
            
            <label>Direccion</label>
            <input type="text" name="direccion" value="${paci.getDireccion()}"><br>
            <label>Ubigeo</label>
            <input type="number" name="ubigeo" value="${paci.getUbigeo()}"><br>
            <label>Correo</label>
            <input type="text" name="correo" value="${paci.getCorreo()}"><br>
            <label>Telefono</label>
            <input type="text" name="telefono" value="${paci.getTelefono()}"><br>
            <input type="hidden" name="idpacientes" value="${paci.getIdpacientes()}"><br>
            <input type="hidden" name="accion" value="modificarPaciente">
            <input type="submit" value="Modificar">
        </form>
    </body>
</html>

