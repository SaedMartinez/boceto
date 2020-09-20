<<<<<<< HEAD
<%-- 
    Document   : Empleado
    Created on : 17/09/2020, 02:18:40 PM
    Author     : Saed
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
>>>>>>> 3b607675c989896605d3803038b11512963dff0d
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
               integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
<<<<<<< HEAD
        <div class="d-flex"> 
        <div class="card col-sm-6">
            
            <div class="card-body" >
                <form>
                    
                    <div class="form-group">
                    <label>Dni</label>
                    <input type="text" name="txtDni" class="form-control">  
                    </div> 
                    
                    <div class="form-group">
                    <label>Nombres</label>
                    <input type="text" name="txtNombres" class="form-control">
                    </div>
                    
                    <div class="form-group">
                    <label>Telefono</label>
                    <input type="text" name="txtTelefono" class="form-control">
                    </div>
                    
                    <div class="form-group">
                    <label>Estado</label>
                    <input type="text" name="txtEstado" class="form-control">
                    </div>
                    
                    <div class="form-group">
                    <label>Usuario</label>
                    <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    
                </form>
                
                
            </div>
            
        </div>
            <div class="col-sm-8">
            
            <table class="table table-hover">
                <thead>
                    <tr>
                         <th>DNI</th>
                         <th>NOMBRES</th>
                         <th>TELEFONO</th>
                         <th>TELEFONO</th>
                         <th>USER</th>
                         <th>ACCIONES</th>
                    </tr>
                    
                </thead>
                <tbody>
                    <c:forEach var="em" items="${empleados}">
                    <tr>
                        <td>${em.getId()}</td>
                        <td>${em.getDni()}</td>
                        <td>${em.getNom()}</td>
                        <td>${em.getTel()}</td>
                        <td>${em.getEstado()}</td>
                        <td>${em.getUser()}</td>
                        <td>
                            <a>Editar</a>
                            <a>delete</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
                
                
            </table> 
            
        </div>
     </div>       
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
=======
        <h1>Hello World! EMPLEADO</h1>
>>>>>>> 3b607675c989896605d3803038b11512963dff0d
    </body>
</html>
