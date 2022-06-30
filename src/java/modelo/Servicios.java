package modelo;

/**
 *
 * @author rdro2
 */
public class Servicios {
    private int idservicios;
    private int idusuarios;
    private String nombre_servicio;
    private String descripcion;
    private int estado;

    public Servicios(int idservicios, int idusuarios, String nombre_servicio, String descripcion, int estado) {
        this.idservicios = idservicios;
        this.idusuarios = idusuarios;
        this.nombre_servicio = nombre_servicio;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Servicios() {
    }

    public int getIdservicios() {
        return idservicios;
    }

    public void setIdservicios(int idservicios) {
        this.idservicios = idservicios;
    }

    public int getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(int idusuarios) {
        this.idusuarios = idusuarios;
    }

    public String getNombre_servicio() {
        return nombre_servicio;
    }

    public void setNombre_servicio(String nombre_servicio) {
        this.nombre_servicio = nombre_servicio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
}
