<%-- 
    Document   : agregarPuesta
    Created on : 10-mar-2020, 20:13:31
    Author     : Mary
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <script src="validar.js" type="text/javascript"></script>
        <title>Puesta</title>
        <style>
            .pag{
                border-radius: 5px;
                padding: 10px;
                text-decoration: none;
                color: #fff;
                background-color: #333;
                margin: 5px;
                margin-left: 20px;                
            }
            .selec{
                border-radius: 5px;
                padding: 10px;
                font-size: 17px;
                margin-left: 20px;
            }
            @media print {
                .parte1, .btn{
                    display: none;
                }
               </style>
    </head>
    <body>

        <form class="parte1" name="puesta" action="ControladorPuesta?menu=agregarPuesta" onsubmit="return validar();" method="POST">
            <h1>Datos de la puesta</h1>
            <div>
                <br>
                <h5>Puesta</h5>

                <div style="float: left">
                    <label>Nombre(s)</label><br>
                    <input type="text" id="nombres" value="${puesta.getNombre()}" name="nombres" /></div>
                
                <div style="float: left">
                    <label>Apellido paterno</label><br>
                    <input type="text" id="apaterno" value="${puesta.getApellidoP()}" name="apaterno" /></div>

                <div style="float: left">
                    <label>Apellido Materno</label><br>
                    <input type="text" id="amaterno" value="${puesta.getApellidoM()}" name="amaterno" /></div>

                    <div><label>Genero</label><br>
                    <select class="selec" id="genero" name="genero" size="1">
                        <option>${puesta.getGenero()}</option>
                        <option value="Hombre">Hombre</option>
                        <option value="Mujer">Mujer</option>
                    </select></div><br>

                <h5>Domicilio</h5>
                <div style="float: left">
                    <label>Estado</label><br>
                    <input type="text" id="estados" value="${puesta.getEstado()}" name="estados" /></div>

                <div style="float: left">
                    <label>Municipio</label><br>
                    <input type="text" id="municipios" value="${puesta.getMunicipio()}" name="municipios" /></div>

                <div style="float: left">
                    <label>Comunidad:</label><br>
                    <input type="text" id="comunidades" value="${puesta.getComunidad()}" name="comunidades" /></div>

                <div style="float: left">
                    <label>Calle y número</label><br>
                    <input type="text" id="calleNumero" value="${puesta.getCalleNumero()}" name="calleNumero" /></div>

                <div>
                    <label>Código postal</label><br>
                    <input type="number" id="cpostal" value="${puesta.getCodigoP()}" name="cpostal"/></div>
                    <br>

                <h5>Datos del delito</h5>
                <div style="float: left">
                    <label>Fecha de puesta</label><br>
                    <input type="date" id="fechaPuesta" value="${puesta.getFechaP()}" name="fechaPuesta"/></div>

                <div style="float: left">
                    <label>Comunidad del delito</label><br>
                    <input type="text" id="comunidadD" value="${puesta.getComunidadD()}" name="comunidadD" /></div>

                    <div style="float: left">
                    <label>Tipo de arma utilizada</label><br>
                    <input type="text" id="tArma" value="${puesta.getTipoArma()}" name="tArma" /></div>
                
                <div style="float: left">
                    <label>Drogas</label><br>
                    <select class="selec" id="drogas" name="drogas" size="1">
                        <option>${puesta.getDroga()}</option>
                        <option value="Ninguna">Ninguna</option>
                        <option value="Cocaína">Cocaína</option>
                        <option value="Heroína">Heroína</option>
                        <option value="Marihuana">Marihuana</option>
                    </select>
                </div>

                <div>
                    <label>Otras drogas</label><br>
                    <input type="text" id="otros" value="${puesta.getOtras()}" name="otros"/></div>
                    <br>
                    
                <div style="float: left">
                    <label>Núm unidad que intervino</label><br>
                    <input type="text" id="unidad" value="${puesta.getNumUnidad()}" name="unidad" /></div>


                <div style="float: left">
                    <label>Elemento que intervino</label><br>
                    <input type="text" value="${listarr.getNombre()}" name="elemento"/></div>
                
                    <div style="float: left">
                    <label>Tipo de delito</label><br>
                    <input type="text" id="tDelito" value="${puesta.getDelito()}" name="tDelito" /></div>

                    <div style="float: left">
                    <label>Area de canalización</label><br>
                    <select class="selec" id="areaC" name="areaC" size>
                        <option>${puesta.getMp()}</option>
                        <option value="Mp">Mp</option>
                        <option value="Juez conciliador">Juez conciliador</option>
                        <option value="S. pública">S. pública</option>
                    </select>
                </div>
                        
                 <%-- <div style="float: left">
                    <label>Persona que se responsabiliza</label><br>
                    <input type="text" id="PersonaEnc" value="" name="PersonaEnc" /></div>--%>  
                    
                    <br><br><br><br><br>
                <button type="submit" name="accion" value="AgregarPuesta">Agregar puesta</button>
                <button  class="actualizar" type="submit" name="accion" value="Actualizar">Actualizar</button>                
            </div>
        </form>
                <form class="parte1" name="puesta" action="ControladorPuesta?menu=agregarPuesta" method="POST">
                    <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
                  <input class="inBuscar" type="search" name="BuscarPuesta" placeholder="Nombre, fecha de puesta"/>                  
                <button type="submit" name="accion" value="Buscar">Buscar</button>
                <button type="submit" name="accion" value="Listar">Listar</button>  
                <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
                </form>
                <br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Número de puesta</th>
                    <th>Nombre</th>
                    <th>Apellido paterno</th>
                    <th>Apellido materno</th>
                    <th>Fecha</th>
                    <td class="parte1">Acciones</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="aPu" items="${listare}">
                    <tr>
                        <td>${aPu.getIdDBasicos()}</td>
                        <td>${aPu.getNombre()}</td>
                        <td>${aPu.getApellidoP()}</td>
                        <td>${aPu.getApellidoM()}</td>
                        <td>${aPu.getFechaP()}</td>
                        <td>
                            <a class="parte1" href="ControladorPuesta?menu=agregarPuesta&accion=Editar&id=${aPu.getIdDBasicos()}">Editar</a>
                            <a class="parte1" onclick="return cancelar()" href="ControladorPuesta?menu=agregarPuesta&accion=Eliminar&id=${aPu.getIdDBasicos()}">Eliminar</a>
                            </td>
                    </tr>
                </c:forEach>
            </tbody>
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
        </table>
        </body>
</html>
