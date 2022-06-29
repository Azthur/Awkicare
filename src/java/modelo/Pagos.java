
package modelo;


public class Pagos {
    private int idpagos;
    private String fecha_pago;
    private int idsolicitudes;
    private double monto;
    private int estado;

    public Pagos(int idpagos, String fecha_pago, int idsolicitudes, double monto, int estado) {
        this.idpagos = idpagos;
        this.fecha_pago = fecha_pago;
        this.idsolicitudes = idsolicitudes;
        this.monto = monto;
        this.estado = estado;
    }

    public Pagos() {
    }

    public int getIdpagos() {
        return idpagos;
    }

    public void setIdpagos(int idpagos) {
        this.idpagos = idpagos;
    }

    public String getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(String fecha_pago) {
        this.fecha_pago = fecha_pago;
    }

    public int getIdsolicitudes() {
        return idsolicitudes;
    }

    public void setIdsolicitudes(int idsolicitudes) {
        this.idsolicitudes = idsolicitudes;
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
