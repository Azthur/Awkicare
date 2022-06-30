package misInterfaces;

import java.util.ArrayList;
import modelo.Servicios;

public interface ServiciosInterface {
    public boolean agregar(Servicios s);
    public boolean eliminar(int idservicios);
    public boolean editar(Servicios s);
    public ArrayList<Servicios> listarTodos();
    public Servicios listarUno (int idservicios);
}
