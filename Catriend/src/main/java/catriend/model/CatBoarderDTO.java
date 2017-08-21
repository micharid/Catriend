package catriend.model;

import java.sql.Date;

public class CatBoarderDTO {
	private int cb_index;
	private String cb_title;
	private String cb_content;
	private String cb_file;
	private Date cb_date;
	private int cb_likecount;
	private String u_id;
	private int c_index;
	
	//기본생성자
	public CatBoarderDTO() {}
	
	//인자생성자
	public CatBoarderDTO(int cb_index, String cb_title, String cb_content, String cb_file, Date cb_date,
			int cb_likecount, String u_id, int c_index) {
		this.cb_index = cb_index;
		this.cb_title = cb_title;
		this.cb_content = cb_content;
		this.cb_file = cb_file;
		this.cb_date = cb_date;
		this.cb_likecount = cb_likecount;
		this.u_id = u_id;
		this.c_index = c_index;
	}
	
	//getter() / setter()
	public int getCb_index() {
		return cb_index;
	}

	public void setCb_index(int cb_index) {
		this.cb_index = cb_index;
	}

	public String getCb_title() {
		return cb_title;
	}

	public void setCb_title(String cb_title) {
		this.cb_title = cb_title;
	}

	public String getCb_content() {
		return cb_content;
	}

	public void setCb_content(String cb_content) {
		this.cb_content = cb_content;
	}

	public String getCb_file() {
		return cb_file;
	}

	public void setCb_file(String cb_file) {
		this.cb_file = cb_file;
	}

	public Date getCb_date() {
		return cb_date;
	}

	public void setCb_date(Date cb_date) {
		this.cb_date = cb_date;
	}

	public int getCb_likecount() {
		return cb_likecount;
	}

	public void setCb_likecount(int cb_likecount) {
		this.cb_likecount = cb_likecount;
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
