package com.emergentes.controlador;

import com.emergentes.modelo.Reusuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "usuarios", urlPatterns = {"/usuarios"})
public class usuarios extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       // processRequest(request, response);
        
       int op= Integer.parseInt(request.getParameter("op"));
        int id,pos;
        HttpSession ses =request.getSession();
        ArrayList<Reusuarios> lista = (ArrayList<Reusuarios>)ses.getAttribute("licur");
        //nuevo
        if(op==1)
        {
            Reusuarios p = new Reusuarios();
            request.setAttribute("micur", p);
            request.getRequestDispatcher("mostrar_2.jsp").forward(request,response);
        }
        //editar
        if(op == 2)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            
            Reusuarios p1 = lista.get(pos);
             request.setAttribute("micur", p1);
             request.getRequestDispatcher("mostrar_2.jsp").forward(request,response);
        }
        //eliminar
         if(op == 3)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            lista.remove(pos);
            ses.setAttribute("licur,",lista);
             response.sendRedirect("index_2.jsp");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       // processRequest(request, response);
        int id= Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("password");
        String nuevo = request.getParameter("nuevo");
        
        
        Reusuarios cur= new Reusuarios();
       cur.setId(id);
        cur.setNombre(nombre);
        cur.setApellido(apellidos);
          cur.setCorreo(correo);
        cur.setContraseña(contraseña);
        
        HttpSession ses= request.getSession();
        ArrayList<Reusuarios> lista = (ArrayList<Reusuarios>)ses.getAttribute("licur");
        
        if(nuevo.equals("true"))
        {
            lista.add(cur);
        }
        else
        {
            //editar
            //buscar el elemento en la seleccion
            int pos = buscarIndice(request,id);
            lista.set(pos,cur);
            //reemplzar
        }
        response.sendRedirect("index_2.jsp");
    }
    private int buscarIndice(HttpServletRequest request,int id)
{
    HttpSession ses =request.getSession();
    ArrayList<Reusuarios> lista = (ArrayList<Reusuarios>)ses.getAttribute("licur");
        int i=0;
        if(lista.size()>0)
        {
            while(i<lista.size())
            {
                if(lista.get(i).getId()==id)
                {
                    break;
                }
                else i++;
            }
        }
        return i;
}
}
