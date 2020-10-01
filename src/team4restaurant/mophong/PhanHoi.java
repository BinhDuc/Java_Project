package team4restaurant.mophong;

public class PhanHoi {

	private String idphanhoi;
	private String tenkh;
	private String message;
	
	
	public PhanHoi() {
		
	}
	
	public PhanHoi(String idphanhoi, String tenkh, String message) {
		this.idphanhoi=idphanhoi;
		this.tenkh=tenkh;
		this.message=message;
		
	}

	public String getIdphanhoi() {
		return idphanhoi;
	}

	public void setIdphanhoi(String idphanhoi) {
		this.idphanhoi = idphanhoi;
	}

	public String getTenkh() {
		return tenkh;
	}

	public void setTenkh(String tenkh) {
		this.tenkh = tenkh;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
