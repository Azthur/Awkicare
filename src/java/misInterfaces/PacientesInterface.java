package misInterfaces;

import java.util.ArrayList;
import modelo.Pacientes;

public interface PacientesInterface {
    public boolean agregar(Pacientes pa);
    public boolean eliminar(int idpacientes);
    public boolean editar(Pacientes pa);
    public ArrayList<Pacientes> listarTodos();
    public Pacientes listarUno(int idpacientes);
}
