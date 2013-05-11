package appideaswebupc.modelo;
//comment


import java.util.Collection;
import java.util.Date;

public class Idea {

	private int idIdea;
	private String titulo;
	private String descripcion;
	private String palabraClave1;
	private String palabraClave2;
	private String palabraClave3;
	private String palabraClave4;
	private String archivo;
	private String estado;
	private String fecha;
	
	private Usuario obEstudiante;
	private Usuario obAsesor;
	private Reunion obReunion;
	private Collection<Invitado> invitados;
	
	//datos de filtro
	private String fec_ini;
	private String fec_fin;
	
	private String idusuario;
	private String asesor;
	
	public Idea() {
		super();
	}



	public Idea(int idIdea, String titulo, String descripcion,
			String palabraClave1, String palabraClave2, String palabraClave3,
			String palabraClave4, String archivo, String estado, String fecha,
			Usuario obEstudiante, Usuario obAsesor, Reunion obReunion,
			Collection<Invitado> invitados, String fec_ini, String fec_fin,
			String idusuario, String asesor) {
		super();
		this.idIdea = idIdea;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.palabraClave1 = palabraClave1;
		this.palabraClave2 = palabraClave2;
		this.palabraClave3 = palabraClave3;
		this.palabraClave4 = palabraClave4;
		this.archivo = archivo;
		this.estado = estado;
		this.fecha = fecha;
		this.obEstudiante = obEstudiante;
		this.obAsesor = obAsesor;
		this.obReunion = obReunion;
		this.invitados = invitados;
		this.fec_ini = fec_ini;
		this.fec_fin = fec_fin;
		this.idusuario = idusuario;
		this.asesor = asesor;
	}



	public int getIdIdea() {
		return idIdea;
	}

	public void setIdIdea(int idIdea) {
		this.idIdea = idIdea;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPalabraClave1() {
		return palabraClave1;
	}

	public void setPalabraClave1(String palabraClave1) {
		this.palabraClave1 = palabraClave1;
	}

	public String getPalabraClave2() {
		return palabraClave2;
	}

	public void setPalabraClave2(String palabraClave2) {
		this.palabraClave2 = palabraClave2;
	}

	public String getPalabraClave3() {
		return palabraClave3;
	}

	public void setPalabraClave3(String palabraClave3) {
		this.palabraClave3 = palabraClave3;
	}

	public String getPalabraClave4() {
		return palabraClave4;
	}

	public void setPalabraClave4(String palabraClave4) {
		this.palabraClave4 = palabraClave4;
	}

	public String getArchivo() {
		return archivo;
	}

	public void setArchivo(String archivo) {
		this.archivo = archivo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public Usuario getObEstudiante() {
		return obEstudiante;
	}

	public void setObEstudiante(Usuario obEstudiante) {
		this.obEstudiante = obEstudiante;
	}

	public Usuario getObAsesor() {
		return obAsesor;
	}

	public void setObAsesor(Usuario obAsesor) {
		this.obAsesor = obAsesor;
	}

	public Reunion getObReunion() {
		return obReunion;
	}

	public void setObReunion(Reunion obReunion) {
		this.obReunion = obReunion;
	}

	public Collection<Invitado> getInvitados() {
		return invitados;
	}

	public void setInvitados(Collection<Invitado> invitados) {
		this.invitados = invitados;
	}

	public String getFec_ini() {
		return fec_ini;
	}

	public void setFec_ini(String fec_ini) {
		this.fec_ini = fec_ini;
	}

	public String getFec_fin() {
		return fec_fin;
	}

	public void setFec_fin(String fec_fin) {
		this.fec_fin = fec_fin;
	}

	public String getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(String idusuario) {
		this.idusuario = idusuario;
	}

	public String getAsesor() {
		return asesor;
	}

	public void setAsesor(String asesor) {
		this.asesor = asesor;
	}
	
	

	
}
