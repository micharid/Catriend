package catriend.model;

import java.sql.Date;

public class CatBoarderDTO {
	private int cb_index;
	private String cb_title;
	private String cb_content;
	private String cb_file;
	private Date cb_date;
	private int cb_hits;
	private String cb_like;
	private String u_id;
	private int c_index;
	
	// 편의성을 위한 변수
	private int rNum;

	// 기본생성자
	public CatBoarderDTO() {
	}

	// 인자생성자
	public CatBoarderDTO(int cb_index, String cb_title, String cb_content, String cb_file, Date cb_date,
			String cb_like, String u_id, int c_index) {
		this.cb_index = cb_index;
		this.cb_title = cb_title;
		this.cb_content = cb_content;
		this.cb_file = cb_file;
		this.cb_date = cb_date;
		this.cb_like = cb_like;
		this.u_id = u_id;
		this.c_index = c_index;
	}
	

	public CatBoarderDTO(int cb_index, String cb_title, String cb_content, String cb_file, Date cb_date, int cb_hits,
			String cb_like, String u_id, int c_index, int rNum) {
		super();
		this.cb_index = cb_index;
		this.cb_title = cb_title;
		this.cb_content = cb_content;
		this.cb_file = cb_file;
		this.cb_date = cb_date;
		this.cb_hits = cb_hits;
		this.cb_like = cb_like;
		this.u_id = u_id;
		this.c_index = c_index;
		this.rNum = rNum;
	}


	public CatBoarderDTO(int cb_index, String cb_title, String cb_content, String cb_file, Date cb_date, int cb_hits,
			String cb_like, String u_id, int c_index) {
		super();
		this.cb_index = cb_index;
		this.cb_title = cb_title;
		this.cb_content = cb_content;
		this.cb_file = cb_file;
		this.cb_date = cb_date;
		this.cb_hits = cb_hits;
		this.cb_like = cb_like;
		this.u_id = u_id;
		this.c_index = c_index;
	}

	// getter() / setter()
	public int getCb_hits() {
		return cb_hits;
	}

	public void setCb_hits(int cb_hits) {
		this.cb_hits = cb_hits;
	}

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

	public String getCb_like() {
		return cb_like;
	}

	public void setCb_like(String cb_like) {
		this.cb_like = cb_like;
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
	
	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

}
