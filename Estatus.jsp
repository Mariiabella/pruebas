<%-- 
    Document   : Estatus
    Created on : 24-jul-2020, 22:35:54
    Author     : Mary
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <script src="validarE.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <title>Estatus de infracción</title>
        <style>
            .selec{
                width: 200px;
                border-radius: 5px;
                padding: 8px;
                font-size: 17px;
                margin-left: 15px;
            }
            @media print {
                .parte1, .btn{
                    display: none;
                }
            </style>
        </head>
        <body>
            
            <form class="parte1" action="ControladorInfraccion?menu=Estatus" method="POST">
                <h1>Estatus de la infracción</h1><br>
                <input class="parte1" type="search" name="BuscarInfra" placeholder="id de la infracción"/>
                <button class="parte1" class="button" type="submit" name="accion" value="Buscar">Buscar</button>
            </form>
            

            <form class="parte1" action="ControladorInfraccion?menu=Estatus" onsubmit="return validarI();" method="POST">
               
                <div>
                    <div style="float: left">
                        <label>Folio de infracción</label><br>
                        <input class="selec" id="estatus" name="estatus" value="${infrac.getIdInfraccion()}"/>
                    </div>                    
                    
                    <div style="float: left">
                        <label>Estatus de pago</label><br>
                        <select class="selec" id="estatus" onchange="ocultar(this.value);"  name="estatus">
                            <option></option>
                            <option value="Pagada">Pagada</option>                    
                            <option value="No pagada">No pagada</option>
                        </select></div>

                    <div id="oculto" style="float: left">
                        <label>Motivo de no pago</label><br>
                        <select class="selec" id="estatus" onchange="ocultar(this.value);" name="motivo">
                            <option></option>
                            <option value="Condonada al 100">Condonada en un 100%</option>                        
                            <option value="Condonada a la mitad">Condonada en un %</option>                        
                            <option value="No reclamada">No reclamada</option>  
                            <option value="No la quiso pagar">No la quiso pagar</option>                        
                        </select></div>

                    <div id="oculto1" style="float: left" value="${infrac.getFechaPago()}">
                        <label>Fecha de pago</label><br>
                        <input class="fecha" id="fechaE" type="date" name="fechaE"/></div>

                    <div id="oculto2" style="float: left">
                        <label>Cantidad pagada</label><br>
                        <input type="text" id="cantidad" name="cantidad" value="${infrac.getXPagar()}"/></div>

                    <div id="oculto3">
                        <label>Cantidad no pagada</label><br>
                        <input type="text" id="cantidadNo" name="cantidadNo" value="${infrac.getCantidadNo()}"/></div>
                        <br>

                        <div id="oculto4" style="float:left">
                        <label>Número de recibo</label><br>
                        <input type="text" id="recibo" name="recibo" value="${infrac.getNumRecibo()}"/></div>
                    
                    <div id="oculto5" style="float: left">
                        <label>Nombre del condonante</label><br>
                        <input type="text" id="nombreC" name="nombreC" value="${infrac.getNombreQ()}"/></div>

                    <div id="oculto6" style="float: left">
                        <label>Apellido paterno</label><br>
                        <input type="text" id="Apaterno" name="Apaterno" value="${infrac.getApePaterno()}"/></div>

                    <div id="oculto7" style="float: left">
                        <label>Apellido materno</label><br>
                        <input type="text" id="Amaterno" name="Amaterno" value="${infrac.getApeMaterno()}"/></div>

                    <div id="oculto8" style="float: left">
                        <label>Área</label><br>
                        <input type="text" id="area" name="area" value="${infrac.getArea()}"/></div>

                    <div id="oculto9">
                        <label>Cargo</label><br>
                        <input type="text" id="cargo" name="cargo" value="${infrac.getCargo()}"/></div>

                    <br>
                    <button class="actualizar" class="button" type="submit" name="accion" value="Actualizar">Actualizar</button>
                </div><br>
            </form>
                        <form class="parte1" action="ControladorInfraccion?menu=Estatus" method="POST">
                <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
                <button class="parte1" class="button" type="submit" name="accion" value="Listar">Listar</button>
                <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
            </form>
                    
             <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Fecha de infracción</th>
                        <th>Nombre del infractor</th>
                        <th>Cantidad a pagar</th>
                        <th>Cantidad no pagada</th>
                        <th>Estatus de pago</th>
                        <th>motivo</th>
                        <th>fecha pago</th>
                        <th>Número recibo</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Materno</th>
                        <th>Area</th>
                        <th>Cargo</th>
                        <th class="parte1">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="ai" items="${infra}">
                        <tr>
                            <td>${ai.getIdInfraccion()}</td>
                            <td>${ai.getFecha()}</td>
                            <td>${ai.getNombre()}</td>
                            <td>${ai.getXPagar()}</td>
                            <td>${ai.getCantidadNo()}</td>
                            <td>${ai.getEstatus()}</td>
                            <td>${ai.getMotivo()}</td>
                            <td>${ai.getFechaPago()}</td>
                            <td>${ai.getNumRecibo()}</td>
                            <td>${ai.getNombreQ()}</td>
                            <td>${ai.getApePaterno()}</td>
                            <td>${ai.getApeMaterno()}</td>
                            <td>${ai.getArea()}</td>
                            <td>${ai.getCargo()}</td>
                            <td>
                                <a class="parte1" href="ControladorInfraccion?menu=Estatus&accion=EditarRegistro&id=${ai.getIdInfraccion()}">Editar</a>
                            </td>
                        </tr>

                   
                    </c:forEach>
                </tbody>
            </table>
            <script type="text/javascript">
                function ocultar(id) {
                    if (id === "Pagada") {
                        $("#oculto").hide();
                        $("#oculto1").show();
                        $("#oculto2").show();
                        $("#oculto3").hide();
                        $("#oculto4").show();
                        $("#oculto5").hide();
                        $("#oculto6").hide();
                        $("#oculto7").hide();
                        $("#oculto8").hide();
                        $("#oculto9").hide();
                    }
                    if (id === "No pagada") {
                        $("#oculto").show();
                        $("#oculto1").show();
                        $("#oculto2").show();
                        $("#oculto3").show();
                        $("#oculto4").show();
                        $("#oculto5").show();
                        $("#oculto6").show();
                        $("#oculto7").show();
                        $("#oculto8").show();
                        $("#oculto9").show();
                    }
                    if (id === "Condonada al 100") {
                        $("#oculto1").hide();
                        $("#oculto2").hide();
                        $("#oculto3").show();
                        $("#oculto4").hide();
                        $("#oculto5").show();
                        $("#oculto6").show();
                        $("#oculto7").show();
                        $("#oculto8").show();
                        $("#oculto9").show();
                    }
                    if (id === "Condonada a la mitad") {
                        $("#oculto1").show();
                        $("#oculto2").show();
                        $("#oculto3").show();
                        $("#oculto4").show();
                        $("#oculto5").show();
                        $("#oculto6").show();
                        $("#oculto7").show();
                        $("#oculto8").show();
                        $("#oculto9").show();
                    }
                    if (id === "No reclamada") {
                        $("#oculto1").hide();
                        $("#oculto2").hide();
                        $("#oculto3").show();
                        $("#oculto4").hide();
                        $("#oculto5").hide();
                        $("#oculto6").hide();
                        $("#oculto7").hide();
                        $("#oculto8").hide();
                        $("#oculto9").hide();
                    }
                    if (id === "No la quiso pagar") {
                        $("#oculto1").hide();
                        $("#oculto2").hide();
                        $("#oculto3").show();
                        $("#oculto4").hide();
                        $("#oculto5").hide();
                        $("#oculto6").hide();
                        $("#oculto7").hide();
                        $("#oculto8").hide();
                        $("#oculto9").hide();
                    }
                }
            </script>
            
            <script>
                $("#borrar").on("click", function(event){
                event.preventDefault();
                        $('#formulario').trigger("reset");
                        )}
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
