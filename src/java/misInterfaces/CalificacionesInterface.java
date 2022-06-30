package misInterfaces;

import java.util.ArrayList;
import modelo.Calificaciones;

public interface CalificacionesInterface {
    public boolean agregar(Calificaciones ca);
    public boolean eliminar(int idcalificaciones);
    public boolean editar(Calificaciones ca);
    public ArrayList<Calificaciones> listarTodos();
    public Calificaciones listarUno(int idcalificaciones);
}
