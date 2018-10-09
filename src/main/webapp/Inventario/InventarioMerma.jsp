<%-- 
    Document   : InventarioMerma
    Created on : 6/10/2018, 05:36:57 PM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario Merma</title>
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
            <a href=" " class="navbar-brand text-white">Inventario</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#inv_navbar" aria-controls="inv_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="int_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href=" " class="nav-link text-white">Inventario&nbsp;General</a>
                    </li>                   
                    <li class="nav-item">
                        <a href=" " class="nav-link text-white">Inventario&nbsp;Entradas</a>
                    </li>    
                    <li class="nav-item">
                        <a href=" " class="nav-link text-white">Inventario&nbsp;Salidas</a>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="merma" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Merma</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioMerma.jsp">Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaAgregar.jsp">Agregar&nbsp;Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaModificar.jsp">Modificar&nbsp;Merma</a>                                  
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="devoluciones" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Devoluciones</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="dev">
                            <a class="nav-link text-white" href="InventarioDevoluciones.jsp">Devoluciones</a>
                            <a class="nav-link text-white" href="InventarioDevAgregar.jsp">Agregar&nbsp;Devolucion</a>                                    
                        </div>
                    </li>                            
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>      
    <br/><br/>
    <div class="row">
    <!--Panel-->
    <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
                <label class="card-text">Buscar id de merma</label><br>
                <input type="text" id="bmerma" name="bmerma" class="form-control form-control-sm" />
                <input id="bomerma" type="submit" value="Buscar" class="btn btn-success"/><br><br>
                <p class="card-text">Eliminar producto de merma</p>
                <input type="text" id="emerma" name="emerma" class="form-control form-control-sm" />
                <input id="boemerma" type="submit" value="Eliminar" class="btn btn-success"/><br><br>
                <p class="card-text">Nuevo producto de merma</p>
                <input id="boamerma" type="submit" value="Agregar" class="btn btn-success"/><br><br>
                <p class="card-text">Modificar producto de merma</p>
                <input id="bommerma" type="submit" value="Modificar" class="btn btn-success"/><br><br>
                <p class="card-text">Reporte</p>
                <input id="bogmerma" type="submit" value="Generar" class="btn btn-success"/>
            </div>
        </div>
    </div>
    <!--/.Panel-->
    <!--Panel-->
    <div class="col-sm-9">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title">Merma</h3>
                <!--TABLA MERMA NORMAL  -->
                <div class="col-xs-12 col-md-12 central table-responsive">              
                        <table class="tablas table">
                            <tr>                                
                                <th>ID merma</th>
                                <th>ID producto</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Proveedor</th>
                                <th>Cantidad</th>
                                <th>Unidad</th>
                                <th>Costo Unitario</th>
                                <th>Fecha</th>
                                <th>Descripcion</th>
                                <th>Tipo merma</th>
                            </tr>
                            <tr>                                
                                <td>01</td>
                                <td>01</td>
                                <td>Blusa</td>
                                <td>Ropa</td>
                                <td>Puma</td>                   
                                <td>5</td>
                                <td>pieza</td>
                                <td>100</td>
                                <td>04/10/2018</td>
                                <td>Descostura en mangas por transporte</td>
                                <td>Normal</td>
                            </tr>
                            <tr>                                     
                                <td>02</td>
                                <td>40</td>
                                <td>Martillo</td>
                                <td>Herramienta</td>
                                <td>Truper</td>                   
                                <td>1</td>
                                <td>pieza</td>
                                <td>150</td>
                                <td>04/10/2018</td>
                                <td>desgarre en el mango</td>
                                <td>Normal</td>
                            </tr>
                            <tr>                                    
                                <td>01</td>
                                <td>01</td>
                                <td>Blusa</td>
                                <td>Ropa</td>
                                <td>Puma</td>                   
                                <td>5</td>
                                <td>pieza</td>
                                <td>100</td>
                                <td>04/10/2018</td>
                                <td>Descostura en mangas por transporte</td>
                                <td>Normal</td>
                            </tr>
                            <tr>                                     
                                <td>01</td>
                                <td>01</td>
                                <td>Blusa</td>
                                <td>Ropa</td>
                                <td>Puma</td>                   
                                <td>5</td>
                                <td>pieza</td>
                                <td>100</td>
                                <td>04/10/2018</td>
                                <td>Descostura en mangas por transporte</td>
                                <td>Normal</td>
                            </tr>
                        </table>               
            </div>
                <!--FIN TABLA MN-->
            </div>
        </div>
    </div>
    <!--/.Panel-->
</div>
    
    </body>
</html>
