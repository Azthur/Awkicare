package misInterfaces;

import java.util.ArrayList;
//import modelo.Servicios_enfermeros;

public interface Servicios_enfermeros {
    public boolean agregar(Servicios_enfermeros se);
    public boolean eliminar(int idservicios_enfermeros);
    public boolean editar(Servicios_enfermeros se);
    public ArrayList<Servicios_enfermeros> listarTodos();
    public Servicios_enfermeros listarUno (int idservicios_enfermeros);
}
