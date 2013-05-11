package appideaswebupc.modelo;

public class Campania {

	private int codigo;
	private String campania;
	private String fec_ini;
	private String fec_fin;
	private double pres_plani;
	private double pres_real;
	private String objetivo;
	private String observacion;
	private int lista;
	private int estado;
	private String fec_creacion;
	
	private String des_estado;
	private String des_lista;
	
	
	public Campania() {
		super();
	}

	public Campania(int codigo, String campania, String fec_ini,
			String fec_fin, double pres_plani, double pres_real,
			String objetivo, String observacion, int lista, int estado) {
		super();
		this.codigo = codigo;
		this.campania = campania;
		this.fec_ini = fec_ini;
		this.fec_fin = fec_fin;
		this.pres_plani = pres_plani;
		this.pres_real = pres_real;
		this.objetivo = objetivo;
		this.observacion = observacion;
		this.lista = lista;
		this.estado = estado;
	}

	
	
	public String getDes_lista() {
		return des_lista;
	}

	public void setDes_lista(String des_lista) {
		this.des_lista = des_lista;
	}

	public String getDes_estado() {
		return des_estado;
	}

	public void setDes_estado(String des_estado) {
		this.des_estado = des_estado;
	}

	public String getFec_creacion() {
		return fec_creacion;
	}

	public void setFec_creacion(String fec_creacion) {
		this.fec_creacion = fec_creacion;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getCampania() {
		return campania;
	}

	public void setCampania(String campania) {
		this.campania = campania;
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

	public double getPres_plani() {
		return pres_plani;
	}

	public void setPres_plani(double pres_plani) {
		this.pres_plani = pres_plani;
	}

	public double getPres_real() {
		return pres_real;
	}

	public void setPres_real(double pres_real) {
		this.pres_real = pres_real;
	}

	public String getObjetivo() {
		return objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public int getLista() {
		return lista;
	}

	public void setLista(int lista) {
		this.lista = lista;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	
	
	
	
}
