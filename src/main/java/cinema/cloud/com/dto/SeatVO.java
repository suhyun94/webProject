package cinema.cloud.com.dto;

public class SeatVO {
	//좌석
	private int st_code, s_code;
	private String st_num, st_delDate;
	
	public int getSt_code() {
		return st_code;
	}
	public void setSt_code(int st_code) {
		this.st_code = st_code;
	}
	public int getS_code() {
		return s_code;
	}
	public void setS_code(int s_code) {
		this.s_code = s_code;
	}
	public String getSt_num() {
		return st_num;
	}
	public void setSt_num(String st_num) {
		this.st_num = st_num;
	}
	public String getSt_delDate() {
		return st_delDate;
	}
	public void setSt_delDate(String st_delDate) {
		this.st_delDate = st_delDate;
	}	
}
