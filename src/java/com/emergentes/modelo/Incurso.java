package com.emergentes.modelo;

public class Incurso 
{
    private String nombre;
    private String apellido;
    private String curso;
    private int id;

    public Incurso()
    {
        id=0;
        nombre="";
        apellido="";
        curso="";
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;   
    }
    public String getCurso() {
        return curso;
    }
    public void setCurso(String curso) {
        this.curso = curso;
    }

}
