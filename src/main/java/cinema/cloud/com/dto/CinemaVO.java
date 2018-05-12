package cinema.cloud.com.dto;

public class CinemaVO {
	private String C_CODE,C_NAME,C_LOC,C_ADR,C_INFO,C_PIC,C_MAPX,C_MAPY,C_TRANS,U_CODE;


	public String getC_CODE() {
		return C_CODE;
	}
	public void setC_CODE(String c_CODE) {
		C_CODE = c_CODE;
	}
	public String getC_NAME() {
		return C_NAME;
	}
	public void setC_NAME(String c_NAME) {
		C_NAME = c_NAME;
	}
	public String getC_LOC() {
		return C_LOC;
	}
	public void setC_LOC(String c_LOC) {
		C_LOC = c_LOC;
	}
	public String getC_ADR() {
		return C_ADR;
	}
	public void setC_ADR(String c_ADR) {
		C_ADR = c_ADR;
	}
	public String getC_INFO() {
		return C_INFO;
	}
	public void setC_INFO(String c_INFO) {
		C_INFO = c_INFO;
	}
	public String getC_PIC() {
		return C_PIC;
	}
	public void setC_PIC(String c_PIC) {
		C_PIC = c_PIC;
	}
	public String getC_MAPX() {
		return C_MAPX;
	}
	public void setC_MAPX(String c_MAPX) {
		C_MAPX = c_MAPX;
	}
	public String getC_MAPY() {
		return C_MAPY;
	}
	public void setC_MAPY(String c_MAPY) {
		C_MAPY = c_MAPY;
	}
	public String getC_TRANS() {
		return C_TRANS;
	}
	public void setC_TRANS(String c_TRANS) {
		C_TRANS = c_TRANS;
	}
	public String getU_CODE() {
		return U_CODE;
	}
	public void setU_CODE(String u_CODE) {
		U_CODE = u_CODE;
	}
	@Override
	public String toString() {
		return "영화관 코드: " + C_CODE + ", 영화관 이름: " + C_NAME+ ", 영화관 지역: " + C_LOC+ ", 영화관 주소: " + C_ADR+ ""
				+ ", 영화관 정보: " + C_INFO+ ", 영화관 사진: " + C_PIC+ ", 지도 x좌표: " + C_MAPX+ ", 지도 y좌표: " + C_MAPY+ 
				", 교통편: " + C_TRANS+ ", 매니저 아이디: " + U_CODE;
	}
	
}
