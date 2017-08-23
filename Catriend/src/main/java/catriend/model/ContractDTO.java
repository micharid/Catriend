package catriend.model;

import java.sql.Date;

public class ContractDTO {
	private int ct_index;
	private Date ct_sday;
	private Date ct_eday;
	private Date ct_date;
	private String u_id;
	private int c_index;

	// 기본생성자
	public ContractDTO() {
	}

	// 인자생성자
	public ContractDTO(int ct_index, Date ct_sday, Date ct_eday, Date ct_date, String u_id, int c_index) {
		this.ct_index = ct_index;
		this.ct_sday = ct_sday;
		this.ct_eday = ct_eday;
		this.ct_date = ct_date;
		this.u_id = u_id;
		this.c_index = c_index;
	}

	// getter() / setter()
	public int getCt_index() {
		return ct_index;
	}

	public void setCt_index(int ct_index) {
		this.ct_index = ct_index;
	}

	public Date getCt_sday() {
		return ct_sday;
	}

	public void setCt_sday(Date ct_sday) {
		this.ct_sday = ct_sday;
	}

	public Date getCt_eday() {
		return ct_eday;
	}

	public void setCt_eday(Date ct_eday) {
		this.ct_eday = ct_eday;
	}

	public Date getCt_date() {
		return ct_date;
	}

	public void setCt_date(Date ct_date) {
		this.ct_date = ct_date;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public int getC_index() {
		return c_index;
	}

	public void setC_index(int c_index) {
		this.c_index = c_index;
	}
}
