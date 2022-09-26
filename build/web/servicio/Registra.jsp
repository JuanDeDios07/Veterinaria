<%-- 
    Document   : Registra
    Created on : 21/09/2022, 08:35:44 PM
    Author     : ILP
--%>

<%
    String cod=request.getParameter("cod");
    String tipo=request.getParameter("tipo");
%>

<jsp:useBean id="co" scope="page" class="modelo.Control" />

<%
int h=co.RegitroServicios(cod,tipo);
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
        <h1> mesaje SE REGISTRO CORECTAMENTE </h1>
        <% }else{ %>
        
        <h1>mensaje ERROR NO SE PUDO REGISTRAR</h1> 
        <% } %>
        
        
    <button style=" padding: 15px"> <a class="dropdown-item" href="http://localhost:8080/veterinaria/index.html"> <h3> RETORNAR AL MENÚ</h3> </a> </button>
    
        
    </body>
</html>
