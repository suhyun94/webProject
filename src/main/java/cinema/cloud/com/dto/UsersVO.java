package cinema.cloud.com.dto;

import java.sql.Date;

public class UsersVO {
	private int u_code;
	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_phone;
	private String u_email;
	private String u_birth;
	private String u_grade;
	private Date u_date;
	private int u_grade_cnt;
	
	public int getU_code() {
		return u_code;
	}
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_birth() {
		return u_birth;
	}
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}
	public String getU_grade() {
		return u_grade;
	}
	public void setU_grade(String u_grade) {
		this.u_grade = u_grade;
	}
	public Date getU_date() {
		return u_date;
	}
	public void setU_date(Date u_date) {
		this.u_date = u_date;
	}
	public int getU_grade_cnt() {
		return u_grade_cnt;
	}
	public void setU_grade_cnt(int u_grade_cnt) {
		this.u_grade_cnt = u_grade_cnt;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	@Override
	public String toString() {
		return "성공"+ u_code + ", " + u_id;
	}
}
