package catriend.model;

import java.sql.Date;

public class FreeBoarderCommentDTO {
	private int fbc_index;
	private String fbc_content;
	private Date fbc_date;
	private int fbc_group;
	private int fbc_step;
	private int fbc_depth;
	private String u_id;
	private int fb_index;

	//기본생성자
	public FreeBoarderCommentDTO() {}
	
	//인자생성자
	public FreeBoarderCommentDTO(int fbc_index, String fbc_content, Date fbc_date, int fbc_group, int fbc_step,
			int fbc_depth, String u_id, int fb_index) {
		super();
		this.fbc_index = fbc_index;
		this.fbc_content = fbc_content;
		this.fbc_date = fbc_date;
		this.fbc_group = fbc_group;
		this.fbc_step = fbc_step;
		this.fbc_depth = fbc_depth;
		this.u_id = u_id;
		this.fb_index = fb_index;
	}
	//getter() / setter()
	public int getFbc_index() {
		return fbc_index;
	}

	public void setFbc_index(int fbc_index) {
		this.fbc_index = fbc_index;
	}
	public String getFbc_content() {
		return fbc_content;
	}
	public void setFbc_content(String fbc_content) {
		this.fbc_content = fbc_content;
	}
	public Date getFbc_date() {
		return fbc_date;
	}
	public void setFbc_date(Date fbc_date) {
		this.fbc_date = fbc_date;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getFb_index() {
		return fb_index;
	}
	public void setFb_index(int fb_index) {
		this.fb_index = fb_index;
	}
	public int getFbc_group() {
		return fbc_group;
	}
	public void setFbc_group(int fbc_group) {
		this.fbc_group = fbc_group;
	}
	public int getFbc_step() {
		return fbc_step;
	}
	public void setFbc_step(int fbc_step) {
		this.fbc_step = fbc_step;
	}
	public int getFbc_depth() {
		return fbc_depth;
	}
	public void setFbc_depth(int fbc_depth) {
		this.fbc_depth = fbc_depth;
	}
}
