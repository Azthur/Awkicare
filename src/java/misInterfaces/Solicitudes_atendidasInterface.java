package misInterfaces;

import java.util.ArrayList;
import modelo.Solicitudes_atendidas;


public interface Solicitudes_atendidasInterface {
    public boolean agregar(Solicitudes_atendidas e);
    public boolean eliminar(String idsolicitudes_atendidas);
    public boolean editar(Solicitudes_atendidas e);
    public ArrayList<Solicitudes_atendidas> listarTodos();
    public Solicitudes_atendidas listarUno (int idsolicitudes_atendidas);
}
