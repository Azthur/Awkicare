package modelo;

/**
 *
 * @author rdro2
 */
public class Solicitudes {
    private int idsolicitudes;
    private String numero_solicitud;
    private String fecha_solicitud;
    private String observacion;
    private int estado;
    private int idpacientes;
    private int idenfermeros;
    private int idservicios;
    private int servicios_idservicios;
    private int idservicios_enfermeros;
    private String fecha_registro;

    public Solicitudes(int idsolicitudes, String numero_solicitud, String fecha_solicitud, String observacion, int estado, int idpacientes, int idenfermeros, int idservicios, int servicios_idservicios, int idservicios_enfermeros, String fecha_registro) {
        this.idsolicitudes = idsolicitudes;
        this.numero_solicitud = numero_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.observacion = observacion;
        this.estado = estado;
        this.idpacientes = idpacientes;
        this.idenfermeros = idenfermeros;
        this.idservicios = idservicios;
        this.servicios_idservicios = servicios_idservicios;
        this.idservicios_enfermeros = idservicios_enfermeros;
        this.fecha_registro = fecha_registro;
    }

    public Solicitudes() {
    }

    public int getIdsolicitudes() {
        return idsolicitudes;
    }

    public void setIdsolicitudes(int idsolicitudes) {
        this.idsolicitudes = idsolicitudes;
    }

    public String getNumero_solicitud() {
        return numero_solicitud;
    }

    public void setNumero_solicitud(String numero_solicitud) {
        this.numero_solicitud = numero_solicitud;
    }

    public String getFecha_solicitud() {
        return fecha_solicitud;
    }

    public void setFecha_solicitud(String fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getIdpacientes() {
        return idpacientes;
    }

    public void setIdpacientes(int idpacientes) {
        this.idpacientes = idpacientes;
    }

    public int getIdenfermeros() {
        return idenfermeros;
    }

    public void setIdenfermeros(int idenfermeros) {
        this.idenfermeros = idenfermeros;
    }

    public int getIdservicios() {
        return idservicios;
    }

    public void setIdservicios(int idservicios) {
        this.idservicios = idservicios;
    }

    public int getServicios_idservicios() {
        return servicios_idservicios;
    }

    public void setServicios_idservicios(int servicios_idservicios) {
        this.servicios_idservicios = servicios_idservicios;
    }

    public int getIdservicios_enfermeros() {
        return idservicios_enfermeros;
    }

    public void setIdservicios_enfermeros(int idservicios_enfermeros) {
        this.idservicios_enfermeros = idservicios_enfermeros;
    }

    public String getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(String fecha_registro) {
        this.fecha_registro = fecha_registro;
    }
    
}
