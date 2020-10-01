package team4restaurant.mophong;

public class Ban {
	 
	private String idban;
	private String soban;
	private String vitri;
	
	public Ban() {
		// TODO Auto-generated constructor stub
	}
	
	public Ban(String idban, String soban, String vitri) {
		this.idban=idban;
		this.soban=soban;
		this.vitri=vitri;
				
	}

	public String getIdban() {
		return idban;
	}

	public void setIdban(String idban) {
		this.idban = idban;
	}

	public String getSoban() {
		return soban;
	}

	public void setSoban(String soban) {
		this.soban = soban;
	}

	public String getVitri() {
		return vitri;
	}

	public void setVitri(String vitri) {
		this.vitri = vitri;
	}
	
}
