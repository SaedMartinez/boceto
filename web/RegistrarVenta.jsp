<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <title>VENTA</title>
    </head>
    <body>
<<<<<<< HEAD
        <h1>Hello registrar venta!</h1>
=======
        <div class="d-flex">
            <div class="col-sm-4"> 
                <div class="card">
                    <form action="Controlador?menu=RegistrarVenta" method="post">
                        <div class="card-body"> 
                            <div class="form-group">
                                <label>Datos de Cliente </label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" class="form-control" placeholder="Codigo">
                                    <input type="submit" name="accion" value="Buscar" class=" btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type=" text" name="nombrescliente" class="form-control" placeholder="Datos cliente">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Datos de Producto </label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                    <button type="submit" name="accion" value="BuscarProducto" class=" btn btn-outline-info">Buscar</button>
                                </div>
                                <div class="col-sm-6">
                                    <input type=" text" name="nombreproducto" value="${producto.getNom()}" class="form-control" placeholder="Datos producto">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type=" text" name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="Precio">
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="cant" value="1" class="form-control" >
                                </div>
                                <div class="col-sm-3">
                                    <input type=" text" name="stock" value="${producto.getStock()}" class="form-control" placeholder="Stock">
                                </div>
                            </div>
                            <!--BOTON AGREGAR  -->
                            <div class="form-group">
                                <button type="submit" name="accion" value="AgregarProducto" class="btn btn-outline-info">Agregar Producto</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card"> 
                    <div class="card-body"> 
                        <div class="d-flex col-sm-5 ml-auto">
                            <label>Serie</label>
                            <input type=" text" name="NroSerie" value="${nserie}"class="form-control">
                        </div>
                        <br>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>SubTotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr>
                                        <td>${list.getItem()}</td>
                                        <td>${list.getIdproducto()}</td>
                                        <td>${list.getDescripcionP()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubtotal()}</td>
                                        <td class="d-flex">
                                            <a href="#" class="btn btn-warning">Editar</a> 
                                            <a href="#" class="btn btn-danger" style="margin-left: 10px">X</a> 
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-8">
                            <a href="Controlador?menu=RegistrarVenta&accion=GenerarVenta" class="btn btn-outline-success">Generar Venta</a>
                            <input type=" submit" name="accion" value="Cancelar" class="btn btn-outline-danger">
                        </div>
                        <div class="col-sm-3 ml-auto">
                            <input type=" text" name="txtTotal" value="${total}" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
>>>>>>> 3b607675c989896605d3803038b11512963dff0d
    </body>
</html>
