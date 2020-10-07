<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Incurso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informacion del curso</title>
    </head>
    <body>    
         <%
            if (session.getAttribute("licur") == null) {
                ArrayList<Incurso> listaux = new ArrayList<Incurso>();
                session.setAttribute("licur", listaux);
            }
            ArrayList<Incurso> cur = (ArrayList<Incurso>) session.getAttribute("licur");

        %>
         <form action="curso" method="post">  
        <table border='1' cellspacing="0" align="center" >
             
            <caption><h2 align="center">Registro del curso</h2></caption>
           <a href="curso?op=1">Nuevo</a>
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellido</th>
                <th>Curso</th>
                <th></th>
                <th></th>
            </tr>
                 <%           
                     if (cur != null) {
                    for (Incurso item : cur) {
            %>
            <tr>
		 <td><%=item.getId()%></td>
                <td><%=item.getNombre()%></td>
                <td><%=item.getApellido()%></td>
                <td><%=item.getCurso()%></td>
                <td><a href="curso?op=2&id=<%=item.getId()%>">
                        Editar</a>
                </td>
                <td><a href="curso?op=3&id=<%=item.getId()%>"
                       onclick='return confirm("Esta seguro de elimiar el registro ?");
                       '>Eliminar</a>
                </td>
            </tr>
              <%
                    }
                }
            %>
         
        </table>
        </form>
            <br>
            <br>
            
           <a href="login.jsp">Salir de Inscripcion en curso</a>
    </body>
</html>
