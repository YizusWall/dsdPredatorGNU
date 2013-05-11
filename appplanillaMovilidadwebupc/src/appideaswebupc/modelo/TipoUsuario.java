package appideaswebupc.modelo;

public class TipoUsuario {
	
	private int idTipoUsuario;
	private String tipo;
	
	public TipoUsuario() {
		super();
	}

	public TipoUsuario(int idTipoUsuario, String tipo) {
		super();
		this.idTipoUsuario = idTipoUsuario;
		this.tipo = tipo;
	}

	public int getIdTipoUsuario() {
		return idTipoUsuario;
	}

	public void setIdTipoUsuario(int idTipoUsuario) {
		this.idTipoUsuario = idTipoUsuario;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
	
	

}
