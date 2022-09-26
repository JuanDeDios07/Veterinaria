<%-- 
    Document   : actualizar
    Created on : 26/09/2022, 03:51:08 PM
    Author     : hp
--%>

<%
    String cod=request.getParameter("cod");
    String tipo=request.getParameter("tipo");
%>

<jsp:useBean id="co" scope="page" class="modelo.Control" />

<%
int h=co.ActualizarServicios(cod,tipo);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%   if(h==1){ %>
        <h1> mesaje SE ACTUALIZO CORECTAMENTE </h1>
        <% }else{ %>
        
        <h1>mensaje ERROR NO SE PUDO ACTUALIZAR</h1> 
        <% } %>
        
        
    <button style=" padding: 15px"> <a class="dropdown-item" href="http://localhost:8080/veterinaria/index.html"> <h3> RETORNAR AL MENÚ</h3> </a> </button>
    
    </body>
</html>
