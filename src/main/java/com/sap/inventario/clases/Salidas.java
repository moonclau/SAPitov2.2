/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.clases;

/**
 *
 * @author claudia
 */
public class Salidas {
    String claveProducto;
    String claveVenta;
    String producto;
    String tipo;
    int cantidad;
    double costoVenta;
    double iva;
    String fecha;
    double monto;

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getClaveProducto() {
        return claveProducto;
    }

    public void setClaveProducto(String claveProducto) {
        this.claveProducto = claveProducto;
    }

    public String getClaveVenta() {
        return claveVenta;
    }

    public void setClaveVenta(String claveVenta) {
        this.claveVenta = claveVenta;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }


    public double getIva() {
        return iva;
    }

    public void setIva(double iva) {
        this.iva = iva;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double mont) {
        this.monto = mont;
    }
    public double getCostoVenta() {
        return costoVenta;
    }

    public void setCostoVenta(double costoVenta) {
        this.costoVenta = costoVenta;
    }
    
    
}
