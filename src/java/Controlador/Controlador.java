package Controlador;

<<<<<<< HEAD
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
=======
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Venta;
import Modelo.VentaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
>>>>>>> 3b607675c989896605d3803038b11512963dff0d
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    
<<<<<<< HEAD
   Empleado em= new Empleado();
   EmpleadoDAO edao=new EmpleadoDAO();
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu=request.getParameter("menu");
        String accion=request.getParameter("accion");
        if(menu.equals("Principal")){
        request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if(menu.equals("Empleado")){    
        
        switch (accion){
            case "listar":
                List lista=edao.listar();
                request.setAttribute("empleados", lista);
                break;
            case "Agregar":
                break;
            case "Editar":
                break;
            case "Delete":
                break;
            default:
                throw new AssertionError();
           }
          request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        
        if(menu.equals("Cliente")){
        request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        
        }
        if(menu.equals("Producto")){
        request.getRequestDispatcher("Producto.jsp").forward(request, response);
        
        }
        
        if(menu.equals("NuevaVenta")){
        request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        
        }
         
 
    }
=======
    //Instancias Modelo
    Producto p=new Producto();
    ProductoDAO pdao=new ProductoDAO();

    Venta v=new Venta();
    List<Venta>lista= new ArrayList<>();
    int item;
    int cod;
    String descripcion;
    double precio;
    int cant;
    double subtotal;
    double total;
    String numeroserie;
    VentaDAO vdao=new VentaDAO();
    VentaDAO vdao2=new VentaDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Empleado")) {
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        if (menu.equals("Clientes")) {
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        if (menu.equals("Producto")) {
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if (menu.equals("RegistrarVenta")) {
            switch(accion){
                case "BuscarProducto":
                    int id=Integer.parseInt(request.getParameter("codigoproducto"));
                    p=pdao.listarId(id);
                    request.setAttribute("producto", p);
                    request.setAttribute("lista", lista);
                    request.setAttribute("total", total);
                    break;
                case "AgregarProducto":  
                    total=0.0;
                    item=item+1;
                    cod=p.getId();
                    descripcion=request.getParameter("nombreproducto");
                    precio=Double.parseDouble(request.getParameter("precio"));
                    cant=Integer.parseInt(request.getParameter("cant"));
                    subtotal=precio*cant;
                    
                    v=new Venta();
                    v.setItem(item);
                    v.setIdproducto(cod);
                    v.setDescripcionP(descripcion);
                    v.setPrecio(precio);
                    v.setCantidad(cant);
                    v.setSubtotal(subtotal);
                    lista.add(v);
                    for (int i = 0; i < lista.size(); i++) {
                        total=total+lista.get(i).getSubtotal();
                    }
                    request.setAttribute("total", total);
                    request.setAttribute("lista", lista);
                    break;
                case "GenerarVenta":
                    //Guardar Venta --------------------------------(FALTA AGREGAR ID CLIENTE)
                    v.setIdempleado(2);
                    v.setNumserie(numeroserie);
                    v.setFecha("2019-09-09");
                    v.setMonto(total);
                    v.setEstado("1");
                    vdao.guardarVenta(v);
                    
                    //Guardar Detalle venta --------------------------------
                    int idv=Integer.parseInt(vdao.IdVentas()); 
                    for (int i = 0; i < lista.size(); i++) {
                        v=new Venta();
                        v.setId(idv);
                        v.setIdproducto(lista.get(i).getIdproducto());
                        v.setCantidad(lista.get(i).getCantidad());
                        v.setPrecio(lista.get(i).getPrecio());
                        vdao.guardarDetalleVentas(v);
                    }
                    
                    //Actualizar Stock --------------------------------
                    for (int i = 0; i < lista.size(); i++) {
                        Producto pr=new Producto();
                        int cantidad=lista.get(i).getCantidad();
                        int idproducto=lista.get(i).getIdproducto();
                        ProductoDAO aO=new ProductoDAO();
                        pr=aO.buscar(idproducto);
                        int sac=pr.getStock()-cantidad;
                        aO.actualizarstock(idproducto, sac);
                    }
                    break;
                default:
                     numeroserie=vdao.GenerarSerie();
                     if(numeroserie==null){
                        numeroserie="00001";
                        request.setAttribute("nserie", numeroserie);
                     }else{
                        int incrementar=Integer.parseInt(numeroserie);
                        numeroserie=vdao2.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                     }
                     
                    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
}
>>>>>>> 3b607675c989896605d3803038b11512963dff0d

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
