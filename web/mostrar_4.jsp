<%@page import="com.emergentes.modelo.Relibros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar libros</title>
    </head>
   <body>
          <% 
            Relibros cur =(Relibros)request.getAttribute("micur");
            boolean nuevo = true;
            if(cur.getId()>0)
            {
                nuevo = false;
            }
            %>
   
          <form action="libros" method="post">
          <table cellspacing="0" align="center" >
              <caption> <h3 align='center'>Datos del Registro</h3></caption>
              <tr>
                    <td align="right">Id</td>
                    <th><input type="text" name="id" value="<%=cur.getId()%>"/></th>
		</tr>
                
                <tr>
                    <td align="right">Titulo</td>
                    <th><input type="text" name="titulo" value="<%=cur.getTitulo()%>"/></th>
		</tr>	
                
		<tr>
                        <td align="right">Autor</td>
                    <th><input   type="text" name="autor" value="<%=cur.getAutor()%>"/></th>
		</tr>	
                
                <tr>
                        <td align="right">Resumen</td>
                    <th><input   type="text" name="resumen" value="<%=cur.getResumen()%>"/></th>
		</tr>	
                
                <tr>
                        <td align="right">Medio</td>
                    <td><input type="radio" name="medio" value="Fisico"/>Fisico</td>
                    </tr>
                    <tr>
                        <td></td>
                     <td><input   type="radio" name="medio" value="Magnetico"/>Magnetico</td> 
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
   
             <a href="index_4.jsp">Volver</a>
    </body>
</html>
