package appideaswebupc.modelo;

public class TipoCentro {
	
	private int idTipoCentro;
	private String centro;
	
	public TipoCentro() {
		super();
	}
	
	public TipoCentro(int idTipoCentro, String centro) {
		super();
		this.idTipoCentro = idTipoCentro;
		this.centro = centro;
	}

	public int getIdTipoCentro() {
		return idTipoCentro;
	}

	public void setIdTipoCentro(int idTipoCentro) {
		this.idTipoCentro = idTipoCentro;
	}

	public String getCentro() {
		return centro;
	}

	public void setCentro(String centro) {
		this.centro = centro;
	}
	
	
	
	

}
