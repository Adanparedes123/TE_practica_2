<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>     
        <p>para acceder use el siguiente usuario y contraseña </p>
        <p>el usuario (admin) </p>
        <p>la contraseña  (1234) </p>
        <p>para mejor acceso a los ejercicios</p>
        <p>una vez que ejecute un ejercicio del formulario volver a ejecutar el programa</p>
        <%
            String msg = (String) session.getAttribute("error");
            if(msg!=null)
            {
        %>
        <p style="color:red"><%=msg %></p>
        <%
            session.invalidate();
            }
            %>
            <form action="LoginSession" method="post">
                <table cellspacing="6" align="center" >
                       <caption><h1>Login</h1></caption> 
                    <tr>
                        <td>Usuario: </td>
                        <td><input type="text" name="usuario"/></td>
                    </tr>
                    <tr>
                        <td>Clave: </td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><input type="submit" value="ingresar"/></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
