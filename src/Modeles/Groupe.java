package Modeles;

public class Groupe {
	private String codeGroupe;
	private String codePays;
	private String nomPays;
	private String drapeau;
	
	public Groupe(String codeGroupe, String codePays, String nomPays,
			String drapeau) {
		super();
		this.codeGroupe = codeGroupe;
		this.codePays = codePays;
		this.nomPays = nomPays;
		this.drapeau = drapeau;
	}
	public Groupe() {
		// TODO Auto-generated constructor stub
	}
	public String getCodeGroupe() {
		return codeGroupe;
	}
	public void setCodeGroupe(String codeGroupe) {
		this.codeGroupe = codeGroupe;
	}
	public String getCodePays() {
		return codePays;
	}
	public void setCodePays(String codePays) {
		this.codePays = codePays;
	}
	public String getNomPays() {
		return nomPays;
	}
	public void setNomPays(String nomPays) {
		this.nomPays = nomPays;
	}
	public String getDrapeau() {
		return drapeau;
	}
	public void setDrapeau(String drapeau) {
		this.drapeau = drapeau;
	}
	
	
	
}
