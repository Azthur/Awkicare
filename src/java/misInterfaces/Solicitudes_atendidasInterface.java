package misInterfaces;

import java.util.ArrayList;
import modelo.Solicitudes_atendidas;


public interface Solicitudes_atendidasInterface {
    public boolean agregar(Solicitudes_atendidas sa);
    public boolean eliminar(int idsolicitudes_atendidas);
    public boolean editar(Solicitudes_atendidas sa);
    public ArrayList<Solicitudes_atendidas> listarTodos();
    public Solicitudes_atendidas listarUno (int idsolicitudes_atendidas);
}
