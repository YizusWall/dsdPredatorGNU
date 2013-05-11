package appideaswebupc.modelo;

import java.util.Collection;

public class CentroFormacion {

	private int idCentro;
	private String nombre;
	private int tipo;
	private String url;
	private String logo;
	
	private Collection<Usuario> usuarios;

	public CentroFormacion() {
		super();
	}

	public CentroFormacion(int idCentro, String nombre, int tipo,
			String url, String logo, Collection<Usuario> usuarios) {
		super();
		this.idCentro = idCentro;
		this.nombre = nombre;
		this.tipo = tipo;
		this.url = url;
		this.logo = logo;
		this.usuarios = usuarios;
	}

	public int getIdCentro() {
		return idCentro;
	}

	public void setIdCentro(int idCentro) {
		this.idCentro = idCentro;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Collection<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Collection<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	
	
}
