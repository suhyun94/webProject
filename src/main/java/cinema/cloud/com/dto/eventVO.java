package cinema.cloud.com.dto;

import java.util.Date;

public class eventVO {
	private String 
	e_CODE, e_NAME,
	e_TYPE, e_IMG, u_CODE;
	
	private Date
	e_START_DATE, e_END_DATE;
	
	public String getE_CODE() {
		return e_CODE;
	}

	public void setE_CODE(String e_CODE) {
		this.e_CODE = e_CODE;
	}

	public Date getE_START_DATE() {
		return e_START_DATE;
	}

	public void setE_START_DATE(Date e_START_DATE) {
		this.e_START_DATE = e_START_DATE;
	}

	public Date getE_END_DATE() {
		return e_END_DATE;
	}

	public void setE_END_DATE(Date e_END_DATE) {
		this.e_END_DATE = e_END_DATE;
	}

	public String getE_NAME() {
		return e_NAME;
	}

	public void setE_NAME(String e_NAME) {
		this.e_NAME = e_NAME;
	}

	public String getE_TYPE() {
		return e_TYPE;
	}

	public void setE_TYPE(String e_TYPE) {
		this.e_TYPE = e_TYPE;
	}

	public String getE_IMG() {
		return e_IMG;
	}

	public void setE_IMG(String e_IMG) {
		this.e_IMG = e_IMG;
	}

	public String getU_CODE() {
		return u_CODE;
	}

	public void setU_CODE(String u_CODE) {
		this.u_CODE = u_CODE;
	}






}
