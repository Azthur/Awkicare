
package modeloDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import misInterfaces.Servicios_enfermerosInterface;
import modelo.Servicios_enfermeros;

public class Servicios_enfermerosDAO implements Servicios_enfermerosInterface{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Servicios_enfermeros se;
    ArrayList<Servicios_enfermeros>lista = new ArrayList<>();

    @Override
    public boolean agregar(Servicios_enfermerosInterface se) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int idservicios_enfermeros) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editar(Servicios_enfermerosInterface se) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Servicios_enfermerosInterface> listarTodos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Servicios_enfermerosInterface listarUno(int idservicios_enfermeros) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
