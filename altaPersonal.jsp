<%-- 
    Document   : altaPersonal
    Created on : 09-mar-2020, 12:26:57
    Author     : Mary
--%>
<%@page import="Modelo.catalogos"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
    <script src="validarP.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
    <title>Alta de personal</title>
    <style type="text/css">
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
            }
    </style>
</head>
<body>
    <div>
        <form id="formulario" class="parte1" action="Controlador?menu=altaPersonal" onsubmit="return validarP();" method="POST">
            <h1 style="text-align: center">Insertar personal</h1>
            <div>
                <div style="float: left"><label>Nombre(s)</label><br>
                    <input type="text" id="Nom" value="${per.getNom()}" name="Nombre"/></div>

                <div style="float: left"><label>Apellido paterno</label><br>
                    <input type="text" id="aPaterno" value="${per.getApePat()}" name="aPaterno"/></div>

                <div style="float: left"><label>Apellido materno</label><br>
                    <input type="text" id="aMaterno" value="${per.getApemat()}" name="aMaterno"/></div>

                <div style="float: left"><label>CURP</label><br>
                    <input type="text" id="Curp" value="${per.getCurp()}" name="Curp"/></div>

                <div style="float: left"><label>Fecha de nacimiento</label><br>
                    <input type="date" id="FechaN" value="${per.getFechaNac()}" name="FechaN"/></div>

                <div><label>Género</label><br>
                    <select class="selec" id="Gen" name="Gen" size="1">
                        <option>${per.getGen()}</option>
                        <option value="Hombre">Hombre</option>
                        <option value="Mujer">Mujer</option>
                    </select></div><br>

                <div  style="float: left"><label>Teléfono celular</label><br>
                    <input type="text" id="celular" value="${per.getTCel()}" name="celular"/></div>

                <div style="float: left"><label>Teléfono casa</label><br>
                    <input type="text" id="casa" value="${per.getTCasa()}" name="casa"/></div>       

                <div style="float: left"><label>Estado</label><br>                   
                    <select class="selec" id="Edo" value="" name="Edo" size="1">
                        <% List<catalogos> combo=(List<catalogos>)request.getAttribute("estados");
                        if(combo!=null)
                        for(catalogos edo:combo){%>    
                        <option value="<%=edo.getIdEdo()%>"><%=edo.getEstado()%></option>
                        <%}%>
                    </select></div>
                    

                <div style="float: left"><label>Municipio</label><br>
                    <select class="selec" id="Mpio" value="" name="Mpio"> 
                        <option value=""></option>
                    </select></div>

                <div style="float: left"><label>Comunidad</label><br>
                    <input type="text" id="Com" value="${per.getComuni()}" name="Com"/></div>

                <div><label>Calle y número</label><br>
                    <input type="text" id="CalleNum" value="${per.getCallNum()}" name="CalleNum"/></div>
                <br>

                <div style="float: left"><label>Código postal</label><br>
                    <input type="number" id="CPostal" value="${per.getCp()}" name="CPostal"/></div>

                <div style="float: left"><label>Nivel de estudios</label><br>
                    <input type="text" id="Estudios" value="${per.getNEstudios()}" name="Estudios"/></div>

                <div style="float: left"><label>Título obtenido</label><br>
                    <input type="text" id="titulo" value="${per.getTObtenido()}" name="titulo"/></div>                

                <div style="float: left"><label>Cuip</label><br>
                    <input type="text" id="cuip" value="${per.getCuip()}" name="cuip"/></div>

                <div style="float: left"><label>Cup</label><br>
                    <input type="text" id="cup" value="${per.getCup()}" name="cup"/></div>

                <div><label>Folio Portación de arma</label><br>
                    <input type="text" id="fpArma" value="${per.getFPArma()}" name="fpArma"/></div>
                <br>

                <div style="float: left"><label>Folio de arma</label><br>
                    <input type="text" id="fArma" value="${per.getFArma()}" name="fArma"/></div>

                <div style="float: left"><label>Estatus</label><br>
                    <select class="selec" id="estatus"  onchange="muestra(this.value);" name="estatus" size="1">
                        <option>${per.getEstatus()}</option>
                        <option value="Activo">Activo</option>
                        <option value="Inactivo">Inactivo</option>
                    </select>
                </div>

                <div id="Activo" style="float: left; display: none"><label>Grado</label><br>
                    <select class="selec" id="Grado" name="Grado" size="1">
                        <option>${per.getGrado()}</option>
                        <option value="Comandante">Comandante</option>
                        <option value="Policía">Policía</option>
                    </select>
                </div>

                <div id="Activo1" style="float: left; display: none"><label>Grupo</label><br>
                    <select class="selec" id="Grupo" name="Grupo" size="1">
                        <option>${per.getGrupo()}</option>
                        <option value="Alfa">Alfa</option>
                        <option value="Delta">Delta</option>
                    </select></div>

                <div id="Activo2" style="float: left; display: none"><label>Fecha de entrada</label><br>
                    <input type="date" id="entrada" value="${per.getFEntrada()}" name="entrada"/></div>

                    <div id="Activo3" style="display: none"><label>Fecha de salida</label><br>
                    <input type="date" id="salida" value="${per.getFSalida()}" name="salida"/></div>
                    

                <div id="Activo4" style="float: left; display: none"><label>Fecha de suspensión</label><br>
                    <input type="date" id="suspension" value="${per.getFSusp()}" name="suspension"/></div>       

                <div id="Activo5" style="display: none"><label>Elemento evaluado</label><br>
                    <select class="selec" id="Evaluado" id="Evaluado"  onchange="muestra(this.value);" name="Evaluado" size="1">
                        <option>${per.getEEval()}</option>
                        <option value="Sí">Sí</option>
                        <option value="No">No</option>
                    </select></div><br>

                <div id="Activo6" style="float: left; display: none"><label>Estatus de evaluación</label><br>
                    <select class="selec" id="Evaluacion" name="Evaluacion" size="1">
                        <option>${per.getEstEval()}</option>
                        <option value="Aprobado">Aprobado</option>
                        <option value="Reprobado">Reprobado</option>
                    </select></div>              

                        <div id="Activo7" style="display: none"><label>Fecha de evaluación</label><br>
                    <input type="date" id="evalF" value="${per.getFEval()}" name="evalF"/></div>
                    <br><br><br>                  

                <div><label>Observaciones</label><br>
                    <textarea id="observacion" value="${per.getObserv()}" name="observacion" rows="3"></textarea></div>               

                <br>
                <button type="submit" name="accion" value="GuardarRegistro">Guardar</button>              
                <button class="actualizar" type="submit" name="accion" value="ActualizarRegistro">Actualizar</button>
            </div>
        </form>
        <form class="btn" action="Controlador?menu=altaPersonal" method="POST" >  
            <button id="borrar" class="cancelar" type="submit" name="accion" value="cancelar">Cancelar</button>
            <input type="search" name="BuscarDato" placeholder="Ingrese busqueda"/>            
            <button class="button" type="submit" name="accion" value="Buscar">Buscar</button>
            <button class="button" type="submit" name="accion" value="Listar">Listar</button>
            <button onclick="print()" class="imprimir" type="submit" name="accion" value="Imprimir">Imprimir</button><br><br>
            <label>* Realice su busqueda por: Nombre o Curp, Fecha de evaluación, estatus (activo/inactivo), fecha de suspensión y estatus de evaluación.</label>
        </form><br>
        <div><br>
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
                        <th>CURP</th>
                        <th>Género</th>
                        <th>Estatus</th>
                        <th>Grado</th>
                        <th>Grupo</th>
                        <th>Estatus de evaluación</th>
                        <th>Fecha de salida</th>
                        <th>Fecha de suspensión</th>
                        <th>Fecha de evaluación</th>
                        <th class="parte1">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="aper" items="${Alta}">
                        <tr>
                            <td>${aper.getIdDBasicos()}</td>
                            <td>${aper.getNom()}</td>
                            <td>${aper.getApePat()}</td>
                            <td>${aper.getApemat()}</td>
                            <td>${aper.getEstado()}</td>
                            <td>${aper.getMun()}</td>
                            <td>${aper.getComuni()}</td>
                            <td>${aper.getCallNum()}</td>
                            <td>${aper.getCurp()}</td>
                            <td>${aper.getGen()}</td>
                            <td>${aper.getEstatus()}</td>
                            <td>${aper.getGrado()}</td>
                            <td>${aper.getGrupo()}</td>
                            <td>${aper.getEstEval()}</td>
                            <td>${aper.getFSalida()}</td>
                            <td>${aper.getFSusp()}</td>
                            <td>${aper.getFEval()}</td>
                            <td>
                                <a class="parte1" href="Controlador?menu=altaPersonal&accion=EditarRegistro&id=${aper.getIdDBasicos()}">Editar</a>
                                <a class="parte1"  onclick="return cancelar()" href="Controlador?menu=altaPersonal&accion=EliminarRegistro&id=${aper.getIdDBasicos()}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
                    <%--LINEAS DE CODIGO PARA MOSTRAR Y OCULTAR DIV --%>
            <script type="text/javascript">
        function muestra(id) {
            if (id === "Activo") {
                $("#Activo").show();
                $("#Activo1").show();
                $("#Activo2").show();
                $("#Activo3").hide();
                $("#Activo4").hide();
                $("#Activo5").show();
                $("#Activo6").hide();
                 $("#Activo7").hide();
            }
            if (id === "Inactivo") {
                $("#Activo").hide();
                $("#Activo1").hide();
                $("#Activo2").hide();
                $("#Activo3").show();
                $("#Activo4").show();
                $("#Activo5").hide();
                $("#Activo6").hide();
            }
            if (id === "No") {
                $("#Activo6").hide();
                $("#Activo7").hide();
            }
            if (id === "Sí") {
                $("#Activo6").show();
                $("#Activo7").show();
            }
        }        
    </script>
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
