<%@page import="com.emergentes.modelo.Incurso"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de datos</title>
    </head>
    <body>
          <% 
            Incurso cur =(Incurso)request.getAttribute("micur");
            boolean nuevo = true;
            if(cur.getId()>0)
            {
                nuevo = false;
            }
            %>
   
          <form action="curso" method="post">
          <table cellspacing="0" align="center" >
              <caption> <h4 align='center'>Inscripcion en curso</h4></capiton>
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
                    <td align="right">Curso</td>
                    <td><select name="curso" value="<%=cur.getCurso()%>"/>
                            <option value="Primero">Primero</option>
                            <option value="Segundo">Segundo</option>
                            <option value="Tercero">Tercero</option>
                            <option value="Cuarto">Cuarto</option>
                            <option value="Quinto">Quinto</option>
                            <option value="Sexto">Sexto</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td><input type="hidden" name="op"value="4"</td>
                    <td><input type="hidden" name="nuevo"value="<%=nuevo%>"></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td ><input align="center" type="submit" value="Envio"</td>
                    <td></td>
                </tr>
           
        </table>      
          </form>
   
               <a href="index_1.jsp">Volver</a>
    </body>
</html>
