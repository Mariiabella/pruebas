<%-- 
    Document   : imprimirInfraccion
    Created on : 30-may-2020, 20:42:05
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <title>Impresion de infracción</title>
    <style>
        @media print {
        .parte1, .btn{
        display: none;
        }
        }
    </style>
</head>
<body>
    <div>
       <form action="ControladorInfraccion?menu=imprimirInfraccion" method="POST">
            <h1 style="text-align: center">Reporte de infracción</h1>
            <div class="parte1">
                <input type="search" name="BuscarDato" placeholder="nombre o estatus"/>
                <button class="button" type="submit" name="accion" value="Buscar">Buscar</button>
                <button class="button" type="submit" name="accion" value="Listar">Listar</button>
            </div>
            <br>
            <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                    <th>Estatus</th>
                    <th>Cantidad</th>
                    <th>Motivo</th>
                    <th>Nombre de quien condona</th>
                    <th>Apellido paterno</th>
                    <th>Apellido materno</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="lista" items="${datos}">
                    <tr>
                        <td>${lista.getIdInfraccion()}</td>
                        <td>${lista.getEstatus()}</td>
                        <td>${lista.getXPagar()}</td>
                        <td>${lista.getMotivo()}</td>
                        <td>${lista.getNombreQ()}</td>
                        <td>${lista.getApePaterno()}</td>
                        <td>${lista.getApeMaterno()}</td>                       
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <br><br>
            <div class="btn">
                <button onclick="print()" class="button" type="submit" name="accion" value="Imprimir">Imprimir</button>
            </div>
        </form>
    </div>
</body></html>
