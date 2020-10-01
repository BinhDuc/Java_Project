package team4restaurant.mophong;

public class UserAccount {
	
	 public static final String GENDER_MALE ="Nam";
	 public static final String GENDER_FEMALE = "Nữ";
	
	private String userName;
	private String password;
	private String name;
	private String birthday;
	private String gender;
	private String address;
	private String phoneNumber;
	private String position;
	
	public UserAccount() {
		// TODO Auto-generated constructor stub
	}
	public UserAccount(String userName, String password, String name, String birthday, String gender, String address, String phoneNumber, String position) {
		this.userName=userName;
		this.password=password;
		this.name=name;
		this.birthday=birthday;
		this.gender=gender;
		this.address=address;
		this.phoneNumber=phoneNumber;
		this.position=position;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
	
	

}
