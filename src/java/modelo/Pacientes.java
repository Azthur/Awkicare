package modelo;

/**
 *
 * @author rdro2
 */
public class Pacientes {
    private int idpacientes;
    private int idusuarios;
    private String nombres;
    private String apellidos;
    private int dni;
    private String genero;
    private String direccion;
    private int ubigeo;
    private String correo;
    private String telefono;
    private String nacimiento;
    private int estado;

    public Pacientes(int idpacientes, int idusuarios, String nombres, String apellidos, int dni, String genero, String direccion, int ubigeo, String correo, String telefono, String nacimiento, int estado) {
        this.idpacientes = idpacientes;
        this.idusuarios = idusuarios;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;
        this.genero = genero;
        this.direccion = direccion;
        this.ubigeo = ubigeo;
        this.correo = correo;
        this.telefono = telefono;
        this.nacimiento = nacimiento;
        this.estado = estado;
    }

    public Pacientes() {
    }

    public int getIdpacientes() {
        return idpacientes;
    }

    public void setIdpacientes(int idpacientes) {
        this.idpacientes = idpacientes;
    }

    public int getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(int idusuarios) {
        this.idusuarios = idusuarios;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getUbigeo() {
        return ubigeo;
    }

    public void setUbigeo(int ubigeo) {
        this.ubigeo = ubigeo;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(String nacimiento) {
        this.nacimiento = nacimiento;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
}
