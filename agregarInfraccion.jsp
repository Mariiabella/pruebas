<%-- 
    Document   : agregarInfraccion
    Created on : 10-mar-2020, 20:12:56
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <script src="validarI.js" type="text/javascript"></script>
        <title>Agregar Infracción</title>
        <style>
            @media print {
                .parte1{
                    display: none;
                }
            }
            .pag{
                border-radius: 5px;
                padding: 10px;
                text-decoration: none;
                color: #fff;
                background-color: #333;
                margin: 5px;
                margin-left: 20px;
                font-size: 17px;
            }
            .selec{
                width: 200px;
                border-radius: 5px;
                padding: 8px;
                font-size: 17px;
                margin-left: 15px;
            }

        </style>
    </style>
</head>
<body>

    <form class="parte1" id="formulario" action="ControladorInfraccion?menu=agregarInfraccion" onsubmit="return validarI();" method="POST">
        <h1>Datos de la infracción</h1>
        <div>
            <br>
            <h5 class="parte1">Infracción</h5>
            <div class="parte1" style="float: left">
                <label>Folio infracción</label><br>
                <input type="text" id="folio" value="${infrac.getNota()}" name="folio"/></div>

            <div style="float: left">
                <label>Fecha de infracción</label><br>
                <input type="date" id="fechaI" value="${infrac.getFecha()}" name="fechaI"/></div>

            <div class="parte1" style="float: left">
                <label>Lugar infracción</label><br>
                <input type="text" id="lugar" value="${infrac.getLugar()}" name="lugar"/></div>

            <div class="parte1">
                <label>Artículo que ampara</label><br>
                <input type="text" id="articulo" value="${infrac.getLey()}" name="articulo"/></div>

            <br>
            <h5 class="parte1">Datos del infractor</h5>
            <div style="float: left">
                <label>Nombre infractor</label><br>
                <input type="text" id="nombre" value="${infrac.getNombre()}" name="nombre"/></div>

            <div class="parte1" style="float: left">
                <label>Fecha de nacimiento</label><br>
                <input class="fecha" id="fechaNac" type="date" value="${infrac.getFNacimiento()}" name="fechaNac"/></div>

            <div class="parte1" style="float: left">
                <label>Género</label><br>
                <select class="selec" id="Gen" name="Gen" size="1">
                    <option>${per.getGenero()}</option>
                    <option value="Hombre">Hombre</option>
                    <option value="Mujer">Mujer</option>
                </select></div>

            <div class="parte1">
                <label>Edad</label><br>
                <input type="text" id="edad" value="${infrac.getEdad()}" name="edad"/></div>
            <br>
            <h5 class="parte1">Domicilio</h5>
            <div style="float: left">
                <label>Estado</label><br>
                <input type="text" id="estado" value="${infrac.getEstado()}" name="estado"/></div>

            <div style="float: left">
                <label>Municipio</label><br>
                <input type="text" id="municipio" value="${infrac.getMunicipio()}" name="municipio"/></div>

            <div style="float: left">
                <label>Comunidad</label><br>
                <input type="text" id="comunidad" value="${infrac.getComunidad()}" name="comunidad"/></div>

            <div style="float: left">
                <label>Calle y número</label><br>
                <input type="text" id="calle" value="${infrac.getCalleNum()}" name="calle"/></div>

            <div>
                <label>Código postal</label><br>
                <input type="number" id="cp" value="${infrac.getCodigoP()}" name="cp"/></div>
            <br>

            <h5 class="parte1">Datos garantía</h5>
            <div style="float: left">
                <label>Tipo de garantía</label><br>
                <input type="text" id="tGarantia" value="${infrac.getGarantia()}" name="tGarantia"/></div>

            <div style="float: left">
                <label>Folio de la garantía</label><br>
                <input type="text" id="fGarantia" value="${infrac.getFolio()}" name="fGarantia"/></div>

            <div style="float: left">
                <label>Estado</label><br>
                <input type="text" id="entidadF" value="${infrac.getEfederativa()}" name="entidadF"/></div>

                <%--<div style="float: left">
                <label>Elemento que levanta la infracción:</label><br>
                <input type="text" value="${listar.getModelos()}" name="elemento"/></div>
--%>
                <div>
                <label>Cantidad</label><br>
                <input type="int" value="${infrac.getXPagar()}" name="cantidad"/></div>

            <br>
            <div class="parte1">
                <label>Observaciones</label><br>
                <textarea type="text" id="observaciones" value="${infrac.getObserv()}" name="observaciones" rows="3"></textarea>
            </div>

            <br>

            <button class="parte1" onclick="print()" class="button" type="submit" name="accion" value="Agregar">Guardar</button>

            <button class="actualizar" class="button" type="submit" name="accion" value="Actualizar">Actualizar</button>
        </div><br>
    </form>
            <form class="parte1" action="ControladorInfraccion?menu=agregarInfraccion" method="POST">
        <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
        <input class="parte1" type="search" name="BuscarInfra" placeholder="fecha, nombre"/>
        <button class="parte1" class="button" type="submit" name="accion" value="Buscar">Buscar</button>
        <button class="parte1" class="button" type="submit" name="accion" value="Listar">Listar</button>
        <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
    </form>

    <table border="1">
        <thead>
            <tr>
                <th>id</th>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Estado</th>
                <th>Municipio</th>
                <th>Comunidad</th>
                <th>Calle y número</th>
                <th>Cantidad a pagar</th>
                <th class="parte1">Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ai" items="${infra}">
                <tr>
                    <td>${ai.getIdInfraccion()}</td>
                    <td>${ai.getFecha()}</td>
                    <td>${ai.getNombre()}</td>
                    <td>${ai.getEstado()}</td>
                    <td>${ai.getMunicipio()}</td>
                    <td>${ai.getComunidad()}</td>
                    <td>${ai.getCalleNum()}</td>
                    <td>${ai.getXPagar()}</td>
                    <td>
                        <a class="parte1" href="ControladorInfraccion?menu=agregarInfraccion&accion=EditarRegistro&id=${ai.getIdInfraccion()}">Editar</a>
                        <a class="parte1" onclick="cancelar()" href="ControladorInfraccion?menu=agregarInfraccion&accion=EliminarRegistro&id=${ai.getIdInfraccion()}">Eliminar</a>
                    </td>
                </tr>

            </c:forEach>

        </tbody>
    </table>

    <script>
        $("#borrar").on("click", function(event){
        event.preventDefault();
                $('#formulario').trigger("reset");
                )}
    </script>
    <script>
        function cancelar(){
        var respuesta = confirm("Desea eliminar la información seleccionada?")
                return respuesta;
        }
    </script>
    <script>
        function imprimir(){
        var respuesta = confirm("Desea imprimir la información guardada?")
                return respuesta;
        }
    </script>
    <div id="pie">
        <% if (request.getAttribute("Aviso") != null) {%>
        ${Aviso}
        <%}%>               

        <% if (request.getAttribute("Actualizado") != null) {%>
        ${Actualizado}
        <%}%>

        <% if (request.getAttribute("Eliminar") != null) {%>
        ${Eliminar}
        <%}%>
    </div>
</body>
</html>
