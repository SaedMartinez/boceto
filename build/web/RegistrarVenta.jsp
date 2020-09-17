<%-- 
    Document   : RegistrarVenta
    Created on : 17/09/2020, 02:19:00 PM
    Author     : Saed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <title>VENTA</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-4"> 
                <div class="card">
                    <div class="card-body"> 
                        <div class="form-group">
                            <label>Datos de Cliente </label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="codigocliente" class="form-control" placeholder="Codigo">
                                <input type="submit" name="accion" value="Buscar" class="btn-outline-info">
                            </div>
                            <div class="col-sm-6">
                                <input type=" text" name="nombrescliente" class="form-control">
                            </div>
                        </div>
                        <div class="form-group"></div>
                        <div class="form-group"></div>
                        <div class="form-group"></div>
                    </div>
                </div>
            </div>
            <div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
