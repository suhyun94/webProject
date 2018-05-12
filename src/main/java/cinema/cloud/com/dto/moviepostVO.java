package cinema.cloud.com.dto;

public class moviepostVO {
	private int MP_CODE;
	private String MP_TITLE,MP_DATE,MP_LIKE,MP_PIC,M_CODE,U_CODE,MP_CONTENT;
	private String searchCondition,searchKeyword; //검색용
	
	

	public int getMP_CODE() {
		return MP_CODE;
	}

	public void setMP_CODE(int mP_CODE) {
		MP_CODE = mP_CODE;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getMP_CONTENT() {
		return MP_CONTENT;
	}

	public void setMP_CONTENT(String mP_CONTENT) {
		MP_CONTENT = mP_CONTENT;
	}



	public String getMP_TITLE() {
		return MP_TITLE;
	}

	public void setMP_TITLE(String mP_TITLE) {
		MP_TITLE = mP_TITLE;
	}

	public String getMP_DATE() {
		return MP_DATE;
	}

	public void setMP_DATE(String mP_DATE) {
		MP_DATE = mP_DATE;
	}

	public String getMP_LIKE() {
		return MP_LIKE;
	}

	public void setMP_LIKE(String mP_LIKE) {
		MP_LIKE = mP_LIKE;
	}

	public String getMP_PIC() {
		return MP_PIC;
	}

	public void setMP_PIC(String mP_PIC) {
		MP_PIC = mP_PIC;
	}

	public String getM_CODE() {
		return M_CODE;
	}

	public void setM_CODE(String m_CODE) {
		M_CODE = m_CODE;
	}

	public String getU_CODE() {
		return U_CODE;
	}

	public void setU_CODE(String u_CODE) {
		U_CODE = u_CODE;
	}
	

	@Override
	public String toString() {
		return "MoviePostVO :: MP_CODE= " + MP_CODE + "MP_TITLE=" + MP_TITLE
				+ "MP_DATE=" + MP_DATE + "MP_LIKE=" + MP_LIKE + "MP_PIC" + MP_PIC + "M_CODE=" + M_CODE + "U_CODE=" + U_CODE + "MP_CONTENT=" + MP_CONTENT ;
	}
	//무비포스트 글 내용이없다
	

}
