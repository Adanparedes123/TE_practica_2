<%
 if(session.getAttribute("login")!="OK")
 {
    response.sendRedirect("login.jsp");
 }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Opciones</title>
    </head>
    <body>
        <table cellespacing="6" align="center">
            <caption><h2 align="center">Formularios</h2></caption>
                <tr>
                    <td><a href="index_1.jsp">Inscripción en curso</a></td>
		</tr>	
                
                 <tr>
                    <td><a href="index_2.jsp">Registro de usuarios</a></td>
                 </tr>
                 
                 <tr>
                     
                    <td>  <a href="index_3.jsp">Inscripcion en productos</a></td>
                 </tr>
                 
                  <tr>
                    <td> <a href="index_4.jsp">Registro de libros</a></td>
                  </tr>
                  
                  <tr>
                      <td></td>
                  </tr>
                            
                  <tr>
                    <td align="center"> <a href="LoginSession">Salir</a>
                  </tr>
        </table>
     
    </body>
</html>
