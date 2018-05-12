package cinema.cloud.com.dto;

public class MprVO {
	private int mpr_code;
	private String mpr_content;
	private int u_code;
	private int mp_code;
	
	//유저 닉네임 저장
	private String u_id;

	public int getMpr_code() {
		return mpr_code;
	}

	public void setMpr_code(int mpr_code) {
		this.mpr_code = mpr_code;
	}

	public String getMpr_content() {
		return mpr_content;
	}

	public void setMpr_content(String mpr_content) {
		this.mpr_content = mpr_content;
	}

	public int getU_code() {
		return u_code;
	}

	public void setU_code(int u_code) {
		this.u_code = u_code;
	}

	public int getMp_code() {
		return mp_code;
	}

	public void setMp_code(int mp_code) {
		this.mp_code = mp_code;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	
	
	
}
