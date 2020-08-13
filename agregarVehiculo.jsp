<%-- 
    Document   : agregarVehiculo
    Created on : 10-mar-2020, 20:14:11
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <script src="validarV.js" type="text/javascript"></script>
        <title>Vehículos detenidos</title>
        <style type="text/css">
            .pag{
                border-radius: 5px;
                padding: 10px;
                text-decoration: none;
                color: #fff;
                background-color: #333;
                margin: 5px;
                margin-left: 130px;

            }
            @media print {
                .parte1, .btn{
                    display: none;
                }
            }
        </style>
</head>
<body>

    <form class="parte1" action="ControladorVehiculo?menu=agregarVehiculo" onsubmit="return validarV();" method="POST">
        <h1 style="text-align: center">Datos del resguardo</h1>
        <div>
            <br>
            <h5>Datos del vehículo</h5>

            <div style="float: left">
                <label>Tipo de vehículo</label><br>
                <input type="text" id="tvehiculo" value="${vehiculo.getTvehiculo()}" name="tvehiculo"/></div>

            <div style="float: left">
                <label>Modelo</label><br>
                <input type="text" id="modelo" value="${vehiculo.getModelo()}" name="modelo"/></div>

            <div style="float: left">
                <label>Marca</label><br>
                <input type="text" id="marca" value="${vehiculo.getMarca()}" name="marca"/></div>

            <div style="float: left">
                <label>Número de serie</label><br>
                <input type="text" id="serie" value="${vehiculo.getSerie()}" name="serie"/></div>

            <div>
                <label>Placa</label><br>
                <input type="text" id="placa" value="${vehiculo.getPlaca()}" name="placa"/></div>
            <br>
            <div style="float: left">
                <label>Número de motor</label><br>
                <input type="text" id="motor" value="${vehiculo.getMotor()}" name="motor"/></div>

            <div style="float: left">
                <label>Color</label><br>
                <input type="text" id="color" value="${vehiculo.getColor()}" name="color"/></div>

            <div>
                <label>Número de patrulla</label><br>
                <input type="text" id="patrulla" value="${vehiculo.getPatrulla()}" name="patrulla"/></div>

            <h5>Resguardo</h5>
            <div style="float: left">
                <label>Local de encierro</label><br>
                <input type="text" id="local" value="${vehiculo.getLocal()}" name="local"/></div>

            <div style="float: left">
                <label>Número de resguardo</label><br>
                <input type="text" id="numeroRes" id="numeroRes" value="${vehiculo.getNumeroRes()}" name="numeroRes"/></div>

            <div style="float: left">
                <label>Nombre del dueño</label><br>
                <input type="text" id="nomDueno" value="${vehiculo.getNomDueno()}" name="nomDueno"/></div>

            <div style="float: left">
                <label>Apellido paterno</label><br>
                <input type="text" id="paternoDueno" value="${vehiculo.getPaternoDueno()}" name="paternoDueno"/></div>

            <div>
                <label>Apellido Materno</label><br>
                <input type="text" id="maternoDueno" value="${vehiculo.getMaternoDueno()}" name="maternoDueno"/></div>
            <br>
            <div>
                <label>Observaciones</label><br>
                <textarea type="text" id="observaciones" value="${vehiculo.getObservaciones()}" name="observaciones" rows="3"></textarea></div>
                <br><br>
            <button class="button" type="submit" name="accion" value="Agregar">Agregar</button>
            <button class="actualizar" type="submit" name="accion" value="Actualizar">Actualizar</button>                
        </div>
    </form>
    <form class="parte1" action="ControladorVehiculo?menu=agregarVehiculo" method="POST">
                    <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
        <input type="search" name="BuscarVehiculo" placeholder="Numero de serie , local e"/>
        <button class="button" type="submit" name="accion" value="Buscar">Buscar</button>
        <button class="button" type="submit" name="accion" value="Listar">Listar</button>
        <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
        <label>*Buscar por número de serie, local de encierro</label>
    </form>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Número de serie</th>
                <th>Tipo de vehiculo</th>
                <th>Número de patrulla</th>
                <th>Local de encierro</th>
                <th>Nombre</th>
                <th>Apellido paterno</th>
                <th>Apellido materno</th>
                <th class="parte1" >Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="avei" items="${asegurado}">
                <tr>
                    <td>${avei.getIdDVehiuclo()}</td>
                    <td>${avei.getSerie()}</td>
                    <td>${avei.getTvehiculo()}</td>
                    <td>${avei.getPatrulla()}</td>
                    <td>${avei.getLocal()}</td>
                    <td>${avei.getNomDueno()}</td>
                    <td>${avei.getPaternoDueno()}</td>
                    <td>${avei.getMaternoDueno()}</td>                    
                    <td>
                        <a class="parte1" href="ControladorVehiculo?menu=agregarVehiculo&accion=Editar&id=${avei.getIdDVehiuclo()}">Editar</a>
                        <a class="parte1" onclick="return cancelar()" href="ControladorVehiculo?menu=agregarVehiculo&accion=Eliminar&id=${avei.getIdDVehiuclo()}">Eliminar</a>
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
          var respuesta=confirm("Desea eliminar la información seleccionada?")  
          return respuesta;
        }
    </script>
    <div id="pie">
        <% if(request.getAttribute("Aviso")!=null){%>
        ${Aviso}
        <%}%>               
    
        <% if(request.getAttribute("Actualizado")!=null){%>
        ${Actualizado}
        <%}%>
        
        <% if(request.getAttribute("Eliminar")!=null){%>
        ${Eliminar}
        <%}%>
    </div>
</body>
</html>
