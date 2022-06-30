package modeloDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import misInterfaces.PacientesInterface;
import modelo.Pacientes;

public class PacientesDAO implements PacientesInterface{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Pacientes pa;
    ArrayList<Pacientes>lista = new ArrayList<>();

    @Override
    public boolean agregar(Pacientes pa) {        
        try {
            String sql = "insert into pacientes values(null,'1',?,?,?,?,?,?,?,?,?,'1')";
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            
            ps.setString(1, pa.getNombres());
            ps.setString(2, pa.getApellidos());
            ps.setInt(3, pa.getDni());
            ps.setString(4, pa.getGenero());
            ps.setString(5, pa.getDireccion());
            ps.setString(6, pa.getUbigeo());
            ps.setString(7, pa.getCorreo());
            ps.setString(8, pa.getTelefono());
            ps.setString(9, pa.getNacimiento());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PacientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public boolean eliminar(int idpacientes) {
        try {
            String sql = "delete from pacientes where idpacientes="+idpacientes;
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PacientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public boolean editar(Pacientes pa) {
        try {
            String sql = "update pacientes set direccion=?, ubigeo=?, correo=?, telefono=? where idpacientes="+pa.getIdpacientes();
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pa.getDireccion());
            ps.setString(2, pa.getUbigeo());
            ps.setString(3, pa.getCorreo());
            ps.setString(4, pa.getTelefono());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PacientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public ArrayList<Pacientes> listarTodos() {
        try {
            String sql = "select * from pacientes";
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                pa = new Pacientes();
                pa.setIdpacientes(rs.getInt("idpacientes"));
                pa.setIdusuarios(rs.getInt("idusuarios"));
                pa.setNombres(rs.getString("nombres"));
                pa.setApellidos(rs.getString("apellidos"));
                pa.setDni(rs.getInt("dni"));
                pa.setGenero(rs.getString("genero"));
                pa.setDireccion(rs.getString("direccion"));
                pa.setUbigeo(rs.getString("ubigeo"));
                pa.setCorreo(rs.getString("correo"));
                pa.setTelefono(rs.getString("telefono"));
                pa.setNacimiento(rs.getString("nacimiento"));
                pa.setEstado(rs.getInt("estado"));
                lista.add(pa);              
            }
        } catch (SQLException ex) {
            Logger.getLogger(PacientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return lista;
    }
    
    @Override
    public Pacientes listarUno(int idpacientes) {
        try {
            String sql = "select * from pacientes where idpacientes="+idpacientes;
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                pa = new Pacientes();
                pa.setIdpacientes(rs.getInt("idpacientes"));
                pa.setIdusuarios(rs.getInt("idusuarios"));
                pa.setNombres(rs.getString("nombres"));
                pa.setApellidos(rs.getString("apellidos"));
                pa.setDni(rs.getInt("dni"));
                pa.setGenero(rs.getString("genero"));
                pa.setDireccion(rs.getString("direccion"));
                pa.setUbigeo(rs.getString("ubigeo"));
                pa.setCorreo(rs.getString("correo"));
                pa.setTelefono(rs.getString("telefono"));
                pa.setNacimiento(rs.getString("nacimiento"));
                pa.setEstado(rs.getInt("estado"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PacientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return pa;
    }
}
