package appideaswebupc.modelo;

import java.util.Collection;
import java.util.Date;

public class Invitado extends Usuario {
	
	//private int idInvitado;
	private int votacion;
	private String fecha;
	
	private Collection<Mensaje> mensajes;
	private Collection<Idea> ideas;
	
	private Idea obIdea;
	
	
	public Invitado() {
		super();
	}


	//public Invitado(int idInvitado, int votacion, Date fecha, Collection<Mensaje> mensajes,
			//Collection<Idea> ideas, Idea obIdea) {
	public Invitado(int idInvitado, int votacion, String fecha, Collection<Mensaje> mensajes,
			Collection<Idea> ideas, Idea obIdea) {
		super();
		//this.idInvitado = idInvitado;
		this.votacion = votacion;
		this.fecha = fecha;
		this.mensajes = mensajes;
		this.ideas = ideas;
		this.obIdea = obIdea;
	}
	

/*
	public int getIdInvitado() {
		return idInvitado;
	}


	public void setIdInvitado(int idInvitado) {
		this.idInvitado = idInvitado;
	}

*/
	
	public int getVotacion() {
		return votacion;
	}


	public void setVotacion(int votacion) {
		this.votacion = votacion;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String string) {
		this.fecha = string;
	}


	public Collection<Mensaje> getMensajes() {
		return mensajes;
	}


	public void setMensajes(Collection<Mensaje> mensajes) {
		this.mensajes = mensajes;
	}


	public Collection<Idea> getIdeas() {
		return ideas;
	}


	public void setIdeas(Collection<Idea> ideas) {
		this.ideas = ideas;
	}


	public Idea getObIdea() {
		return obIdea;
	}


	public void setObIdea(Idea obIdea) {
		this.obIdea = obIdea;
	}
	
	

	
}
