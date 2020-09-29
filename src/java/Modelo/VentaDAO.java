 package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class VentaDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps; 
    ResultSet rs;  
    int dato;
    String cnumero;
    int r;
     
     // METODOS SERIE ---------------------------
    public String NumeroSerie(int inc){
        this.dato=inc+1;
        if((this.dato>=10000)&(this.dato<=100000)){
            cnumero=""+dato;
        }
        if((this.dato>=1000)&(this.dato<=10000)){
            cnumero="0"+dato;
        }if((this.dato>=100)&(this.dato<=1000)){
            cnumero="00"+dato;
        }if((this.dato>=10)&(this.dato<=100)){
            cnumero="000"+dato;
        }
        if((this.dato<10)){
           cnumero="0000"+dato;
        }
        return cnumero;
    }
    
    
    public String GenerarSerie(){
        String numeroserie="";
        String sql="select max(NumeroSerie) from ventas";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
               numeroserie=rs.getString(1);
            }
        } catch (Exception e) {
        }
        return  numeroserie;
    }
    
    //FIN METODOS SERIE ---------------------------
    
    public String IdVentas(){
        String idventas="";
        String sql="select max(IdVentas) from ventas";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
               idventas=rs.getString(1);
            }
        } catch (Exception e) {
        }
        return idventas;
    }
    
    public int guardarVenta(Venta ve){
        String sql="insert into ventas (IdCliente, IdEmpleado, NumeroSerie, FechaVentas, Monto, Estado)values(?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, ve.getIdcliente());
            ps.setInt(2, ve.getIdempleado());
            ps.setString(3, ve.getNumserie());
            ps.setString(4, ve.getFecha());
            ps.setDouble(5, ve.getPrecio());
            ps.setString(6, ve.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public int guardarDetalleVentas(Venta venta){
        String sql="insert into detalle_ventas (IdVentas, IdProducto, Cantidad, PrecioVenta) values(?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, venta.getId());
            ps.setInt(2, venta.getIdproducto());
            ps.setInt(3, venta.getCantidad());
            ps.setDouble(4, venta.getPrecio());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
}
