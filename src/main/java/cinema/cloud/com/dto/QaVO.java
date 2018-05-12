package cinema.cloud.com.dto;

import java.sql.Date;

public class QaVO {
	private int q_code;
	private String q_title;
	private String q_content,mg_id,u_code;
	private Date q_regdate;
	private String q_question;
	private String q_answer;
	private String q_kind;
	
	
	
	
	public int getQ_code() {
		return q_code;
	}
	public void setQ_code(int q_code) {
		this.q_code = q_code;
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
	public String getMg_id() {
		return mg_id;
	}
	public void setMg_id(String mg_id) {
		this.mg_id = mg_id;
	}
	public String getU_code() {
		return u_code;
	}
	public void setU_code(String u_code) {
		this.u_code = u_code;
	}
	public Date getQ_regdate() {
		return q_regdate;
	}
	public void setQ_regdate(Date q_regdate) {
		this.q_regdate = q_regdate;
	}
	public String getQ_question() {
		return q_question;
	}
	public void setQ_question(String q_question) {
		this.q_question = q_question;
	}
	public String getQ_answer() {
		return q_answer;
	}
	public void setQ_answer(String q_answer) {
		this.q_answer = q_answer;
	}
	public String getQ_kind() {
		return q_kind;
	}
	public void setQ_kind(String q_kind) {
		this.q_kind = q_kind;
	}
	
	
	
	
	
}
