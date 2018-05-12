package cinema.cloud.com.dto;

public class CloudBoardVO {
	private int cb_CODE, u_CODE, m_CODE,cb_directorscore,cb_storyscore,cb_actorscore,cb_goodscore;
	private String cb_content, cb_date;
	
	// user id 출력용
	private String u_id;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getCb_directorscore() {
		return cb_directorscore;
	}
	public void setCb_directorscore(int cb_directorscore) {
		this.cb_directorscore = cb_directorscore;
	}
	public int getCb_storyscore() {
		return cb_storyscore;
	}
	public void setCb_storyscore(int cb_storyscore) {
		this.cb_storyscore = cb_storyscore;
	}
	public int getCb_actorscore() {
		return cb_actorscore;
	}
	public void setCb_actorscore(int cb_actorscore) {
		this.cb_actorscore = cb_actorscore;
	}
	public int getCb_goodscore() {
		return cb_goodscore;
	}
	public void setCb_goodscore(int cb_goodscore) {
		this.cb_goodscore = cb_goodscore;
	}
	public int getCb_CODE() {
		return cb_CODE;
	}
	public void setCb_CODE(int cb_CODE) {
		this.cb_CODE = cb_CODE;
	}
	public int getU_CODE() {
		return u_CODE;
	}
	public void setU_CODE(int u_CODE) {
		this.u_CODE = u_CODE;
	}
	public int getM_CODE() {
		return m_CODE;
	}
	public void setM_CODE(int m_CODE) {
		this.m_CODE = m_CODE;
	}
	public String getCb_content() {
		return cb_content;
	}
	public void setCb_content(String cb_content) {
		this.cb_content = cb_content;
	}
	public String getCb_date() {
		return cb_date;
	}
	public void setCb_date(String cb_date) {
		this.cb_date = cb_date;
	}


	

}
