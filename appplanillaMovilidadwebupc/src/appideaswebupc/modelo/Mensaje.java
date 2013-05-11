package appideaswebupc.modelo;

import java.util.Date;

public class Mensaje {
	private int idMensaje;
	private String mensaje;
	private Date fecha;
	

	private Idea obIdea;
	private Invitado obInvitado;
	
	public Mensaje() {
		super();
	}

	public Mensaje(int idMensaje, String mensaje, Date fecha, Idea obIdea,
			Invitado obInvitado) {
		super();
		this.idMensaje = idMensaje;
		this.mensaje = mensaje;
		this.fecha = fecha;
		this.obIdea = obIdea;
		this.obInvitado = obInvitado;
	}

	public int getIdMensaje() {
		return idMensaje;
	}

	public void setIdMensaje(int idMensaje) {
		this.idMensaje = idMensaje;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Idea getObIdea() {
		return obIdea;
	}

	public void setObIdea(Idea obIdea) {
		this.obIdea = obIdea;
	}

	public Invitado getObInvitado() {
		return obInvitado;
	}

	public void setObInvitado(Invitado obInvitado) {
		this.obInvitado = obInvitado;
	}

	
}
