<%-- 
    Document   : Factura
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sap Ventas</title>
<!--Enlace a estilos personalizados de COntabilidad-->
<link href="../Recursos/css/contabilidad.css" rel="stylesheet" type="text/css"/>
<!--Validacion de campos-->
<script src="../Recursos/js/Contabilidad.js" type="text/javascript"></script>
<script src="../Recursos/js/Ventas.js" type="text/javascript"></script>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
</head>
<body>    
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href="Ventas.jsp" class="navbar-brand text-white">Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clientes</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Clientes.jsp">&nbsp;Cliente</a>
                            <a class="nav-link text-white" href="ModificarCliente.jsp">&nbsp;Modificar cliente</a>
                                                             
                        </div>
                    </li>                                  
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                          
                            
                            <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Factura.jsp">&nbsp;Factura</a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otro</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Devolucion.jsp">&nbsp;Devolucion</a>
                        </div>
                    </li> 
                     
                              
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <br>
    <br>
    <div class="col-sm-9 central" style="width: auto; margin: auto auto;" >
        <div class="card" text-center>
            <div class="card-body">
    
    <div class="row"><!-- INICIO DE SECCION PRINCIPAL -->
                <div class="container-fluid">
                    <center>
                        <form method="POST" autocomplete="off" action="../Factura"  id="formFactura" name="formFactura">
                            <table>
                                 <h1 class="text-uppercase text-center">Factura</h1>
                                
                                <tr>
                                    <td>
                                        Clave de Factura:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="claveFactura" id="claveFactura" required="required">
                                    </td>
                                    <br>
                                    <td>
                                        Nombre del Proveedor:
                                    </td>
                                    <td>
                                      <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="nombredelproveedorFactura" id="nombredelproveedorFactura" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Fecha:
                                    </td>
                                    <td>
                                      <input type="date" placeholder="Escribe aqui" class="form-control col-12" name="fechaFactura" id="fechaFactura" required="required">
                                    </td>
                                    <td>
                                        Tipo:
                                    </td>
                                    <td>
                                     <input type="number" placeholder="0 cliente/1 proveedor" class="form-control col-12" name="tipoFactura" id="tipoFactura" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Nombre del Cliente:
                                    </td>
                                    <td>
                                     <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="nombredelclienteFactura" id="nombredelclienteFactura" required="required">
                                    </td>
                                    <td>
                                        Total:
                                    </td>
                                    <td>
                                      <input type="number" placeholder="Escribe aqui" class="form-control col-12" name="totalFactura" id="idordendeventaFactura" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Id Orden de Venta:
                                    </td>
                                    <td>
                                      <input type="number" placeholder="Escribe aqui" class="form-control col-12" name="idordendeventaFactura" id="idordendeventaFactura" required="required">
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td colspan="8" align="center">
                                        <input type="submit" value="Procesar Factura" class="btn btn-primary"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </center>
                </div>
            </div><!-- FIN DE SECCION PRINCIPAL -->
            </div>
        </div>
    </div>
    
   
   
    
    
    </body>
</html>

