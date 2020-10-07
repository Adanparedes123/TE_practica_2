
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Relibros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Libros</title>
    </head>
     <body>   
         <%
            if (session.getAttribute("licur") == null) {
                ArrayList<Relibros> listaux = new ArrayList<Relibros>();
                session.setAttribute("licur", listaux);
            }
            ArrayList<Relibros> cur = (ArrayList<Relibros>) session.getAttribute("licur");

        %>
         <form action="libros" method="post">  
        <table border='1' cellspacing="0" align="center" >
             
            <caption><h2 align="center">Registros de libros</h2></caption>
           <a href="libros?op=1">Nuevo</a>
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Resumen</th>
                <th>Medio</th>
                <th></th>
                <th></th>
            </tr>
                 <%           
                     if (cur != null) {
                    for (Relibros item : cur) {
            %>
            <tr>
		 <td><%=item.getId()%></td>
                <td><%=item.getTitulo()%></td>
                <td><%=item.getAutor()%></td>
                <td><%=item.getResumen()%></td>
                <%String[] medio = item.getMedio();
                if(medio!=null)
                {
                    for(int i=0;i<medio.length;i++)
                    {    
                    %>
                <td><%=medio[i]%></td>
                <%
                    }
                }
                %>
                <td><a href="libros?op=2&id=<%=item.getId()%>">
                        Editar</a>
                </td>
                <td><a href="libros?op=3&id=<%=item.getId()%>"
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
            <a href="login.jsp">Salir de Registro Libros</a>
    </body>
</html>
