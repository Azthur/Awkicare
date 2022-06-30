package misInterfaces;

import java.util.ArrayList;
import modelo.Pagos;

public interface PagosInterface {
    public boolean agregar(Pagos e);
    public boolean eliminar(String idpagos);
    public boolean editar(Pagos e);
    public ArrayList<Pagos> listarTodos();
    public Pagos listarUno (int idpagos);
}
