<%-- 
    Document   : Principal
    Created on : 14 jun 2024, 16:20:44
    Author     : WINDOWS10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-info ">
  <div class="container-fluid">
   
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a style="margin-left:10px; border:none;" class="btn btn-outline-light" href="Controlador?menu=Producto" target="myFrame">Producto</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none; " class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none; " class="btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Cliente</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none; " class="btn btn-outline-light" href="Controlador?menu=NuevaVenta" target="myFrame">Nueva Venta</a>
        </li>
      </ul>
      
        <div class="dropdown mx-auto">
          <button style="border: none;" class="btn btn-outline-light  dropdown-toggle dropdown-menu-end "  type="button" data-bs-toggle="dropdown" aria-expanded="false" >
              ${usuario.getNom()}
          </button>
            <ul class="dropdown-menu text-center">
                        <li><a class="dropdown-item" href="#">
                                <img src="img/png-transparent-user-computer-icons-user-miscellaneous-cdr-rectangle-thumbnail.png" alt="" height="60px" width="60px"/>
                    </a></li>
              <li><a class="dropdown-item" href="#">${usuario.getUser()}</a></li>
              <li><a class="dropdown-item" href="#">${usuario.getUser()}@gmail.com</a></li>
              <div class="dropdown-divider"></div>
              <form method="POST">
                  <li><button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button></li>
                  </form>
              
              
            </ul>
     </div>  
    </div>
  </div>
</nav>

              <div class="n-4" style="height:550px">
                  <iframe name="myFrame" style="height: 100%;width: 100%;border: none"></iframe>
              </div>
              

              
              
              
              
              
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
</html>
