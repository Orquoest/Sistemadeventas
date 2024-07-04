
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
        <title>JSP Page</title>

    </head>
    <body>
   
        <div class = "container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body ">
                    <form class="form-sing" action="Validar" method="post">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <label>Bienvenidos al sistema</label>
                        </div>
                         <div class="form-group">
                             <label>Usuario:</label>
                             <input type = "text" name="txtuser" class="form-control">
                        </div>
                         <div class="form-group">
                             <label>Password:</label>
                             <input type="password" name="txtpass"  class="form-control"> 
                        </div>
                        <br>
                        <input style="align-items: center; display: flex; justify-content: center; margin-bottom:  20px" type="submit" name="accion" value="Ingresar" class="btn btn-primary mx-auto ">
                    </form>
                    <div style="color: red">
                        <p style="text-align: center">Error al introducir el usuario o contraseña <b><br>Vuelva a intentarlo </p></b>
                       
                    </div>
                    
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
