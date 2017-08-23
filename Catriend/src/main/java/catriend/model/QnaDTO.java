package catriend.model;

import java.sql.Date;

public class QnaDTO {
	private int q_index;
	private String q_title;
	private String q_content;
	private Date q_date;
	private String q_answer;
	private int q_a_result;
	private String u_id;
	// 편의를 위해 rNum
	private int rNum;

	// 기본생성자
	public QnaDTO() {
	}

	// 인자생성자
	public QnaDTO(int q_index, String q_title, String q_content, Date q_date, String q_answer, int q_a_result,
			String u_id) {
		this.q_index = q_index;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_date = q_date;
		this.q_answer = q_answer;
		this.q_a_result = q_a_result;
		this.u_id = u_id;
	}

	public QnaDTO(int q_index, String q_title, String q_content, Date q_date, String q_answer, int q_a_result,
			String u_id, int rNum) {
		super();
		this.q_index = q_index;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_date = q_date;
		this.q_answer = q_answer;
		this.q_a_result = q_a_result;
		this.u_id = u_id;
		this.rNum = rNum;
	}

	// getter() / setter()
	public int getQ_index() {
		return q_index;
	}

	public void setQ_index(int q_index) {
		this.q_index = q_index;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public Date getQ_date() {
		return q_date;
	}

	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}

	public String getQ_answer() {
		return q_answer;
	}

	public void setQ_answer(String q_answer) {
		this.q_answer = q_answer;
	}

	public int getQ_a_result() {
		return q_a_result;
	}

	public void setQ_a_result(int q_a_result) {
		this.q_a_result = q_a_result;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
}
