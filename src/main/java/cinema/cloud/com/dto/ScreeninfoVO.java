package cinema.cloud.com.dto;

public class ScreeninfoVO {
	//상영정보
	private int s_code, s_seat_rest, m_code, th_code;
	private String s_date, s_start_time;
	
	public int getS_code() {
		return s_code;
	}
	public void setS_code(int s_code) {
		this.s_code = s_code;
	}
	public int getS_seat_rest() {
		return s_seat_rest;
	}
	public void setS_seat_rest(int s_seat_rest) {
		this.s_seat_rest = s_seat_rest;
	}
	public int getM_code() {
		return m_code;
	}
	public void setM_code(int m_code) {
		this.m_code = m_code;
	}
	public int getTh_code() {
		return th_code;
	}
	public void setTh_code(int th_code) {
		this.th_code = th_code;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getS_start_time() {
		return s_start_time;
	}
	public void setS_start_time(String s_start_time) {
		this.s_start_time = s_start_time;
	}
	

}
