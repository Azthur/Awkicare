
package modelo;

public class solicitudes_atendidas {
    private int idsolicitudes_atendidas;
    private int idenfermeros;
    private String fecha_atencion;
    private int estado;
    private int idsolicitudes;
    private int idservicios;
    private int idpacientes;

    public solicitudes_atendidas(int idsolicitudes_atendidas, int idenfermeros, String fecha_atencion, int estado, int idsolicitudes, int idservicios, int idpacientes) {
        this.idsolicitudes_atendidas = idsolicitudes_atendidas;
        this.idenfermeros = idenfermeros;
        this.fecha_atencion = fecha_atencion;
        this.estado = estado;
        this.idsolicitudes = idsolicitudes;
        this.idservicios = idservicios;
        this.idpacientes = idpacientes;
    }

    public solicitudes_atendidas() {
    }

    public int getIdsolicitudes_atendidas() {
        return idsolicitudes_atendidas;
    }

    public void setIdsolicitudes_atendidas(int idsolicitudes_atendidas) {
        this.idsolicitudes_atendidas = idsolicitudes_atendidas;
    }

    public int getIdenfermeros() {
        return idenfermeros;
    }

    public void setIdenfermeros(int idenfermeros) {
        this.idenfermeros = idenfermeros;
    }

    public String getFecha_atencion() {
        return fecha_atencion;
    }

    public void setFecha_atencion(String fecha_atencion) {
        this.fecha_atencion = fecha_atencion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getIdsolicitudes() {
        return idsolicitudes;
    }

    public void setIdsolicitudes(int idsolicitudes) {
        this.idsolicitudes = idsolicitudes;
    }

    public int getIdservicios() {
        return idservicios;
    }

    public void setIdservicios(int idservicios) {
        this.idservicios = idservicios;
    }

    public int getIdpacientes() {
        return idpacientes;
    }

    public void setIdpacientes(int idpacientes) {
        this.idpacientes = idpacientes;
    }
    
    
}
