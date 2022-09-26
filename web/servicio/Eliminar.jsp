<%-- 
    Document   : Eliminar
    Created on : 26/09/2022, 04:11:46 PM
    Author     : hp
--%>


<%
    String cod=request.getParameter("cod");
%>

<jsp:useBean id="co" scope="page" class="modelo.Control" />

<%
int h=co.EliminareServicios(cod);
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
        <h1> mesaje SE ELIMINO CORECTAMENTE </h1>
        <% }else{ %>
        
        <h1>mensaje ERROR NO SE PUDO ELIMINAR</h1> 
        <% } %>
        
        
    <button> <a class="dropdown-item" href="http://localhost:8080/veterinaria/index.html"> <h3> RETORNAR AL MENÚ</h3> </a> </button>
    
    </body>
    
</html>
