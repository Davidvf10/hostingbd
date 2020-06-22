<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>ESCOM</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://kit.fontsawesome.com/2a0bc7c4d4.js" crossorigin="anonymous"></script>
</head>

<body class="text-center">
    <nav class="navbar bg-dark navbar-dark">
        <a class="navbar-brand" href="#">
            <img src="img/logo2.png" width="60" height="35" class="rounded mx-auto d-inline-block align-top" alt="">
            Protocolos ESCOM
        </a>
        
        <ul class="navbar-nav justify-content-end">
          <li class="nav-item">
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Iniciar Sesión
              </button>
          </li>
        </ul>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 offset-md-3 opaco"><BR>
                <h2 class="text">¡Bienvenido! Aquí puedes registrar tu protocolo para su revisión.</h2>
                <c:choose>
                    <c:when test="${requestScope.Mensaje != null}">
                        <h3 id="Error">${requestScope.Mensaje}</h3>
                    </c:when>
                </c:choose><BR>
                <div class="row">
                    <div class="col-md-4">
                        <img class="mb-4 rounded-circle" src="https://picsum.photos/200/300" alt="" 
                             width="180" height="180">
                    </div>
                    <div class="col-md-8">
                        <a role="button" href="registrar.jsp" class="mt-4 mb-4 btn btn-success btn-lg btn-block" 
                           accesskey=""id="add-dato">Registrar Alumno</a>
                        <a role="button" href="repro.jsp" class="mt-4 mb-4 btn btn-success btn-lg btn-block" 
                           accesskey=""id="add-dato">Registrar Protocolo</a>
                    </div>
                </div>
            </div>
        </div>	
    </div>
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Iniciar Sesión</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                <form id="miForm" method="post" action="IniciarSesion">
                    <div class="form-group was-validated" data-toggle="tooltip" data-placement="left">
                        <input type="text" class="form-control is-invalid" 
                               name="usuario" id="num_res" placeholder="Usuario o Boleta" required>
                    </div>
                    <div class="form-group was-validated" data-toggle="tooltip" data-placement="left">
                        <input type="password" name="pass" class="form-control is-invalid" id="num_res" 
                               placeholder="Contrasenia" required>
                    </div>
                    <input role="button" type="submit" value="Ingresar" 
                           class="mt-4 mb-4 btn btn-success btn-lg btn-block" id="add-dato">
                </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark p-3 text-white fixed-bottom">
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <a><img src="img\gmail.png" width="30" height="30"> contacto@escomtt.com</a>
            </div>
        </div>
    </footer>
</body>
</html>
