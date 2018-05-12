package cinema.cloud.com.dto;

public class CloudVO {
	private String cl_code,cl_reply,cl_directorscore,cl_storyscore,cl_actorscore
			,cl_goodscore,cl_pic;
	private int cl_like;	
	//유저
	private int u_code;	
	//무비
	private int m_code;
	private String m_TITLE;
	private String m_GRADE;
	private String m_IMAGE;
	
	
	//보드
	
	private String cb_content;

	//////////////////////////////////////////////////////////////////////////////////////////////////////

	public String getCb_content() {
		return cb_content;
	}


	public void setCb_content(String cb_content) {
		this.cb_content = cb_content;
	}


	public String getM_TITLE() {
		return m_TITLE;
	}


	public void setM_TITLE(String m_TITLE) {
		this.m_TITLE = m_TITLE;
	}


	public String getM_GRADE() {
		return m_GRADE;
	}


	public void setM_GRADE(String m_GRADE) {
		this.m_GRADE = m_GRADE;
	}


	public String getM_IMAGE() {
		return m_IMAGE;
	}


	public void setM_IMAGE(String m_IMAGE) {
		this.m_IMAGE = m_IMAGE;
	}


	public String getCl_code() {
		return cl_code;
	}


	public void setCl_code(String cl_code) {
		this.cl_code = cl_code;
	}


	public String getCl_reply() {
		return cl_reply;
	}


	public void setCl_reply(String cl_reply) {
		this.cl_reply = cl_reply;
	}


	public String getCl_directorscore() {
		return cl_directorscore;
	}


	public void setCl_directorscore(String cl_directorscore) {
		this.cl_directorscore = cl_directorscore;
	}


	public String getCl_storyscore() {
		return cl_storyscore;
	}


	public void setCl_storyscore(String cl_storyscore) {
		this.cl_storyscore = cl_storyscore;
	}


	public String getCl_actorscore() {
		return cl_actorscore;
	}


	public void setCl_actorscore(String cl_actorscore) {
		this.cl_actorscore = cl_actorscore;
	}


	public String getCl_goodscore() {
		return cl_goodscore;
	}


	public void setCl_goodscore(String cl_goodscore) {
		this.cl_goodscore = cl_goodscore;
	}


	public String getCl_pic() {
		return cl_pic;
	}


	public void setCl_pic(String cl_pic) {
		this.cl_pic = cl_pic;
	}


	public int getCl_like() {
		return cl_like;
	}


	public void setCl_like(int cl_like) {
		this.cl_like = cl_like;
	}


	public int getU_code() {
		return u_code;
	}


	public void setU_code(int u_code) {
		this.u_code = u_code;
	}


	public int getM_code() {
		return m_code;
	}


	public void setM_code(int m_code) {
		this.m_code = m_code;
	}
	

	

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "우와태영이형짱짱" + m_TITLE + m_IMAGE;
	}

	
	
	
}
