<%@page import="com.emergentes.modelo.Reusuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuarios</title>
    </head>
    <body>
          <% 
            Reusuarios cur =(Reusuarios)request.getAttribute("micur");
            boolean nuevo = true;
            if(cur.getId()>0)
            {
                nuevo = false;
            }
            %>
   
          <form action="usuarios" method="post">
          <table cellspacing="0" align="center" >
              <caption> <h3 align='center'>Datos del Registro</h3></caption>
              <tr>
                    <td align="right">Id</td>
                    <th><input type="text" name="id" value="<%=cur.getId()%>"/></th>
		</tr>
                
                <tr>
                    <td align="right">Nombre</td>
                    <th><input type="text" name="nombre" value="<%=cur.getNombre()%>"/></th>
		</tr>	
                
		<tr>
                        <td align="right">Apellido</td>
                    <th><input   type="text" name="apellido" value="<%=cur.getApellido()%>"/></th>
		</tr>	
                
                <tr>
                        <td align="right">Correo electronico</td>
                    <th><input   type="email" name="correo" value="<%=cur.getCorreo()%>"/></th>
		</tr>	
                
                  <tr>
                        <td align="right">Contraseña</td>
                    <th><input   type="password" name="password" value="<%=cur.getContraseña()%>"/></th>
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
   
             <a href="index_2.jsp">Volver</a>
    </body>
</html>
