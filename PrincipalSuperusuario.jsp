<%-- 
    Document   : PrincipalUsuario
    Created on : 09-ago-2020, 16:37:45
    Author     : Mary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="main.js" type="text/javascript"></script>
        <title>Página principal</title>
    </head>
    <body>
     <div class="wrap">
            <ul class="menu">
                <ul>
                    <li><a href="inicio.jsp" target="myMarco"><strong>Inicio</strong></a></li>
                    <li class="submenu"><a class="sub" href="#"><strong>Personal</strong></a>
                        <ul>
                            <li><a href="Controlador?menu=altaPersonal&accion=Listar" target="myMarco">Dar de alta personal</a></li>
                            <li><a href="Controlador?menu=aPatrulla&accion=Listar" target="myMarco">Dar de alta patrulla</a></li>                               
                        </ul></li>
                    <li class="submenu"><a class="sub" href="#"><strong>Infracciones</strong></a>
                        <ul>
                            <li><a href="ControladorInfraccion?menu=agregarInfraccion&accion=Listar" target="myMarco">Agregar infracción</a></li> 
                            <li><a href="ControladorInfraccion?menu=Estatus&accion=Listar" target="myMarco">Estatus de la infracción</a></li>
                            <li><a href="ControladorInfraccion?menu=imprimirInfraccion&accion=Listar" target="myMarco">Imprimir reportes</a></li> 
                        </ul>
                    </li>   
                    <li class="submenu"><a class="sub" href="#"><strong>Puestas</strong></a>
                        <ul>
                            <li><a href="ControladorPuesta?menu=agregarPuesta&accion=Listar" target="myMarco">Agregar puesta</a></li> 
                            <li><a href="ControladorPuesta?menu=imprimirPuesta&accion=default" target="myMarco">Incidencia delictiva</a></li> 
                        </ul>
                    </li>   
                    <li class="submenu"><a class="sub" href="#"><strong>Vehículos asegurados</strong></a>
                        <ul>
                            <li><a href="ControladorVehiculo?menu=agregarVehiculo&accion=Listar" target="myMarco">Agregar vehículo</a></li> 
                            </ul>
                    </li>  
                    <li class="menu1"><a  class="sub" href="index.jsp">Usuario ingresado: ${udao.getNombre()}</a>
                        
                        <ul>
                            <li><a href="index.jsp">Salir</a></li>
                        </ul>
                    </li>
                                    </ul>

            </ul>
            
        </div>
        <script src="menu.js" type="text/javascript"></script>
        <div style="height: 500px; width: 1000px;">
        <iframe name="myMarco" style="height: 200%; width:200%; border: none" ></iframe>
        </div>
         
    </body>
    </html>
