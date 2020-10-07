<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Reproductos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
    </head>
          <body>   
         <%
            if (session.getAttribute("licur") == null) {
                ArrayList<Reproductos> listaux = new ArrayList<Reproductos>();
                session.setAttribute("licur", listaux);
            }
            ArrayList<Reproductos> cur = (ArrayList<Reproductos>) session.getAttribute("licur");

        %>
         <form action="productos" method="post">  
        <table border='1' cellspacing="0" align="center" >
             
            <caption><h2 align="center">Registro de Productos</h2></caption>
           <a href="productos?op=1">Nuevo</a>
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Precio</th>
                <th></th>
                <th></th>
            </tr>
                 <%           
                     if (cur != null) {
                    for (Reproductos item : cur) {
            %>
            <tr>
		 <td><%=item.getId()%></td>
                <td><%=item.getProducto()%></td>
                <td><%=item.getCategorida()%></td>
                <td><%=item.getExistencia()%></td>
                <td><%=item.getPrecio()%></td>
                <td><a href="productos?op=2&id=<%=item.getId()%>">
                        Editar</a>
                </td>
                <td><a href="productos?op=3&id=<%=item.getId()%>"
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
            <a href="login.jsp">Salir de Registro Productos</a>
    </body>
 
</html>
