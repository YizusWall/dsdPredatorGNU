package appideaswebupc.modelo;

import java.util.Date;

public class Reunion {

	private int idReunion;
	private String observacion;
	private String calificacion;
	private String fecha;
	
	private Idea obIdea;
	private Usuario obUsuario;
	private Usuario obAsesor;
	
	public Reunion() {
		super();
	}

	public Reunion(int idReunion, String observacion, String calificacion,
			String fecha, Idea obIdea, Usuario obUsuario) {
		super();
		this.idReunion = idReunion;
		this.observacion = observacion;
		this.calificacion = calificacion;
		this.fecha = fecha;
		this.obIdea = obIdea;
		this.obUsuario = obUsuario;
		//this.obUsuario = obAsesor;
	}

	public int getIdReunion() {
		return idReunion;
	}

	public void setIdReunion(int idReunion) {
		this.idReunion = idReunion;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public String getCalificacion() {
		return calificacion;
	}

	public void setCalificacion(String calificacion) {
		this.calificacion = calificacion;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public Idea getObIdea() {
		return obIdea;
	}

	public void setObIdea(Idea obIdea) {
		this.obIdea = obIdea;
	}

	public Usuario getObUsuario() {
		return obUsuario;
	}

	public void setObUsuario(Usuario obUsuario) {
		this.obUsuario = obUsuario;
	}
	
	public Usuario getObAsesor() {
		return obAsesor;
	}

	public void setObAsesor(Usuario obAsesor) {
		this.obAsesor = obAsesor;
	}
	
	
}
