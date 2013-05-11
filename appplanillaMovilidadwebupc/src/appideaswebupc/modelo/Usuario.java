package appideaswebupc.modelo;

import java.util.Collection;

public class Usuario {

	private int idUsuario;
	private int tipo;
	private String nombres;
	private String paterno;
	private String materno;
	private String sexo;
	private String tipoDocumento;
	private String numDocumento;
	private String celular;
	private String correo;
	private String contrasena;
	
	private CentroFormacion obCentroFormacion;
	private TipoUsuario obTipoUsuario;
	
	private Collection<Idea> creacionIdeas;
	private Collection<Idea> asesorIdeas;
	private Collection<Reunion> reuniones;
	
	public Usuario() {
		super();
	}

	public Usuario(int idUsuario, int tipo, String nombres, String paterno,
			String materno, String sexo, String tipoDocumento,
			String numDocumento, String celular, String correo,
			String contrasena, CentroFormacion obCentroFormacion,
			TipoUsuario obTipoUsuario, Collection<Idea> creacionIdeas,
			Collection<Idea> asesorIdeas, Collection<Reunion> reuniones) {
		super();
		this.idUsuario = idUsuario;
		this.tipo = tipo;
		this.nombres = nombres;
		this.paterno = paterno;
		this.materno = materno;
		this.sexo = sexo;
		this.tipoDocumento = tipoDocumento;
		this.numDocumento = numDocumento;
		this.celular = celular;
		this.correo = correo;
		this.contrasena = contrasena;
		this.obCentroFormacion = obCentroFormacion;
		this.obTipoUsuario = obTipoUsuario;
		this.creacionIdeas = creacionIdeas;
		this.asesorIdeas = asesorIdeas;
		this.reuniones = reuniones;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getPaterno() {
		return paterno;
	}

	public void setPaterno(String paterno) {
		this.paterno = paterno;
	}

	public String getMaterno() {
		return materno;
	}

	public void setMaterno(String materno) {
		this.materno = materno;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNumDocumento() {
		return numDocumento;
	}

	public void setNumDocumento(String numDocumento) {
		this.numDocumento = numDocumento;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public CentroFormacion getObCentroFormacion() {
		return obCentroFormacion;
	}

	public void setObCentroFormacion(CentroFormacion obCentroFormacion) {
		this.obCentroFormacion = obCentroFormacion;
	}

	public TipoUsuario getObTipoUsuario() {
		return obTipoUsuario;
	}

	public void setObTipoUsuario(TipoUsuario obTipoUsuario) {
		this.obTipoUsuario = obTipoUsuario;
	}

	public Collection<Idea> getCreacionIdeas() {
		return creacionIdeas;
	}

	public void setCreacionIdeas(Collection<Idea> creacionIdeas) {
		this.creacionIdeas = creacionIdeas;
	}

	public Collection<Idea> getAsesorIdeas() {
		return asesorIdeas;
	}

	public void setAsesorIdeas(Collection<Idea> asesorIdeas) {
		this.asesorIdeas = asesorIdeas;
	}

	public Collection<Reunion> getReuniones() {
		return reuniones;
	}

	public void setReuniones(Collection<Reunion> reuniones) {
		this.reuniones = reuniones;
	}

	
	
}
