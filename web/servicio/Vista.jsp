<%-- 
    Document   : Vista
    Created on : 21/09/2022, 08:25:38 PM
    Author     : ILP
--%>
<jsp:useBean id="control" scope="page" class="modelo.Control" />

<%
java.util.Vector<reserva.Servicio> servicio=control.listarServicos();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        
    </head>
    <body>
       
         <table  class="table table-dark">
            <tr>
                <td>
                    CODIGO
                </td>
                <td>
                    TIPO DE SERVICIO
                </td>
               
            </tr>
            
            <%   for(reserva.Servicio pro:servicio){                      %>
            <tr>
                <td>
                    <%=pro.getCod() %> 
                </td>
                <td>
                      <%=pro.getTipo() %> 
                </td>
               
            </tr>
           <%  }        %>
            
        </table>
         <button> <a class="dropdown-item" href="http://localhost:8080/veterinaria/index.html"> <h3> RETORNAR AL MENÚ</h3> </a> </button>
    
    </body>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</html>
