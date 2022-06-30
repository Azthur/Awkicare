package misInterfaces;

import java.util.ArrayList;
import modelo.Enfermeros;

public interface EnfermerosInterface{
    public boolean agregar(Enfermeros e);
    public boolean eliminar(int idenfermeros);
    public boolean editar(Enfermeros e);
    public ArrayList<Enfermeros> listarTodos();
    public Enfermeros listarUno(int idenfermeros);
}