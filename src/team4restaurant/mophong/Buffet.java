package team4restaurant.mophong;

public class Buffet {
	
	private String buffetId;
	private String ten;
	private String gia;
	private String note;
	
	public Buffet() {
		
	}
	
	public Buffet(String buffetId, String ten, String gia, String note) {
		this.buffetId=buffetId;
		this.ten=ten;
		this.gia=gia;
		this.note=note;
	}

	public String getBuffetId() {
		return buffetId;
	}

	public void setBuffetId(String buffetId) {
		this.buffetId = buffetId;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getGia() {
		return gia;
	}

	public void setGia(String gia) {
		this.gia = gia;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	
}
