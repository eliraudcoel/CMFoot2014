package Modeles;

public class Pays {
	private String codePays;
	private String nomPaysE;
	private String nomPaysF;
	private String drapeau;
	
	public Pays(String codePays, String nomPaysE, String nomPaysF,
			String drapeau) {
		super();
		this.codePays = codePays;
		this.nomPaysE = nomPaysE;
		this.nomPaysF = nomPaysF;
		this.drapeau = drapeau;
	}

	public String getCodePays() {
		return codePays;
	}

	public void setCodePays(String codePays) {
		this.codePays = codePays;
	}

	public String getNomPaysE() {
		return nomPaysE;
	}

	public void setNomPaysE(String nomPaysE) {
		this.nomPaysE = nomPaysE;
	}

	public String getNomPaysF() {
		return nomPaysF;
	}

	public void setNomPaysF(String nomPaysF) {
		this.nomPaysF = nomPaysF;
	}

	public String getDrapeau() {
		return drapeau;
	}

	public void setDrapeau(String drapeau) {
		this.drapeau = drapeau;
	}
	
}
