package team4restaurant.utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import team4restaurant.mophong.ListFood;
import team4restaurant.mophong.UserAccount;
import team4restaurant.mophong.BookTable;
import team4restaurant.mophong.Buffet;
import team4restaurant.mophong.Ban;
import team4restaurant.mophong.PhanHoi;
import team4restaurant.mophong.BangLuong;



public class DBUtils {
	public static UserAccount login(Connection conn, String userName, String password) throws SQLException {

		String sql = "Select a.User_Name, a.Password, a.Name, a.Birthday, a.Gender, a.Address, a.Phone_Number, a.Position from User_Account a "
				+ " where a.User_Name = ? and a.password= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String name = rs.getNString("Name");
			String birthday = rs.getString("Birthday");
			String gender = rs.getNString("Gender");
			String address = rs.getNString("Address");
			String phoneNumber = rs.getString("Phone_Number");
			String position = rs.getNString("Position");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setName(name);
			user.setBirthday(birthday);
			user.setGender(gender);
			user.setAddress(address);
			user.setPhoneNumber(phoneNumber);
			user.setPosition(position);
			return user;
		}
		return null;
	}

	public static UserAccount findUser(Connection conn, String userName) throws SQLException {

		String sql = "Select a.User_Name, a.Password, a.Name, a.Birthday, a.Gender, a.Address, a.Phone_Number, a.Position from User_Account a " + " where a.User_Name = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString("Password");
			String name = rs.getNString("Name");
			String birthday = rs.getString("Birthday");
			String gender = rs.getNString("Gender");
			String address = rs.getNString("Address");
			String phoneNumber = rs.getString("Phone_Number");
			String position = rs.getNString("Position");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setName(name);
			user.setBirthday(birthday);
			user.setGender(gender);
			user.setAddress(address);
			user.setPhoneNumber(phoneNumber);
			user.setPosition(position);
			return user;
		}
		return null;
	}

	
    public static List<UserAccount> queryUser(Connection conn) throws SQLException {
        String sql = "Select a.User_Name, a.Password, a.Name, a.Birthday, a.Gender, a.Address, a.Phone_Number, a.Position from User_Account a ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<UserAccount> list = new ArrayList<UserAccount>();
        while (rs.next()) {
        	String userName = rs.getString("User_Name");
        	String password = rs.getString("Password");
			String name = rs.getNString("Name");
			String birthday = rs.getString("Birthday");
			String gender = rs.getNString("Gender");
			String address = rs.getNString("Address");
			String phoneNumber = rs.getString("Phone_Number");
			String position = rs.getNString("Position");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setName(name);
			user.setBirthday(birthday);
			user.setGender(gender);
			user.setAddress(address);
			user.setPhoneNumber(phoneNumber);
			user.setPosition(position);
            list.add(user);
        }
        return list;
    }
 
 
    public static void updateUser(Connection conn, UserAccount user) throws SQLException {
        String sql = "Update User_Account set Password=?, Name=?, Birthday=?, Gender=?, Address=?, Phone_Number=?, Position=? where User_Name=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, user.getPassword());
        pstm.setString(2, user.getName());
        pstm.setString(3, user.getBirthday());
        pstm.setString(4, user.getGender());
        pstm.setString(5, user.getAddress());
        pstm.setString(6, user.getPhoneNumber());
        pstm.setString(7, user.getPosition());
        pstm.setString(8, user.getUserName());
        pstm.executeUpdate();
    }
 
    public static void insertUser(Connection conn, UserAccount user) throws SQLException {
        String sql = "Insert into User_Account(USER_NAME, PASSWORD, NAME, BIRTHDAY, GENDER, ADDRESS, PHONE_NUMBER, POSITION) values (?,?,?,?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, user.getUserName());
        pstm.setString(2, user.getPassword());
        pstm.setString(3, user.getName());
        pstm.setString(4, user.getBirthday());
        pstm.setString(5, user.getGender());
        pstm.setString(6, user.getAddress());
        pstm.setString(7, user.getPhoneNumber());
        pstm.setString(8, user.getPosition());
        
        pstm.executeUpdate();
    }
 
    public static void deleteUser(Connection conn, String userName) throws SQLException {
        String sql = "Delete From User_Account where USER_NAME= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, userName);
 
        pstm.executeUpdate();
    }
    
 // BookTable----------------------------------------------------------------------------------------------------------.
    
    
    public static List<BookTable> queryBookTB(Connection conn) throws SQLException {
        String sql = "Select b.BOOK_ID, b.NAME_CTM, b.PHONE_CTM, b.NUMBER, b.TIME, b.NOTE from BOOK_TABLE b ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<BookTable> list = new ArrayList<BookTable>();
        while (rs.next()) {
            String bookId = rs.getString("BOOK_ID");
            String nameCtm = rs.getNString("NAME_CTM");
            String phoneCtm = rs.getString("PHONE_CTM");
            String number = rs.getString("NUMBER");
            String time = rs.getString("TIME");
            String note = rs.getString("NOTE");
            
            
            BookTable booktable = new BookTable();
            booktable.setBookId(bookId);
            booktable.setNameCtm(nameCtm);
            booktable.setPhoneCtm(phoneCtm);
            booktable.setNumber(number);
            booktable.setTime(time);
            booktable.setNote(note);
            list.add(booktable);
        }
        return list;
    }
   
 
    public static BookTable findBookTB(Connection conn, String bookId) throws SQLException {
        String sql = "Select b.BOOK_ID, b.NAME_CTM, b.PHONE_CTM, b.NUMBER, b.TIME, b.NOTE from BOOK_TABLE b where b.BOOK_ID=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, bookId);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
           
            String nameCtm = rs.getNString("NAME_CTM");
            String phoneCtm = rs.getString("PHONE_CTM");
            String number = rs.getString("NUMBER");
            String time = rs.getString("TIME");
            String note = rs.getString("NOTE");
            BookTable product = new BookTable(bookId, nameCtm, phoneCtm, number, time, note);
            return product;
        }
        return null;
    }
 
    public static void updateBookTB(Connection conn, BookTable book) throws SQLException {
        String sql = "Update BOOK_TABLE set NAME_CTM =?, PHONE_CTM=?, NUMBER=?, TIME=?, NOTE=? where BOOK_ID=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, book.getNameCtm());
        pstm.setString(2, book.getPhoneCtm());
        pstm.setString(3, book.getNumber());
        pstm.setString(4, book.getTime());
        pstm.setString(5, book.getNote());
        pstm.setString(6, book.getBookId());
        pstm.executeUpdate();
    }
 
    public static void insertBookTB(Connection conn, BookTable book) throws SQLException {
        String sql = "Insert into BOOK_TABLE(NAME_CTM, PHONE_CTM, NUMBER, TIME, NOTE) values (?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, book.getNameCtm());
        pstm.setString(2, book.getPhoneCtm());
        pstm.setString(3, book.getNumber());
        pstm.setString(4, book.getTime());
        pstm.setString(5, book.getNote());
        
       
        pstm.executeUpdate();
    }
 
    public static void deleteBookTB(Connection conn, String bookId) throws SQLException {
        String sql = "Delete From BOOK_TABLE where BOOK_ID= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, bookId);
 
        pstm.executeUpdate();
    }
    
// ListFood ----------------------------------------------------------------------------------------------------------------------.
    
    public static List<ListFood> queryListFood(Connection conn) throws SQLException {
        String sql = "Select FOOD_ID, TENMON, SOLUONG, GIATIEN, NOTE from ListFood ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<ListFood> list = new ArrayList<ListFood>();
        while (rs.next()) {
        	String foodId = rs.getString("FOOD_ID");
            String tenmon = rs.getNString("TENMON");
            String soluong = rs.getString("SOLUONG");
            String giatien = rs.getString("GIATIEN");
            String note = rs.getNString("NOTE");
            
            ListFood LF = new ListFood();
            LF.setFoodId(foodId);
            LF.setTenmon(tenmon);
            LF.setSoluong(soluong);
            LF.setGiatien(giatien);
            LF.setNote(note);
            list.add(LF);
        }
        return list;
    }
 
    public static ListFood findListFood(Connection conn,String foodId) throws SQLException {
        String sql = "Select FOOD_ID, TENMON, SOLUONG, GIATIEN, NOTE from ListFood where FOOD_ID=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, foodId);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
        	String tenmon = rs.getNString("TENMON");
            String soluong = rs.getString("SOLUONG");
            String giatien = rs.getString("GIATIEN");
            String note = rs.getNString("NOTE");
            ListFood LF = new ListFood(foodId, tenmon, soluong, giatien,note);
            return LF;
        }
        return null;
    }
 
    public static void updateFoodList(Connection conn, ListFood LF) throws SQLException {
        String sql = "Update ListFood set TENMON =?, SOLUONG=?, GIATIEN=?, NOTE=? where FOOD_ID=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
                
        pstm.setString(1, LF.getTenmon());
        pstm.setString(2, LF.getSoluong());
        pstm.setString(3, LF.getGiatien());
        pstm.setString(4, LF.getNote());
        pstm.setString(5, LF.getFoodId());
        
        pstm.executeUpdate();
    }
 
    public static void insertListFood(Connection conn, ListFood LF) throws SQLException {
        String sql = "Insert into ListFood(TENMON, SOLUONG, GIATIEN, NOTE) values (?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, LF.getTenmon());
        pstm.setString(2, LF.getSoluong());
        pstm.setString(3, LF.getGiatien());
        pstm.setString(4, LF.getNote());
        
 
        pstm.executeUpdate();
    }
 
    public static void deleteListFood(Connection conn, String foodId) throws SQLException {
        String sql = "Delete From ListFood where FOOD_ID= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, foodId);
 
        pstm.executeUpdate();
    }
    


    
//BUFFET ----------------------------------------------------------------------------------------------------------------------.    
    
    
    
    public static List<Buffet> queryBuffet(Connection conn) throws SQLException {
        String sql = "Select BUFFET_ID, TEN, GIA, NOTE from BUFFET ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Buffet> list = new ArrayList<Buffet>();
        while (rs.next()) {
        	String buffetId = rs.getString("BUFFET_ID");
            String ten = rs.getNString("TEN");
            String gia = rs.getString("GIA");
            String note = rs.getNString("NOTE");
            
            Buffet BF = new Buffet();
            BF.setBuffetId(buffetId);
            BF.setTen(ten);
            BF.setGia(gia);
            BF.setNote(note);
            list.add(BF);
        }
        return list;
    }
 
    public static Buffet findBuffet(Connection conn,String buffetId) throws SQLException {
        String sql = "Select BUFFET_ID, TEN, GIA, NOTE from BUFFET where BUFFET_ID=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, buffetId);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String ten = rs.getNString("TEN");
            String gia = rs.getString("GIA");
            String note = rs.getNString("NOTE");
            Buffet BF = new Buffet(buffetId, ten, gia,note);
            return BF;
        }
        return null;
    }
 
    public static void updateBuffet(Connection conn, Buffet BF) throws SQLException {
        
        String sql = "Update BUFFET set TEN=?, GIA=?, NOTE=? where BUFFET_ID=?";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
 
                
        pstm.setString(1, BF.getTen());
        pstm.setString(2, BF.getGia());
        pstm.setString(3, BF.getNote());
        pstm.setString(4, BF.getBuffetId());
       
        
        pstm.executeUpdate();
    }
 
    public static void insertBuffet(Connection conn, Buffet BF) throws SQLException {
        String sql = "Insert into BUFFET(BUFFET_ID, TEN, GIA, NOTE) values (?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, BF.getBuffetId());
        pstm.setString(2, BF.getTen());
        pstm.setString(3, BF.getGia());
        pstm.setString(4, BF.getNote());
        
 
        pstm.executeUpdate();
    }
 
    public static void deleteBuffet(Connection conn, String buffetId) throws SQLException {
        String sql = "Delete From BUFFET where BUFFET_ID= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, buffetId);
 
        pstm.executeUpdate();
    }
    
    
    
    
//SO BAN ----------------------------------------------------------------------------------------------------------------------.    
    
    
    
    public static List<Ban> queryBan(Connection conn) throws SQLException {
        String sql = "Select ID_BAN, SOBAN, VITRI from BAN ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Ban> list = new ArrayList<Ban>();
        while (rs.next()) {
        	String idban = rs.getString("ID_BAN");
            String soban = rs.getNString("SOBAN");
            String vitri = rs.getNString("VITRI");
            
            Ban BN = new Ban();
            BN.setIdban(idban);
            BN.setSoban(soban);
            BN.setVitri(vitri);
            list.add(BN);
        }
        return list;
    }
 
    public static Ban findBan(Connection conn,String idban) throws SQLException {
        String sql = "Select ID_BAN, SOBAN, VITRI from BAN where ID_BAN=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idban);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
        	
            String soban = rs.getNString("SOBAN");
            String vitri = rs.getNString("VITRI");
            Ban BN = new Ban(idban, soban, vitri);
            return BN;
        }
        return null;
    }
 
    public static void updateBan(Connection conn, Ban BN) throws SQLException {
        String sql = "Update BAN set SOBAN =?, VITRI=? where ID_BAN=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
                
        pstm.setString(1, BN.getSoban());
        pstm.setString(2, BN.getVitri());
        pstm.setString(3, BN.getIdban());
        
        pstm.executeUpdate();
    }
 
    public static void insertBAN(Connection conn, Ban BN) throws SQLException {
        String sql = "Insert into BAN(SOBAN, VITRI) values (?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, BN.getSoban());
        pstm.setString(2, BN.getVitri());
        
 
        pstm.executeUpdate();
    }
 
    public static void deleteBAN(Connection conn, String idban) throws SQLException {
        String sql = "Delete From BAN where ID_BAN= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, idban);
 
        pstm.executeUpdate();
    }
    
    
    
//PHAN HOI ----------------------------------------------------------------------------------------------------------------------.    
    
    
    
    public static List<PhanHoi> queryPhanHoi(Connection conn) throws SQLException {
        String sql = "Select ID_PHANHOI, TEN_KH, MESSAGE from PHANHOI ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<PhanHoi> list = new ArrayList<PhanHoi>();
        while (rs.next()) {
        	String idphanhoi = rs.getString("ID_PHANHOI");
            String tenkh = rs.getNString("TEN_KH");
            String message = rs.getNString("MESSAGE");
            
            PhanHoi PH = new PhanHoi();
            PH.setIdphanhoi(idphanhoi);
            PH.setTenkh(tenkh);
            PH.setMessage(message);
            list.add(PH);
        }
        return list;
    }
 
    public static PhanHoi findPhanHoi(Connection conn,String idphanhoi) throws SQLException {
        String sql = "Select ID_PHANHOI, TEN_KH, MESSAGE from PHANHOI where ID_PHANHOI=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idphanhoi);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
        	
            String tenkh = rs.getNString("TEN_KH");
            String message = rs.getNString("MESSAGE");
            PhanHoi PH = new PhanHoi(idphanhoi, tenkh, message);
            return PH;
        }
        return null;
    }
 
    public static void updatePhanHoi(Connection conn, PhanHoi PH) throws SQLException {
        String sql = "Update PHANHOI set TEN_KH =?, MESSAGE=? where ID_PHANHOI=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
                
        pstm.setString(1, PH.getTenkh());
        pstm.setString(2, PH.getMessage());
        pstm.setString(3, PH.getIdphanhoi());
        
        pstm.executeUpdate();
    }
 
    public static void insertPhanHoi(Connection conn, PhanHoi PH) throws SQLException {
        String sql = "Insert into PHANHOI(TEN_KH, MESSAGE) values (?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, PH.getTenkh());
        pstm.setString(2, PH.getMessage());
        
 
        pstm.executeUpdate();
    }
 
    public static void deletePhanHoi(Connection conn, String idphanhoi) throws SQLException {
        String sql = "Delete From PHANHOI where ID_PHANHOI= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, idphanhoi);
 
        pstm.executeUpdate();
    }
    
    
    
//bang luong -------------------------------------------------------------------------------------------------------------
    public static  List<BangLuong> queryBangLuong(Connection conn) throws SQLException {
        String sql = "select b.USER_NAME , a.NAME, CHAMCONG, HESO \r\n" + 
        		"from USER_ACCOUNT a,BANGLUONG b where a.USER_NAME=b.USER_NAME ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<BangLuong> list = new ArrayList<BangLuong>();
        while (rs.next()) {
        	String idbl = rs.getString("USER_NAME");
        	String name = rs.getNString("NAME");
            float chamcong = rs.getFloat("CHAMCONG");
            float heso = rs.getFloat("HESO");
            
            BangLuong BL = new BangLuong();
            BL.setIdbl(idbl); 
            BL.setName(name);
            BL.setChamcong(chamcong);;
            BL.setHeso(heso);
            
            list.add(BL);
            System.out.println(BL);
           
        }
        return list;
    }  
    
    public static void insertBL(Connection conn, BangLuong BL) throws SQLException {
        String sql = "Insert into BANGLUONG(USER_NAME,CHAMCONG,HESO) values (?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        
        pstm.setString(1, BL.getIdbl());
        pstm.setFloat(2, BL.getChamcong());
        pstm.setFloat(3, BL.getHeso());       
        
        pstm.executeUpdate();
    }
    
    public static void deleteBL(Connection conn, String idbl) throws SQLException {
        String sql = "Delete From BANGLUONG where USER_NAME= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, idbl);
 
        pstm.executeUpdate();
    }
    
    public static BangLuong findBL(Connection conn, String idbl) throws SQLException {
        String sql = "Select USER_NAME, CHAMCONG, HESO from BANGLUONG  where USER_NAME=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idbl);
 
       ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
           
        	Float chamcong = rs.getFloat("CHAMCONG");
            Float heso = rs.getFloat("HESO");
            
            
            BangLuong bl = new BangLuong();
            bl.setIdbl(idbl);
            bl.setChamcong(chamcong);
            bl.setHeso(heso);
            
            return bl;
        }
        return null;
    }
    
    public static void updateBL(Connection conn, BangLuong BL) throws SQLException {
        String sql = "Update BANGLUONG set CHAMCONG=?, HESO=? where USER_NAME=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
                
        pstm.setFloat(1, BL.getChamcong());
        pstm.setFloat(2, BL.getHeso());
        pstm.setString(3, BL.getIdbl());
        
        
        
        pstm.executeUpdate();
    }
    
    
    
}



	
