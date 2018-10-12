/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import com.sap.gerencia.clases.usuario;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author claudia
 */

@WebServlet(name = "Modificarmerma", urlPatterns = {"/Modificarmerma"})

public class Modificarmerma extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String mclave = request.getParameter("mim");
        String mproducto = request.getParameter("mp");
        String mtipo = request.getParameter("mtp");
        String mproveedor = request.getParameter("mipr");
        String mcantidad = request.getParameter("mc");
        String munidad = request.getParameter("mu");
        String mfecha = request.getParameter("mf");
        String mcostou = request.getParameter("mcu");
        String mdescripcion = request.getParameter("md");
        String mtipom = request.getParameter("mt");
        Conexion c = new Conexion();
        usuario usu = new usuario();
 
        c.insertar("MERMA", "clave_merma,"
                + "produto,"
                + "cantidad,"
                + "descripcion,"
                + "fecha,"
                + "proveedor,"
                + "tipo_merma",
                "'" + mclave
                + "'," + mproducto
                + "," + mcantidad
                + ",'" + mdescripcion
                + "','" + mfecha
                + "'," + mproveedor
                + ",'" + mtipo + "'"
        );

        response.sendRedirect("Inventario/ModificarMerma.jsp");
    }
   
}
