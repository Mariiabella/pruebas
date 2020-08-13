<%-- 
    Document   : altaPatrulla
    Created on : 09-mar-2020, 13:58:40
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
<script src="validarPt.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta patrulla</title>
        <style>
            @media print {
                .parte1, .btn{
                    display: none;
                }
            }
                .selec{
            width: 200px;
            border-radius: 5px;
            padding: 8px;
            font-size: 17px;
            margin-left: 15px;
        }
            </style>
        </head>
        <body>

            <form class="parte1" style="float: left" action="Controlador?menu=aPatrulla" onsubmit="return validarPt();" method="POST">
                <div>
                    <h1 style="text-align: center">Datos de la patrulla</h1>
                    <br>
                    <div style="float: left">
                        <label>Modelo</label><br>
                        <input type="text" id="txtModelo" value="${Vehiculo.getModelos()}" name="txtModelo"/></div>

                    <div style="float: left">
                        <label>Marca</label><br>
                        <input type="text" id="txtMarca" value="${Vehiculo.getMarcas()}" name="txtMarca"/></div>

                        <div style="float: left">
                        <label>Número de serie</label><br>
                        <input type="text" id="txtSerie" value="${Vehiculo.getNumeroSer()}" name="txtSerie"/></div>

                    <div>
                        <label>Placa</label><br>
                        <input type="text" id="txtPlaca" value="${Vehiculo.getPlacas()}" name="txtPlaca"/></div>
                        <br> 
                        
                    <div style="float: left">
                        <label>Número de motor</label><br>
                        <input type="text" id="txtMotor" value="${Vehiculo.getNumeroMot()}" name="txtMotor"/></div>
                    
                        <div style="float: left">
                        <label>Color</label><br>
                        <input type="text" id="txtColor" value="${Vehiculo.getColors()}" name="txtColor"/></div>
                        
                    <div style="float: left">
                        <label>Tipo de vehículo</label><br>
                        <input type="text" id="txtVehic" value="${Vehiculo.getTipoVehic()}" name="txtVehic"/></div>

                        <div>
                        <label>Número de unidad</label><br>
                        <input type="text" id="txtUnidad" value="${Vehiculo.getNumeroUni()}" name="txtUnidad"/></div>
                    <br>

                   <%-- <label>Datos del policía a cargo de la patrulla</label>
                    <br>

                    <div style="float: left"><label>Nombre(s)</label><br>
                        <select class="selec" id="Nom" name="Nombre" size="1">
                            <c:forEach var="ap" items="${alta}">
                                <option>${ap.getNom()}</option></c:forEach>
                            <option></option>
                        </select>
                    </div>

                    <div style="float: left"><label>Apellido paterno</label><br>
                        <input type="text" id="aPaterno" value="${Alta.getApePat()}" name="aPaterno"/></div>

                    <div><label>Apellido materno</label><br>
                        <input type="text" id="aMaterno" value="${Alta.getApemat()}" name="aMaterno"/></div>
--%>
                    <br><br>
                    <div>
                        <button type="submit" name="accion" value="Aregistro">Guardar</button>                  
                        <button class="actualizar" type="submit" name="accion" value="Actualizar">Actualizar</button> 
                    </div>
                </div></form>
                        <form class="btn" action="Controlador?menu=aPatrulla" method="POST">
                <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
                <input type="search" name="BuscarPatrulla" placeholder="placa y/o num unidad"/>
                <button class="button" type="submit" name="accion" value="Buscar">Buscar</button>
                <button type="submit" name="accion" value="Listar">Listar</button>
                <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
            </form><br>
            <br>
            <div>

                <table border="1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>modelo</th>
                            <th>marca</th>
                            <th>Número de serie</th>
                            <th>placa</th>
                            <th>Número de motor</th>
                            <th>Color</th>
                            <th>Tipo de unidad</th>
                            <th>Número de unidad</th>
                            <th class="parte1">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="aplla" items="${Vehiculos}">
                            <tr>
                                <td>${aplla.getId()}</td>
                                <td>${aplla.getModelos()}</td>
                                <td>${aplla.getMarcas()}</td>
                                <td>${aplla.getNumeroSer()}</td>
                                <td>${aplla.getPlacas()}</td>
                                <td>${aplla.getNumeroMot()}</td>
                                <td>${aplla.getColors()}</td>
                                <td>${aplla.getTipoVehic()}</td>
                                <td>${aplla.getNumeroUni()}</td>
                                <td>
                                    <a class="parte1" href="Controlador?menu=aPatrulla&accion=Editar&id=${aplla.getId()}">Editar</a>
                                    <a class="parte1" onclick="return cancelar()" href="Controlador?menu=aPatrulla&accion=Delete&id=${aplla.getId()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br><b>
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
