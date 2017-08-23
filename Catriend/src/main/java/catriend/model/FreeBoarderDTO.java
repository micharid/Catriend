package catriend.model;

import java.sql.Date;

public class FreeBoarderDTO {
	private int fb_index;
	private String fb_title;
	private String fb_content;
	private String fb_file;
	private Date fb_date;
	private int fb_hits;
	private int fb_likecount;
	private String u_id;

	// 편의성을 위한 변수
	private int rNum;

	// 기본생성자
	public FreeBoarderDTO() {
	}

	// 인자생성자
	public FreeBoarderDTO(int fb_index, String fb_title, String fb_content, String fb_file, Date fb_date,
			int fb_likecount, String u_id) {
		this.fb_index = fb_index;
		this.fb_title = fb_title;
		this.fb_content = fb_content;
		this.fb_file = fb_file;
		this.fb_date = fb_date;
		this.fb_likecount = fb_likecount;
		this.u_id = u_id;
	}

	public FreeBoarderDTO(int fb_index, String fb_title, String fb_content, String fb_file, Date fb_date, int fb_hits,
			int fb_likecount, String u_id) {
		this.fb_index = fb_index;
		this.fb_title = fb_title;
		this.fb_content = fb_content;
		this.fb_file = fb_file;
		this.fb_date = fb_date;
		this.fb_hits = fb_hits;
		this.fb_likecount = fb_likecount;
		this.u_id = u_id;
	}

	public FreeBoarderDTO(int fb_index, String fb_title, String fb_content, String fb_file, Date fb_date,
			int fb_likecount, String u_id, int rNum) {
		super();
		this.fb_index = fb_index;
		this.fb_title = fb_title;
		this.fb_content = fb_content;
		this.fb_file = fb_file;
		this.fb_date = fb_date;
		this.fb_likecount = fb_likecount;
		this.u_id = u_id;
		this.rNum = rNum;
	}

	public FreeBoarderDTO(int fb_index, String fb_title, String fb_content, String fb_file, Date fb_date, int fb_hits,
			int fb_likecount, String u_id, int rNum) {
		super();
		this.fb_index = fb_index;
		this.fb_title = fb_title;
		this.fb_content = fb_content;
		this.fb_file = fb_file;
		this.fb_date = fb_date;
		this.fb_hits = fb_hits;
		this.fb_likecount = fb_likecount;
		this.u_id = u_id;
		this.rNum = rNum;
	}

	// getter() / setter()
	public int getFb_hits() {
		return fb_hits;
	}

	public void setFb_hits(int fb_hits) {
		this.fb_hits = fb_hits;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public int getFb_index() {
		return fb_index;
	}

	public void setFb_index(int fb_index) {
		this.fb_index = fb_index;
	}

	public String getFb_title() {
		return fb_title;
	}

	public void setFb_title(String fb_title) {
		this.fb_title = fb_title;
	}

	public String getFb_content() {
		return fb_content;
	}

	public void setFb_content(String fb_content) {
		this.fb_content = fb_content;
	}

	public String getFb_file() {
		return fb_file;
	}

	public void setFb_file(String fb_file) {
		this.fb_file = fb_file;
	}

	public Date getFb_date() {
		return fb_date;
	}

	public void setFb_date(Date fb_date) {
		this.fb_date = fb_date;
	}

	public int getFb_likecount() {
		return fb_likecount;
	}

	public void setFb_likecount(int fb_likecount) {
		this.fb_likecount = fb_likecount;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
}
