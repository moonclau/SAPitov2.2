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
public class Entradas {
    String claveCompra;
    String claveProducto;
    String nombreP;
    String tipo;
    String clavePv;
    int cantidad;
    String unidad;
    Double costoUnitario;
    String lote;

    public String getClaveCompra() {
        return claveCompra;
    }

    public void setClaveCompra(String claveCompra) {
        this.claveCompra = claveCompra;
    }

    public String getClaveProducto() {
        return claveProducto;
    }

    public void setClaveProducto(String claveProducto) {
        this.claveProducto = claveProducto;
    }

    public String getNombreP() {
        return nombreP;
    }

    public void setNombreP(String nombreP) {
        this.nombreP = nombreP;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getClavePv() {
        return clavePv;
    }

    public void setClavePv(String clavePv) {
        this.clavePv = clavePv;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public Double getCostoUnitario() {
        return costoUnitario;
    }

    public void setCostoUnitario(Double costoUnitario) {
        this.costoUnitario = costoUnitario;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }
    
}
