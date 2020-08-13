<%-- 
    Document   : index
    Created on : 2/03/2020, 01:08:19 PM
    Author     : Mary
--%>

<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <title>Login</title>
    </head>
    <body>
        <style>
            .login{
                border: 1px solid #E0E0F8; width: 400px; height: 500px;
                color: black; 
                font-family: sans-serif;
                display: inline-block;  
                font-size: 17px;
            }
            .usu{
                text-align: center;
            }
            .contra{
                text-align: center;
            }
            .boton{
                width: flex;
    font-size: 17px;
    border-radius: 4px;
    padding: 8px;
        background-color: #0174DF;
    color: white;
            }
            input{
                width: 200px;
    margin-bottom: 4px;
    padding: 4px;
    font-size: 17px;
    border-radius: 3px;   
                }
                h1{
                    font-family: sans-serif;
                }
                 .selec{
                border-radius: 5px;
                padding: 10px;
                font-size: 17px;
                margin-left: 20px;
            }
        </style>
    <center><br>
        <h1>Sistema de Seguridad Pública y Tránsito Municipal</h1>
        <br>
        <br>
        <br>        
        <form class="login" action="Validar" method="POST">
            <div>   <br>             
                <img src="imagen/atotonilco.jpg" alt="70" width="170"/>
                <h3><strong>Bienvenido al sistema</strong></h3>
            </div>   
            <div class="usu">
                <label>Usuario</label><br>
                <input type="text" name="txtusuario"/>
            </div> 
            <br>
            <div class="contra">
                <label>Contraseña</label><br>
                <input type="password" name="txtpass"/>  
            </div> 
            <br>
            
            <br>
            <input class="boton" type="submit" name="btnIngresar" value="Ingresar"/>

        </form>
        <%
            HttpSession sesion = request.getSession();
            List<Usuarios> listar=new ArrayList<Usuarios>();
            if(request.getAttribute("Error")!=null){
              out.print("<script>alert('Usuario o contraseña incorrectos! Intente de nuevo');</script>");  
            }
            if(request.getAttribute("listar")!=null){
                listar=(List<Usuarios>)request.getAttribute("listar");
                String nombre="";
                int tipo=0;
                for(Usuarios u: listar){
                    nombre=u.getNombre();
                    tipo=u.getTipoUsu();
                }
                sesion.setAttribute("Usuario", nombre);
                sesion.setAttribute("TipoUsu", tipo);
                response.sendRedirect("sesiones.jsp");
            }
           %>
    </center>
    
    <%--<div id="pie">
        <% if(request.getAttribute("Error")!=null){%>
        ${Error}
        <%}%>
    </div>--%>
</body>
</html>
