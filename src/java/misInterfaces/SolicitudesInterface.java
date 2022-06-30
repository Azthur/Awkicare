
package misInterfaces;

import java.util.ArrayList;
import modelo.Solicitudes;

public interface SolicitudesInterface {
    public boolean agregar(Solicitudes so);
    public boolean eliminar(int idsolicitudes);
    public boolean editar(Solicitudes so);
    public ArrayList<Solicitudes> listarTodos();
    public Solicitudes listarUno (int idsolicitudes);
}
