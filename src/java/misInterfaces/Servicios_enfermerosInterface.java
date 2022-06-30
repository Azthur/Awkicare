package misInterfaces;

import java.util.ArrayList;
import modelo.Servicios_enfermeros;

public interface Servicios_enfermerosInterface {
    public boolean agregar(Servicios_enfermerosInterface se);
    public boolean eliminar(int idservicios_enfermeros);
    public boolean editar(Servicios_enfermerosInterface se);
    public ArrayList<Servicios_enfermerosInterface> listarTodos();
    public Servicios_enfermerosInterface listarUno (int idservicios_enfermeros);
}
