package catriend.model;

import java.sql.Date;

public class CatBoarderCommentDTO {
	private int cbc_index;
	private String cbc_content;
	private Date cbc_date;
	private int cbc_group;
	private int cbc_step;
	private int cbc_depth;
	private String u_id;
	private int cb_index;
	
	
	//기본생성자
	public CatBoarderCommentDTO() {}

	
	//인자생성자
	public CatBoarderCommentDTO(int cbc_index, String cbc_content, Date cbc_date, int cbc_group, int cbc_step,
			int cbc_depth, String u_id, int cb_index) {
		this.cbc_index = cbc_index;
		this.cbc_content = cbc_content;
		this.cbc_date = cbc_date;
		this.cbc_group = cbc_group;
		this.cbc_step = cbc_step;
		this.cbc_depth = cbc_depth;
		this.u_id = u_id;
		this.cb_index = cb_index;
	}
	
	//getter() / setter(
	
	public int getCbc_index() {
		return cbc_index;
	}


	public void setCbc_index(int cbc_index) {
		this.cbc_index = cbc_index;
	}


	public String getCbc_content() {
		return cbc_content;
	}


	public void setCbc_content(String cbc_content) {
		this.cbc_content = cbc_content;
	}


	public Date getCbc_date() {
		return cbc_date;
	}


	public void setCbc_date(Date cbc_date) {
		this.cbc_date = cbc_date;
	}


	public int getCbc_group() {
		return cbc_group;
	}


	public void setCbc_group(int cbc_group) {
		this.cbc_group = cbc_group;
	}


	public int getCbc_step() {
		return cbc_step;
	}


	public void setCbc_step(int cbc_step) {
		this.cbc_step = cbc_step;
	}


	public int getCbc_depth() {
		return cbc_depth;
	}


	public void setCbc_depth(int cbc_depth) {
		this.cbc_depth = cbc_depth;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public int getCb_index() {
		return cb_index;
	}


	public void setCb_index(int cb_index) {
		this.cb_index = cb_index;
	}
}
