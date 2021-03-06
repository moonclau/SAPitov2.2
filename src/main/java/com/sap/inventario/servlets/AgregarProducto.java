
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author claudia
 */
@WebServlet(name = "AgregarProducto", urlPatterns = {"/AgregarProducto"})
public class AgregarProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        //conexion
        Conexion c = new Conexion();
        //declaracion de campos para obtener lo ingresado en el jsp
        String clave = request.getParameter("clave");
        String nombre = request.getParameter("nombre");
        String tipo = request.getParameter("tipo");
        String unidad = request.getParameter("unidad");
        String cantidad = request.getParameter("cantidad");
        String costounitario = request.getParameter("costo");
        String iva = request.getParameter("iva");
        String fecha= request.getParameter("fecha");
        String costov=request.getParameter("costov");
        //operacion de monto total
        double vcosto=Double.parseDouble(costounitario);
        double viva=Double.parseDouble(iva);
        double monto=(vcosto*viva)+vcosto;
        //Declaracion de campos de la base de datos
        String campos="clave,nombre,tipo,unidad,existencia,costounitario,iva,costo,fecha,monto_total,operacion";
        //declaracion de variable que guarda los valores obtenidos en el jsp
        String valores="'"+clave+"','"+nombre+"','"+tipo+"','"+unidad+"',"+cantidad+","+costounitario+","
                +iva+","+costov+",'"+fecha+"',"+monto+",'entrada'";
        //insertar datos en la BD SAP
        c.insertar(campos, "producto", valores);
        System.out.println("los datos ingresados son:"+campos);
         response.sendRedirect("Inventario/InventarioProductoAgregar.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AgregarProducto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
