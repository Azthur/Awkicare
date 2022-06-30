package misInterfaces;

import java.util.ArrayList;
import modelo.Comisiones;

public interface ComisionesInterface {
    public boolean agregar(Comisiones co);
    public boolean eliminar(int idcomisiones);
    public boolean editar(Comisiones co);
    public ArrayList<Comisiones> listarTodos();
    public Comisiones listarUno(int idcomisiones);
}
