<%-- 
    Document   : Empleado
    Created on : 01-jul-2024, 3:38:04
    Author     : WINDOWS10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-6" style="border: none">
                <div class="card-body" >
                    <form action="Controlador?menu=Empleado" method="post">
                                                 
                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text"  name="txtDni" value="${empleado.getDni()}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${empleado.getEstado()}" name="txtEstado"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUser" value="${empleado.getUser()}"  class="form-control">
                    </div><br>
                    <input type="submit" name="accion" value="Agregar" class="btn bg-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn bg-success">
                    
                </form>
            </div>
         </div>
            <div class="col-sm-6">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>DNI</th>
                        <th>NOMBRES</th>
                        <th>TELEFONO</th>
                        <th>ESTADO</th>
                        <th>USER</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var = "em" items="${empleados}">
                    <tr>
                        <td>${em.getId()}</td>
                        <td>${em.getDni()}</td>
                        <td>${em.getNom()}</td>
                        <td>${em.getTel()}</td>
                        <td>${em.getEstado()}</td>
                        <td>${em.getUser()}</td>
                        <td>
                            <a style="margin-bottom: 15px" class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                            <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                    

                </tbody>
            </table>
        </div>
        </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
