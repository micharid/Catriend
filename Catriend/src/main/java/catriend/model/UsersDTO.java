package catriend.model;

import java.sql.Date;

public class UsersDTO {
	private String u_id;
	private String u_pw;
	private String u_name;
	private java.sql.Date u_birthday;
	private String u_phonenumber;
	private String u_address;
	private String u_email;
	private String u_nickname;
	private int u_state;
	private int c_index;
	private int u_grade;
	
	public UsersDTO() {
	}
	
	public UsersDTO(String u_id, String u_pw, String u_name, Date u_birthday, String u_phonenumber, String u_address,
			String u_email, String u_nickname, int u_state, int c_index, int u_grade) {
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_birthday = u_birthday;
		this.u_phonenumber = u_phonenumber;
		this.u_address = u_address;
		this.u_email = u_email;
		this.u_nickname = u_nickname;
		this.u_state = u_state;
		this.c_index = c_index;
		this.u_grade = u_grade;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public java.sql.Date getU_birthday() {
		return u_birthday;
	}
	public void setU_birthday(java.sql.Date u_birthday) {
		this.u_birthday = u_birthday;
	}
	public String getU_phonenumber() {
		return u_phonenumber;
	}
	public void setU_phonenumber(String u_phonenumber) {
		this.u_phonenumber = u_phonenumber;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_nickname() {
		return u_nickname;
	}
	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	public int getC_index() {
		return c_index;
	}
	public void setC_index(int c_index) {
		this.c_index = c_index;
	}
	public int getU_grade() {
		return u_grade;
	}
	public void setU_grade(int u_grade) {
		this.u_grade = u_grade;
	}
	
}
