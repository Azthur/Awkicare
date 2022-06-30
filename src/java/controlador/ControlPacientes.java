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

import modelo.Pacientes;
import modeloDAO.PacientesDAO;

@WebServlet(name = "ControlPacientes", urlPatterns = {"/ControlPacientes"})

public class ControlPacientes extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pagina = "";
        String valor = request.getParameter("accion");
        Pacientes pa;
        PacientesDAO pac = new PacientesDAO();
        ArrayList<Pacientes>lista;
        
        if(valor.equalsIgnoreCase("agregarPaciente")){
            pagina = "Pacientes/agregar.jsp";
        }
        else if(valor.equalsIgnoreCase("agregarRegistro")){
            
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            int dni = Integer.parseInt(request.getParameter("dni"));
            String genero = request.getParameter("genero");
            String direccion = request.getParameter("direccion");
            String ubigeo = request.getParameter("ubigeo");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String nacimiento = request.getParameter("nacimiento");
            
            pa = new Pacientes(nombres, apellidos, dni, genero, direccion, ubigeo, correo, telefono, nacimiento);
            pac.agregar(pa);
            lista=pac.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Pacientes/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("listarPacientes")){
            lista=pac.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Pacientes/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("eliminar")){
            int idpacientes = Integer.parseInt(request.getParameter("idpacientes"));
            pac.eliminar(idpacientes);
            lista=pac.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Pacientes/listar.jsp";
        }
        else if(valor.equalsIgnoreCase("modificar")){
            int idpacientes = Integer.parseInt(request.getParameter("idpacientes"));
            pa = new Pacientes();
            pa = pac.listarUno(idpacientes);
            request.setAttribute("paci", pa);
            pagina = "Pacientes/editar.jsp";
        }
        else if(valor.equalsIgnoreCase("modificarPaciente")){
            int idpacientes = Integer.parseInt(request.getParameter("idpacientes"));
            String direccion = request.getParameter("direccion");
            String ubigeo = request.getParameter("ubigeo");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            
            pa = new Pacientes(idpacientes, direccion, ubigeo, correo, telefono);
            pac.editar(pa);
            lista=pac.listarTodos();
            request.setAttribute("lis", lista);
            pagina = "Pacientes/listar.jsp";
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
