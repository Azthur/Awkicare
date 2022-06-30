package misInterfaces;

import java.util.ArrayList;
import modelo.Pagos;

public interface PagosInterface {
    public boolean agregar(Pagos pg);
    public boolean eliminar(int idpagos);
    public boolean editar(Pagos pg);
    public ArrayList<Pagos> listarTodos();
    public Pagos listarUno (int idpagos);
}
