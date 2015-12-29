<%-- 
    Document   : alumonoIndex
    Created on : 08-12-2015, 18:32:32
    Author     : Chelo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
                <script type="text/javascript" src=js/jquery-2.1.4.js></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet"   href="css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <title>Biblioteca:Alumno</title>
    </head>
    <body>
        <%
            String alumno=(String) request.getAttribute("user");
            String matricula=(String) request.getAttribute("matricula");
            String libros=(String) request.getAttribute("librosPedidos");
        %>
        
        <div id="container" style="width: 70%; margin: auto;">
            
            <div class="page-header">
                <h1>Biblioteca:Alumno <small><%=alumno%> (<%=matricula%>)</small></h1>
                <br><%=libros%>
            </div>
            
            <ul class="nav nav-pills nav-justified">
                <li id="opBL"><a title="Opcion 1"  onclick="muestraBuscaLibros();showGallery()" href="#">Buscar Libro</a></li>
                <li id="opVP"><a title="Opcion 2" onclick="muestraLibrosPedidos();rellenaLibros();" href="#">Ver Pedidos</a></li>                    
                <li id="opP"><a title="Opcion 3"  onclick="muestraPerfil()" href="#">Perfil</a></li>
                <li><a title="Opcion 4" onclick="#" href="#">Logout</a></li>
            </ul>
            
            <br>
            <div id="content">
                <div id="buscarLibro">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                          <h2 class="panel-title">Buscar Libro</h2>
                        </div>
                        <div class="panel-body">
                            <form id="buscarLibroForm" name="buscarLibroForm" class="form-access-carrear-online" method="post" action="">  
                                
                                Buscar por: 
                             
                                <Select name="categoria" class="form-control" style="width: 30%" id="categoria">
                                    <option value = "Titulo" selected>Titulo</option>
                                    <option value = "Autor">Autor</option>                            
                                    <option value = "Categoria">Categoria</option>
                                    <option value = "ISBN">ISBN</option>
                                </Select>
                                <br>
                                Campo de Busqueda: 
                                <br><input type="text" class="form-control" style="width: 30%" name="titulo" ><br>
                                <input type="submit" class="btn btn-danger btn-access" value="Buscar"/>
                               
                            </form> 
                        </div>
                    </div>
                </div><!--Fin primer div-->              
                <div id="verLibros">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                          <h2 class="panel-title">Ver Pedidos</h2>
                        </div>
                        <div class="panel-body">
                             <div class="panel panel-default">
                                <!-- Default panel contents -->
                                <div class="panel-heading">Libros</div>

                                <!-- Table -->
                                <table class="table table-striped" style="width: 100%">
                                  <thead>
                                    <tr>
                                      <th>Titulo</th>
                                      <th>Autor</th>
                                      <th>ISBN</th>
                                      <th>Fecha Pedido</th>
                                      <th>Fecha Entrega</th>
                                      <th>Estado</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>John</td>
                                      <td>Doe</td>
                                      <td>john@example.com</td>
                                      <td>John</td>
                                      <td>Doe</td>
                                      <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                      <td>Mary</td>
                                      <td>Moe</td>
                                      <td>mary@example.com</td>
                                      <td>John</td>
                                      <td>Doe</td>
                                      <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                      <td>July</td>
                                      <td>Dooley</td>
                                      <td>july@example.com</td>
                                      <td>John</td>
                                      <td>Doe</td>
                                      <td>john@example.com</td>
                                    </tr>
                                 
                                  </tbody>
                                </table>
                              </div>
                        </div>
                    </div>    
                </div> <!-- Fin segundo div-->              
                <div id="verPerfil">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                          <h2 class="panel-title">Perfil</h2>
                        </div>
                        <div class="panel-body">
                             <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="col-md-3">
                                        <img src="images/placeholder.png" width="150" height="150" alt="Alumno"/>
                                    </div>
                                    <div class="col-md-4">
                                        Nombre: Marcelo Esperguel
                                        <br>
                                        Rut:181474483
                                        <br>
                                        Matricula:18147448310
                                        <br>
                                        Estado: Bloqueado hasta 20/10/2016 <a href="#">Mas</a>                                     
                                    </div>
                                </div>
                              </div>
                        </div>
                    </div>            
            </div>

        </div>
        </div>
        <script>
            function muestraBuscaLibros(){
                    
                document.getElementById("buscarLibro").style.display = "block";
                $('#opBL').addClass('active');
                document.getElementById("verLibros").style.display = "none";
                $('#opVP').removeClass('active');
                document.getElementById("verPerfil").style.display = "none";
                $('#opP').removeClass('active');
                
            }
            function muestraLibrosPedidos(){
                    
                document.getElementById("buscarLibro").style.display = "none";
                $('#opBL').removeClass('active');
                document.getElementById("verLibros").style.display = "block";
                $('#opVP').addClass('active');
                document.getElementById("verPerfil").style.display = "none";
                $('#opP').removeClass('active');
                
            }
            function muestraPerfil(){
                    
                document.getElementById("buscarLibro").style.display = "none";
                $('#opBL').removeClass('active');
                document.getElementById("verLibros").style.display = "none";
                $('#opVP').removeClass('active');
                document.getElementById("verPerfil").style.display = "block";
                $('#opP').addClass('active');
                
            }
            function rellenaLibros(){
                
            }
        </script>
    </body>
</html>
