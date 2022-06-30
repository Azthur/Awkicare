<%-- 
    Document   : listar
    Created on : 29/06/2022, 11:05:40 PM
    Author     : rdro2
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Pacientes</h1>
        <table border="1">
            <tr>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Dni</th>
                <th>Genero</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
            <c:forEach var="x" items="${lis}">
                <tr>
                    <td>${x.getNombres()}</td>
                    <td>${x.getApellidos()}</td>
                    <td>${x.getDni()}</td>
                    <td>${x.getGenero()}</td>
                    <td></td>
                    <td>
                        <a href="ControlPacientes?accion=eliminar&idpacientes=${x.getIdpacientes()}">Eliminar</a>
                        <a href="ControlPacientes?accion=modificar&idpacientes=${x.getIdpacientes()}">Modificar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
