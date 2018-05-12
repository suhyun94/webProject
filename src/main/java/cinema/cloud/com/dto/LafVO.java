package cinema.cloud.com.dto;

import java.sql.Date;

public class LafVO {
	private int l_number;
	private String l_title;
	private String l_content,mg_id,u_code;
	private Date l_regdate;
	private String l_question;
	private String l_answer;
	private String l_kind;
	public int getL_number() {
		return l_number;
	}
	public void setL_number(int l_number) {
		this.l_number = l_number;
	}
	public String getL_title() {
		return l_title;
	}
	public void setL_title(String l_title) {
		this.l_title = l_title;
	}
	public String getL_content() {
		return l_content;
	}
	public void setL_content(String l_content) {
		this.l_content = l_content;
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
	public Date getL_regdate() {
		return l_regdate;
	}
	public void setL_regdate(Date l_regdate) {
		this.l_regdate = l_regdate;
	}
	public String getL_question() {
		return l_question;
	}
	public void setL_question(String l_question) {
		this.l_question = l_question;
	}
	public String getL_answer() {
		return l_answer;
	}
	public void setL_answer(String l_answer) {
		this.l_answer = l_answer;
	}
	public String getL_kind() {
		return l_kind;
	}
	public void setL_kind(String l_kind) {
		this.l_kind = l_kind;
	}
	
	
	
		
	@Override
	public String toString() {
		return l_number+","+l_title+","+l_content+","+mg_id+","+u_code+","+l_regdate+","+l_question+","+l_answer+","+l_kind;
	}
	
	
	
}
