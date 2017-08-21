package catriend.model;

import java.sql.Date;

public class FreeBoarderDTO {
	private int fb_index;
	private String fb_title;
	private String fb_content;
	private String fb_file;
	private Date fb_date;
	private int fb_likecount;
	private String u_id;
	
	//기본생성자
	public FreeBoarderDTO() {}
	
	//인자생성자
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
	
	//getter() / setter()
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
