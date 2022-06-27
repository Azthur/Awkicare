<%-- 
    Document   : listar
    Created on : 26/06/2022, 08:21:13 PM
    Author     : Alfredo
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
        <h1>Lista de Enfermeros</h1>
        <table border="1">
            <tr>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Dni</th>
                <th>Genero</th>
                <th>CPE</th>
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
                    <td></td>
                    <td>
                        <a href="ControlEnfermeros?accion=eliminar&idenfermeros=${x.getIdenfermeros()}">Eliminar</a>
                        <a href="ControlEnfermeros?accion=modificar&idenfermeros=${x.getIdenfermeros()}">Modificar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>