<%@page import="com.emergentes.modelo.Reproductos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
          <% 
            Reproductos cur =(Reproductos)request.getAttribute("micur");
            boolean nuevo = true;
            if(cur.getId()>0)
            {
                nuevo = false;
            }
            %>
   
          <form action="productos" method="post">
          <table cellspacing="0" align="center" >
              <caption> <h3 align='center'>Datos del Registro</h3></caption>
              <tr>
                    <td align="right">Id</td>
                    <th><input type="text" name="id" value="<%=cur.getId()%>"/></th>
		</tr>
                
                <tr>
                    <td align="right">Producto</td>
                    <th><input type="text" name="producto" value="<%=cur.getProducto()%>"/></th>
		</tr>	
                
		<tr>
                    <td align="right">Categoria</td>
                    <td><select name="categoria" value="<%=cur.getCategorida()%>"/>
                            <option value="muy baja">muy baja</option>
                            <option value="baja">baja</option>
                            <option value="inter medio">inter medio</option>
                            <option value="medio">medio</option>
                            <option value="alto">alto</option>
                             <option value="muy alto">muy alto</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                        <td align="right">Existencia</td>
                    <th><input   type="text" name="existencia" value="<%=cur.getExistencia()%>"/></th>
		</tr>	
                
                <tr>
                        <td align="right">Precio</td>
                    <th><input   type="text" name="precio" value="<%=cur.getPrecio()%>"/></th>
		</tr>	
                      
                <tr>
                    <td><input type="hidden" name="op"value="4"</td>
                    <td><input type="hidden" name="nuevo"value="<%=nuevo%>"></td>
                  
                </tr>
                <tr>
                     <td></td>
                      <td><input type="submit" value="Enviar"</td>
                      <td></td>
                </tr>
           
        </table>      
          </form>
   
             <a href="index_3.jsp">Volver</a>
    </body>
</html>
