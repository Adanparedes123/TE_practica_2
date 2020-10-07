<%@page import="com.emergentes.modelo.Reusuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista del curso</title>
    </head>
    <body>   
         <%
            if (session.getAttribute("licur") == null) {
                ArrayList<Reusuarios> listaux = new ArrayList<Reusuarios>();
                session.setAttribute("licur", listaux);
            }
            ArrayList<Reusuarios> cur = (ArrayList<Reusuarios>) session.getAttribute("licur");

        %>
         <form action="usuarios" method="post">  
        <table border='1' cellspacing="0" align="center" >
             
            <caption><h2 align="center">Registros de usuarios</h2></caption>
           <a href="usuarios?op=1">Nuevo</a>
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellido</th>
                <th>Correo electronico</th>
                <th>Contraseña</th>
                <th></th>
                <th></th>
            </tr>
                 <%           
                     if (cur != null) {
                    for (Reusuarios item : cur) {
            %>
            <tr>
		 <td><%=item.getId()%></td>
                <td><%=item.getNombre()%></td>
                <td><%=item.getApellido()%></td>
                <td><%=item.getCorreo()%></td>
                <td><%=item.getContraseña()%></td>
                <td><a href="usuarios?op=2&id=<%=item.getId()%>">
                        Editar</a>
                </td>
                <td><a href="usuarios?op=3&id=<%=item.getId()%>"
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
            <a href="login.jsp">Salir de Registro Usuarios</a>
    </body>
</html>
