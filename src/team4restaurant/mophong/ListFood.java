package team4restaurant.mophong;

public class ListFood {
	
	private String foodId;
	private String tenmon;
	private String soluong;
	private String giatien;
	private String note;
	
	public ListFood() {
		// TODO Auto-generated constructor stub
	}
	
	public ListFood(String foodId, String tenmon, String soluong, String giatien,String note) {
		this.foodId=foodId;
		this.tenmon=tenmon;
		this.soluong=soluong;
		this.giatien=giatien;
		this.note=note;
	}

	public String getFoodId() {
		return foodId;
	}

	public void setFoodId(String foodId) {
		this.foodId = foodId;
	}

	public String getTenmon() {
		return tenmon;
	}

	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}

	public String getSoluong() {
		return soluong;
	}

	public void setSoluong(String soluong) {
		this.soluong = soluong;
	}

	public String getGiatien() {
		return giatien;
	}

	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	

}
