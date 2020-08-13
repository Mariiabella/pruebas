<%-- 
    Document   : imprimirPuesta
    Created on : 01-jun-2020, 22:31:47
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <title>incidencia delictiva</title>
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
        <form action="ControladorPuesta?menu=imprimirPuesta" method="POST">
            <h4>Reporte puesta</h4>
           <div class="parte1">
                    <input type="search" name="BuscarDato" placeholder="Comunidad y/o delito"/>
                    <button class="button" type="submit" name="accion" value="Buscar">Buscar</button>
                    <button class="button" type="submit" name="accion" value="Listar">Listar</button>
                    <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
            <label>* Realice su busqueda por: Delito,comunidad del delito, fecha, área de canalización.</label>
                </div>
                <br>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido paterno</th>
                            <th>Apellido materno</th>
                            <th>Estado</th>
                            <th>Municipio</th>
                            <th>Comunidad</th>
                            <th>Calle y número</th>
                            <th>Genero</th>
                            <th>Mp o juez conciliador</th>
                            <th>Fecha de puesta</th>
                            <th>Delito</th>
                            <th>Arma</th>
                            <th>Drogas</th>
                            <th>Otras drogas</th>
                            <th>Comunidad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="pu" items="${dato}">
                            <tr>
                                <td>${pu.getId()}</td>
                                <td>${pu.getNombre()}</td>
                                <td>${pu.getApellidoP()}</td>
                                <td>${pu.getApellidoM()}</td>
                                <td>${pu.getEstado()}</td>
                                <td>${pu.getMunicipio()}</td>
                                <td>${pu.getComunidad()}</td>
                                <td>${pu.getCalleNumero()}</td>
                                <td>${pu.getGenero()}</td>
                                <td>${pu.getMp()}</td>
                                <td>${pu.getFechaP()}</td>
                                <td>${pu.getDelito()}</td>
                                <td>${pu.getTipoArma()}</td>
                                <td>${pu.getDroga()}</td>
                                <td>${pu.getOtras()}</td>
                                <td>${pu.getComunidadD()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br><br>                         
        </form>
        </div>
    </body>
</html>
