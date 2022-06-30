package modelo;

/**
 *
 * @author rdro2
 */
public class Comisiones {
    private int idcomisiones;
    private int idpagos;
    private String fecha_cobro;
    private double monto_comision;
    private double monto_utilidad;
    private int idenfermeros;
    private int idusuarios;
    private int estado;

    public Comisiones(int idcomisiones, int idpagos, String fecha_cobro, double monto_comision, double monto_utilidad, int idenfermeros, int idusuarios, int estado) {
        this.idcomisiones = idcomisiones;
        this.idpagos = idpagos;
        this.fecha_cobro = fecha_cobro;
        this.monto_comision = monto_comision;
        this.monto_utilidad = monto_utilidad;
        this.idenfermeros = idenfermeros;
        this.idusuarios = idusuarios;
        this.estado = estado;
    }

    public Comisiones() {
    }

    public int getIdcomisiones() {
        return idcomisiones;
    }

    public void setIdcomisiones(int idcomisiones) {
        this.idcomisiones = idcomisiones;
    }

    public int getIdpagos() {
        return idpagos;
    }

    public void setIdpagos(int idpagos) {
        this.idpagos = idpagos;
    }

    public String getFecha_cobro() {
        return fecha_cobro;
    }

    public void setFecha_cobro(String fecha_cobro) {
        this.fecha_cobro = fecha_cobro;
    }

    public double getMonto_comision() {
        return monto_comision;
    }

    public void setMonto_comision(double monto_comision) {
        this.monto_comision = monto_comision;
    }

    public double getMonto_utilidad() {
        return monto_utilidad;
    }

    public void setMonto_utilidad(double monto_utilidad) {
        this.monto_utilidad = monto_utilidad;
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

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
}
