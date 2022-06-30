package modelo;

/**
 *
 * @author rdro2
 */
public class Servicios_enfermeros {
    private int idservicios_enfermeros;
    private int idenfermeros;
    private int idusuarios;
    private int servicios_idservicios;
    private int servicios_idusuarios;
    private double monto;
    private int estado;

    public Servicios_enfermeros(int idservicios_enfermeros, int idenfermeros, int idusuarios, int servicios_idservicios, int servicios_idusuarios, double monto, int estado) {
        this.idservicios_enfermeros = idservicios_enfermeros;
        this.idenfermeros = idenfermeros;
        this.idusuarios = idusuarios;
        this.servicios_idservicios = servicios_idservicios;
        this.servicios_idusuarios = servicios_idusuarios;
        this.monto = monto;
        this.estado = estado;
    }

    public Servicios_enfermeros() {
    }

    public int getIdservicios_enfermeros() {
        return idservicios_enfermeros;
    }

    public void setIdservicios_enfermeros(int idservicios_enfermeros) {
        this.idservicios_enfermeros = idservicios_enfermeros;
    }

    public int getIdenfermeros() {
        return idenfermeros;
    }

    public void setIdenfermeros(int idenfermeros) {
        this.idenfermeros = idenfermeros;
    }

    public int getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(int idusuarios) {
        this.idusuarios = idusuarios;
    }

    public int getServicios_idservicios() {
        return servicios_idservicios;
    }

    public void setServicios_idservicios(int servicios_idservicios) {
        this.servicios_idservicios = servicios_idservicios;
    }

    public int getServicios_idusuarios() {
        return servicios_idusuarios;
    }

    public void setServicios_idusuarios(int servicios_idusuarios) {
        this.servicios_idusuarios = servicios_idusuarios;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
}
