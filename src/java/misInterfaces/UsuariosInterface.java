package misInterfaces;

import java.util.ArrayList;
import modelo.Usuarios;

public interface UsuariosInterface {
    public boolean agregar(Usuarios u);
    public boolean eliminar(int idusuarios);
    public boolean editar(Usuarios u);
    public ArrayList<Usuarios> listarTodos();
    public Usuarios listarUno (int idusuarios);
}
