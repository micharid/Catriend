package catriend.model;

import java.sql.Date;

public class CatsDTO {
	private int c_index;
	private String c_name;
	private Date c_birthday;
	private String c_gender;
	private String c_type;
	private String c_keyword;
	private String c_health;
	private int c_grade;
	private Date c_comeday;
	private Date c_sday;
	private Date c_eday;
	private String c_detail;
	private int c_state;

	// 기본생성자
	public CatsDTO() {
	}

	// 인자생성자
	public CatsDTO(int c_index, String c_name, Date c_birthday, String c_gender, String c_type, String c_keyword,
			String c_health, int c_grade, Date c_comeday, Date c_sday, Date c_eday, String c_detail, int c_state) {
		this.c_index = c_index;
		this.c_name = c_name;
		this.c_birthday = c_birthday;
		this.c_gender = c_gender;
		this.c_type = c_type;
		this.c_keyword = c_keyword;
		this.c_health = c_health;
		this.c_grade = c_grade;
		this.c_comeday = c_comeday;
		this.c_sday = c_sday;
		this.c_eday = c_eday;
		this.c_detail = c_detail;
		this.c_state = c_state;
	}

	// setter() / getter()
	public int getC_index() {
		return c_index;
	}

	public void setC_index(int c_index) {
		this.c_index = c_index;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public Date getC_birthday() {
		return c_birthday;
	}

	public void setC_birthday(Date c_birthday) {
		this.c_birthday = c_birthday;
	}

	public String getC_gender() {
		return c_gender;
	}

	public void setC_gender(String c_gender) {
		this.c_gender = c_gender;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_keyword() {
		return c_keyword;
	}

	public void setC_keyword(String c_keyword) {
		this.c_keyword = c_keyword;
	}

	public String getC_health() {
		return c_health;
	}

	public void setC_health(String c_health) {
		this.c_health = c_health;
	}

	public int getC_grade() {
		return c_grade;
	}

	public void setC_grade(int c_grade) {
		this.c_grade = c_grade;
	}

	public Date getC_comeday() {
		return c_comeday;
	}

	public void setC_comeday(Date c_comeday) {
		this.c_comeday = c_comeday;
	}

	public Date getC_sday() {
		return c_sday;
	}

	public void setC_sday(Date c_sday) {
		this.c_sday = c_sday;
	}

	public Date getC_eday() {
		return c_eday;
	}

	public void setC_eday(Date c_eday) {
		this.c_eday = c_eday;
	}

	public String getC_detail() {
		return c_detail;
	}

	public void setC_detail(String c_detail) {
		this.c_detail = c_detail;
	}

	public int getC_state() {
		return c_state;
	}

	public void setC_state(int c_state) {
		this.c_state = c_state;
	}
}
