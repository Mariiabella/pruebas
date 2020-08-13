<%-- 
    Document   : sesiones
    Created on : 09-ago-2020, 17:16:44
    Author     : Mary
--%>

<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
HttpSession iniciarSesion =request.getSession();
String Usuario="";
int TipoUsu=0;

if(iniciarSesion.getAttribute("Usuario")!=null && iniciarSesion.getAttribute("TipoUsu")!=null && iniciarSesion!=null ){
    Usuario=iniciarSesion.getAttribute("Usuario").toString();
    TipoUsu=Integer.parseInt(iniciarSesion.getAttribute("TipoUsu").toString());
    
    if(TipoUsu==0){
       response.sendRedirect("index.jsp");
    }
else if(TipoUsu==1){
    response.sendRedirect("Principal.jsp");
}
else if(TipoUsu==2){
    response.sendRedirect("PrincipalSuperusuario.jsp");
}
    else if(TipoUsu==3){
    response.sendRedirect("PrincipalUsuario.jsp");
}
}else{
    response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
