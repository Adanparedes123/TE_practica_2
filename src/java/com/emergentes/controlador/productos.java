package com.emergentes.controlador;

import com.emergentes.modelo.Reproductos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "productos", urlPatterns = {"/productos"})
public class productos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
      //  processRequest(request, response);
   int op= Integer.parseInt(request.getParameter("op"));
        int id,pos;
        HttpSession ses =request.getSession();
        ArrayList<Reproductos> lista = (ArrayList<Reproductos>)ses.getAttribute("licur");
        //nuevo
        if(op==1)
        {
            Reproductos p = new Reproductos();
            request.setAttribute("micur", p);
            request.getRequestDispatcher("mostrar_3.jsp").forward(request,response);
        }
        //editar
        if(op == 2)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            
            Reproductos p1 = lista.get(pos);
             request.setAttribute("micur", p1);
             request.getRequestDispatcher("mostrar_3.jsp").forward(request,response);
        }
        //eliminar
         if(op == 3)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            lista.remove(pos);
            ses.setAttribute("licur,",lista);
             response.sendRedirect("index_3.jsp");
        }
    
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        //processRequest(request, response);
       int id= Integer.parseInt(request.getParameter("id"));
        String producto = request.getParameter("producto");
        String categoria = request.getParameter("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        String nuevo = request.getParameter("nuevo");
        
        
        Reproductos cur= new Reproductos();
        cur.setId(id);
        cur.setProducto(producto);
        cur.setCategorida(categoria);
        cur.setExistencia(existencia);
        cur.setPrecio(precio);
        
        HttpSession ses= request.getSession();
        ArrayList<Reproductos> lista = (ArrayList<Reproductos>)ses.getAttribute("licur");
        
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
        response.sendRedirect("index_3.jsp");
    
}
   private int buscarIndice(HttpServletRequest request,int id)
{
    HttpSession ses =request.getSession();
    ArrayList<Reproductos> lista = (ArrayList<Reproductos>)ses.getAttribute("licur");
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