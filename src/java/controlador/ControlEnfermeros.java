package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Enfermeros;
import modeloDAO.EnfermerosDAO;

@WebServlet(name = "ControlEnfermeros", urlPatterns = {"/ControlEnfermeros"})

public class ControlEnfermeros extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pagina = "";
        String valor = request.getParameter("accion");
        Enfermeros e;
        EnfermerosDAO ed = new EnfermerosDAO();
        ArrayList<Enfermeros>lista;
        
        if(valor.equalsIgnoreCase("agregarEnfermero")){
            pagina = "Enfermeros/agregar.jsp";
        }
        else if(valor.equalsIgnoreCase("agregarRegistro")){
            int idenfermeros = Integer.parseInt(request.getParameter("idenfermeros"));
            int idusuarios = Integer.parseInt(request.getParameter("idusuarios"));
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            int dni = Integer.parseInt(request.getParameter("dni"));
            String genero = request.getParameter("genero");
            String direccion = request.getParameter("direccion");
            String ubigeo = request.getParameter("ubigeo");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String nacimiento = request.getParameter("nacimiento");
            String codigo_cep = request.getParameter("codigo_cep");
            int estado = Integer.parseInt(request.getParameter("estado"));
            e = new Enfermeros(idenfermeros, idusuarios, nombres, apellidos, dni, genero, direccion, ubigeo, correo, telefono, nacimiento, codigo_cep, estado);
            ed.agregar(e);
            lista=ed.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Enfermeros/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("listarEnfermeros")){
            lista=ed.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Enfermeros/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("eliminar")){
            int idenfermeros = Integer.parseInt(request.getParameter("idenfermeros"));
            ed.eliminar(idenfermeros);
            lista=ed.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Enfermeros/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("modificar")){
            int idenfermeros = Integer.parseInt(request.getParameter("idenfermeros"));
            e = new Enfermeros();
            e = ed.listarUno(idenfermeros);
            request.setAttribute("enf", e);
            pagina = "Enfermeros/editar.jsp";
        }
        else if(valor.equalsIgnoreCase("modificarEnfermero")){
            int idenfermeros = Integer.parseInt(request.getParameter("idenfermeros"));
            int idusuarios = Integer.parseInt(request.getParameter("idusuarios"));
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            int dni = Integer.parseInt(request.getParameter("dni"));
            String genero = request.getParameter("genero");
            String direccion = request.getParameter("direccion");
            String ubigeo = request.getParameter("ubigeo");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String nacimiento = request.getParameter("nacimiento");
            String codigo_cep = request.getParameter("codigo_cep");
            int estado = Integer.parseInt(request.getParameter("estado"));
            e = new Enfermeros(idenfermeros, idusuarios, nombres, apellidos, dni, genero, direccion, ubigeo, correo, telefono, nacimiento, codigo_cep, estado);
            ed.editar(e);
            lista=ed.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Enfermeros/listar.jsp";
        }
                
        RequestDispatcher rd=request.getRequestDispatcher(pagina);
        rd.forward(request, response);
        
        
    }

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
