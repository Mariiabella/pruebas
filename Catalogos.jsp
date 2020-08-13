<%-- 
    Document   : Catalogos
    Created on : 09-ago-2020, 16:46:16
    Author     : Mary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilosMarco.css" rel="stylesheet" type="text/css"/>
        <title>Catálogos</title>
    </head>
    <body>
        <form action="Controlador?menu=Catalogos" method="POST">
            <div style="float: left">
                <label>Ingrese Estado</label><br>
                <input type="text" name="estado"/>                 
            </div>
            <div style="float: left">
                <label>Ingrese Municipio</label><br>
                <input type="text" name="muicipio"/>                 
            </div>
            
            <div style="float: left">
                <label>Ingrese Localidad</label><br>
                <input type="text" name="localidad"/>                 
            </div>
            <br>
            
            <div>
                <button type="submit" value="Agregar" name="accion">Agregar</button>
            </div>

            
        </form>
         <div id="pie">
        <% if(request.getAttribute("Aviso")!=null){%>
        ${Aviso}
        <%}%>   
         </div>
    </body>
</html>
