package team4restaurant.mophong;

public class BangLuong extends UserAccount {
	
	private String idbl;
	private Float chamcong;
	private Float heso;
	
	public BangLuong() {
		
	}
	
	public BangLuong(String userName, String password, String name, String birthday, String gender, String address, String phoneNumber, String position, String idbl, Float chamcong, Float heso) {
		super(userName,password,name,birthday,gender,address,phoneNumber,position);
		this.idbl=idbl;
		this.chamcong=chamcong;
		this.heso=heso;
				
	}

	public String getIdbl() {
		return idbl;
	}

	public void setIdbl(String idbl) {
		this.idbl = idbl;
	}

	public Float getChamcong() {
		return chamcong;
	}

	public void setChamcong(Float chamcong) {
		this.chamcong = chamcong;
	}

	public Float getHeso() {
		return heso;
	}

	public void setHeso(Float heso) {
		this.heso = heso;
	}
	
	
}
