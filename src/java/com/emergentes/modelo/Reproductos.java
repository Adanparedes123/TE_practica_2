package com.emergentes.modelo;

public class Reproductos
{
    private int id;
    private String producto;
    private String categorida;
    private String existencia;
    private String precio;
    
    public Reproductos()
    {         id=0; 
              producto="";
              categorida="";
              existencia="";
              precio="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getCategorida() {
        return categorida;
    }

    public void setCategorida(String categorida) {
        this.categorida = categorida;
    }

    public String getExistencia() {
        return existencia;
    }

    public void setExistencia(String existencia) {
        this.existencia = existencia;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }
    
    
    
}
