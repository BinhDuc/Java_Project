package team4restaurant.mophong;

public class BookTable {
	
	private String bookId;
	private String nameCtm;
	private String phoneCtm;
	private String number;
	private String time;
	private String note;
	
	public BookTable() {
		// TODO Auto-generated constructor stub
	}

	public BookTable(String bookId, String nameCtm, String phoneCtm, String number, String time, String note) {
		this.bookId=bookId;
		this.nameCtm=nameCtm;
		this.phoneCtm=phoneCtm;
		this.number=number;
		this.time=time;
		this.note=note;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getNameCtm() {
		return nameCtm;
	}

	public void setNameCtm(String nameCtm) {
		this.nameCtm = nameCtm;
	}

	public String getPhoneCtm() {
		return phoneCtm;
	}

	public void setPhoneCtm(String phoneCtm) {
		this.phoneCtm = phoneCtm;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
}
