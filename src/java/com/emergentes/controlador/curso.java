package com.emergentes.controlador;

import com.emergentes.modelo.Incurso;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "curso", urlPatterns = {"/curso"})
public class curso extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //processRequest(request, response);
     int op= Integer.parseInt(request.getParameter("op"));
        int id,pos;
        HttpSession ses =request.getSession();
        ArrayList<Incurso> lista = (ArrayList<Incurso>)ses.getAttribute("licur");
        //nuevo
        if(op==1)
        {
            Incurso p = new Incurso();
            request.setAttribute("micur", p);
            request.getRequestDispatcher("mostrar_1.jsp").forward(request,response);
        }
        //editar
        if(op == 2)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            
            Incurso p1 = lista.get(pos);
             request.setAttribute("micur", p1);
             request.getRequestDispatcher("mostrar_1.jsp").forward(request,response);
        }
        //eliminar
         if(op == 3)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            lista.remove(pos);
            ses.setAttribute("licur,",lista);
             response.sendRedirect("index_1.jsp");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
     //   processRequest(request, response);
        int id= Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellido");
        String curso = request.getParameter("curso");
        String nuevo = request.getParameter("nuevo");
        
        Incurso cur= new Incurso();
       cur.setId(id);
        cur.setNombre(nombre);
        cur.setApellido(apellidos);
        cur.setCurso(curso);
        
        HttpSession ses= request.getSession();
        ArrayList<Incurso> lista = (ArrayList<Incurso>)ses.getAttribute("licur");
        
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
        response.sendRedirect("index_1.jsp");
    }
    private int buscarIndice(HttpServletRequest request,int id)
{
    HttpSession ses =request.getSession();
    ArrayList<Incurso> lista = (ArrayList<Incurso>)ses.getAttribute("licur");
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
