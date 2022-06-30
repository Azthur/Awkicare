package modelo;

/**
 *
 * @author rdro2
 */
public class Calificaciones {
    private int idcalificaciones;
    private int idusuarios;
    private int idsolicitudes_atendidas;
    private int calificacion_enfermero;
    private int calificacion_servicio;
    private String comentario;

    public Calificaciones(int idcalificaciones, int idusuarios, int idsolicitudes_atendidas, int calificacion_enfermero, int calificacion_servicio, String comentario) {
        this.idcalificaciones = idcalificaciones;
        this.idusuarios = idusuarios;
        this.idsolicitudes_atendidas = idsolicitudes_atendidas;
        this.calificacion_enfermero = calificacion_enfermero;
        this.calificacion_servicio = calificacion_servicio;
        this.comentario = comentario;
    }

    public Calificaciones() {
    }

    public int getIdcalificaciones() {
        return idcalificaciones;
    }

    public void setIdcalificaciones(int idcalificaciones) {
        this.idcalificaciones = idcalificaciones;
    }

    public int getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(int idusuarios) {
        this.idusuarios = idusuarios;
    }

    public int getIdsolicitudes_atendidas() {
        return idsolicitudes_atendidas;
    }

    public void setIdsolicitudes_atendidas(int idsolicitudes_atendidas) {
        this.idsolicitudes_atendidas = idsolicitudes_atendidas;
    }

    public int getCalificacion_enfermero() {
        return calificacion_enfermero;
    }

    public void setCalificacion_enfermero(int calificacion_enfermero) {
        this.calificacion_enfermero = calificacion_enfermero;
    }

    public int getCalificacion_servicio() {
        return calificacion_servicio;
    }

    public void setCalificacion_servicio(int calificacion_servicio) {
        this.calificacion_servicio = calificacion_servicio;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
}
