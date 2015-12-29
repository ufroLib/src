
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
                <script type="text/javascript" src=js/jquery-2.1.4.js></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet"   href="css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        
	<title>Segunda Pagina</title>
</head>
<body>

	<div id="bloque1">
		<nav>
                    <a href="index.jsp">INICIO</a>
                    <a href="#bloque2">LOGIN</a>
                    <a>QUIENES SOMOS</a>
		</nav>
		<header>
                    <img src="images/logo_ufro.png">
                    <section>
                            <h1>BIBLIOTECA UFRO</h1>
                    </section>
		</header>
		
	</div>
	
	<div id="bloque2">

            <!--<iframe width="1120" height="630" src="https://www.youtube.com/embed/Scxs7L0vhZ4?rel=0&amp;&autoplay=1&autohide=1&loop=1" frameborder="0" allowfullscreen></iframe>
            -->
            <div class="container av-access">
                 <div class="row">
                     <div class="col-md-6">
                         <div class="row">
                             <img src="images/AlumnoLogin.jpg" height="180" width="324">
                         </div><!-- /row -->
                         <div class="row">
                             <div class="col-md-10 col-md-offset-1">
                             <h2 class="titulo-acceso">Portal Alumnos</span></h2>
                             <form id="formAlumno" name="formAlumno" method="post" action="Login">
                                     <div class="form-group">
                                         <label>Matricula</label>
                                         
                                         <input class="form-control" type="text" name="matriculaAlumno" id="matriculaAlumno" size="11" placeholder="12345678K15">
                                     </div>
                                     <div class="form-group">
                                         <label>Contraseña</label>
                                         <input class="form-control" type="password" name="passwordAlumno" id="passwordAlumno" size="15" placeholder="Contraseña">
                                     </div>
                                     <button type="submit" class="btn btn-danger btn-access" name="buttonLogin" value="alumno" id="buttonLogin">Entrar</button>
                                     <!--<input type="hidden" id="testcookie" name="testcookie" value="1"/>-->
                                 </form>                 
                             </div>
                         </div><!-- /row -->
                     </div>
                     <div class="col-md-6">
                         <div class="row">
                             <img src="images/FuncionarioLogin.jpg" height="180" width="324">
                         </div><!-- /row -->
                         <div class="row">
                             <div class="col-md-10 col-md-offset-1">
                             <h2 class="titulo-acceso">Portal Funcionarios</h2>
                             <form id="formFuncionario" name="formFuncionario" method="post" action="Login">
                                     <div class="form-group">
                                         <label>Usuario</label>
                                         <input class="form-control" type="text" name="rutFuncionario" id="rutFuncionario" size="9" placeholder="12345678K">
                                     </div>
                                     <div class="form-group">
                                         <label>Contraseña</label>
                                         <input class="form-control" type="password" name="passwordFuncionario" id="passwordFuncionario" size="15" placeholder="Contraseña">
                                     </div>
                                 <button type="submit" class="btn btn-danger btn-access" name="buttonLogin" id="buttonLogin" value="funcionario">Entrar</button>
                                     <!--<input type="hidden" id="testcookie" name="testcookie" value="1"/>-->
                                 </form>
                             </div>
                         </div><!-- /row -->
                     </div>
                 </div><!-- /row -->
                 <div class="row">
                     <div class="col-md-12">
                         <hr>
                         <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="text-align:center;">Ayuda</button>
                         <div class="collapse" id="collapseExample">
                           <div class="well">
                             <p><strong>Usuario:</strong> rut completo sin puntos ni guión<br/>
                             <strong>Contraseña:</strong> rut sin puntos ni dígito verificador (último dígito)</p>
                             <p><strong>Ejemplo:</strong> si su rut es 12.456.345-k:</p>
                             <ul>
                                 <li>Usuario: 12456345k</li>
                                 <li>Contraseña: 12456345</li>
                             </ul>
                           </div>
                         </div>
                     </div>
                 </div><!-- /row -->       
            </div><!-- /container --> 
	</div>

	<footer>
		Esto es un footer
	</footer>

</body>
</html>