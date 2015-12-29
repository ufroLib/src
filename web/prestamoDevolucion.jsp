<%-- 
    Document   : prestamoDevolucion
    Created on : 28-12-2015, 2:31:03
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div class="panel panel-primary">
    <div class="panel-heading">
      <h2 class="panel-title">Prestamo de Libro</h2>
    </div>
    <div class="panel-body">
        <form id="devolverLibroForm" name="prestarLibroForm" class="form-access-carrear-online" method="post" action="PrestamoLibro">  
            Ingrese Matricula Alumno:
            <br><input type="text" class="form-control" style="width: 30%" name="prestarLibroMatriuclaTF" ><br>
            
            Ingrese Codigo ISBN: 
            <br><input type="text" class="form-control" style="width: 30%" name="prestarLibroIsbnTF" ><br>
            <input type="submit" class="btn btn-danger btn-access" value="Ingresar"/>
            <input type="hidden" id="testcookie" name="testcookie" value="1"/>
        </form> 
    </div>

</div> 

<div class="panel panel-primary">
    <div class="panel-heading">
      <h2 class="panel-title">Devolucion de Libro</h2>
    </div>
    <div class="panel-body">
        <form id="devolverLibroForm" name="devolverLibroForm" class="form-access-carrear-online" method="post" action="">  
            Ingrese Codigo ISBN: 
            <br><input type="text" class="form-control" style="width: 30%" name="devolverLibroTF" ><br>
            <input type="submit" class="btn btn-danger btn-access" value="Ingresar"/>

        </form> 
    </div>

</div> 


