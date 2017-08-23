package catriend.model;

import java.sql.Date;

public class CatHistoryDTO {
	private int ch_index;
	private int ch_catio;
	private Date ch_date;
	private int c_index;
	private String u_id;

	// 기본생성자
	public CatHistoryDTO() {
	}

	// 인자생성자
	public CatHistoryDTO(int ch_index, int ch_catio, Date ch_date, int c_index, String u_id) {
		this.ch_index = ch_index;
		this.ch_catio = ch_catio;
		this.ch_date = ch_date;
		this.c_index = c_index;
		this.u_id = u_id;
	}

	// getter() / setter()
	public int getCh_index() {
		return ch_index;
	}

	public void setCh_index(int ch_index) {
		this.ch_index = ch_index;
	}

	public int getCh_catio() {
		return ch_catio;
	}

	public void setCh_catio(int ch_catio) {
		this.ch_catio = ch_catio;
	}

	public Date getCh_date() {
		return ch_date;
	}

	public void setCh_date(Date ch_date) {
		this.ch_date = ch_date;
	}

	public int getC_index() {
		return c_index;
	}

	public void setC_index(int c_index) {
		this.c_index = c_index;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
}
