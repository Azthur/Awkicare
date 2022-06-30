package modeloDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import misInterfaces.EnfermerosInterface;
import modelo.Enfermeros;

public class EnfermerosDAO implements EnfermerosInterface{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Enfermeros e;
    ArrayList<Enfermeros>lista = new ArrayList<>();

    @Override
    public boolean agregar(Enfermeros e) {        
        try {
            String sql = "insert into enfermeros values(null,'1',?,?,?,?,?,?,?,?,?,?,'1')";
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            
            ps.setString(1, e.getNombres());
            ps.setString(2, e.getApellidos());
            ps.setInt(3, e.getDni());
            ps.setString(4, e.getGenero());
            ps.setString(5, e.getDireccion());
            ps.setString(6, e.getUbigeo());
            ps.setString(7, e.getCorreo());
            ps.setString(8, e.getTelefono());
            ps.setString(9, e.getNacimiento());
            ps.setString(10, e.getCodigo_cep());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(EnfermerosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public boolean eliminar(int idenfermeros) {
        try {
            String sql = "delete from enfermeros where idenfermeros="+idenfermeros;
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(EnfermerosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public boolean editar(Enfermeros e) {
        try {
            String sql = "update enfermeros set direccion=?, ubigeo=?, correo=?, telefono=? where idenfermeros="+e.getIdenfermeros();
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, e.getDireccion());
            ps.setString(2, e.getUbigeo());
            ps.setString(3, e.getCorreo());
            ps.setString(4, e.getTelefono());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(EnfermerosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return false;
    }

    @Override
    public ArrayList<Enfermeros> listarTodos() {
        try {
            String sql = "select * from enfermeros";
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                e = new Enfermeros();
                e.setIdenfermeros(rs.getInt("idenfermeros"));
                e.setIdusuarios(rs.getInt("idusuarios"));
                e.setNombres(rs.getString("nombres"));
                e.setApellidos(rs.getString("apellidos"));
                e.setDni(rs.getInt("dni"));
                e.setGenero(rs.getString("genero"));
                e.setDireccion(rs.getString("direccion"));
                e.setUbigeo(rs.getString("ubigeo"));
                e.setCorreo(rs.getString("correo"));
                e.setTelefono(rs.getString("telefono"));
                e.setNacimiento(rs.getString("nacimiento"));
                e.setCodigo_cep(rs.getString("codigo_cep"));
                e.setEstado(rs.getInt("estado"));
                lista.add(e);              
            }
        } catch (SQLException ex) {
            Logger.getLogger(EnfermerosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return lista;
    }
    
    @Override
    public Enfermeros listarUno(int idenfermeros) {
        try {
            String sql = "select * from enfermeros where idenfermeros="+idenfermeros;
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                e = new Enfermeros();
                e.setIdenfermeros(rs.getInt("idenfermeros"));
                e.setIdusuarios(rs.getInt("idusuarios"));
                e.setNombres(rs.getString("nombres"));
                e.setApellidos(rs.getString("apellidos"));
                e.setDni(rs.getInt("dni"));
                e.setGenero(rs.getString("genero"));
                e.setDireccion(rs.getString("direccion"));
                e.setUbigeo(rs.getString("ubigeo"));
                e.setCorreo(rs.getString("correo"));
                e.setTelefono(rs.getString("telefono"));
                e.setNacimiento(rs.getString("nacimiento"));
                e.setCodigo_cep(rs.getString("codigo_cep"));
                e.setEstado(rs.getInt("estado"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EnfermerosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return e;
    }
}
