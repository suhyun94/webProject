package cinema.cloud.com.dto;

import java.util.Date;

public class movieVO {
	
	private String m_CODE,m_TITLE,m_GRADE,m_ACTOR,m_DIRECTOR,m_GENRE,m_RUNNINGTIME,
	m_VIEWER_NUM,m_CONTENT,m_IMAGE,m_TRAILER;
	private Date m_START_DATE;
	private String searchCondition,searchKeyword; // 검색용
	
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
	public String getM_TRAILER() {
		return m_TRAILER;
	}
	public void setM_TRAILER(String m_TRAILER) {
		this.m_TRAILER = m_TRAILER;
	}

	public String getM_CODE() {
		return m_CODE;
	}
	public void setM_CODE(String m_CODE) {
		this.m_CODE = m_CODE;
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
	public String getM_ACTOR() {
		return m_ACTOR;
	}
	public void setM_ACTOR(String m_ACTOR) {
		this.m_ACTOR = m_ACTOR;
	}
	public String getM_DIRECTOR() {
		return m_DIRECTOR;
	}
	public void setM_DIRECTOR(String m_DIRECTOR) {
		this.m_DIRECTOR = m_DIRECTOR;
	}
	public String getM_GENRE() {
		return m_GENRE;
	}
	public void setM_GENRE(String m_GENRE) {
		this.m_GENRE = m_GENRE;
	}
	public Date getM_START_DATE() {
		return m_START_DATE;
	}
	public void setM_START_DATE(Date m_START_DATE) {
		this.m_START_DATE = m_START_DATE;
	}
	public String getM_RUNNINGTIME() {
		return m_RUNNINGTIME;
	}

	public void setM_RUNNINGTIME(String m_RUNNINGTIME) {
		this.m_RUNNINGTIME = m_RUNNINGTIME;
	}
	public String getM_VIEWER_NUM() {
		return m_VIEWER_NUM;
	}
	public void setM_VIEWER_NUM(String m_VIEWER_NUM) {
		this.m_VIEWER_NUM = m_VIEWER_NUM;
	}
	public String getM_CONTENT() {
		return m_CONTENT;
	}
	public void setM_CONTENT(String m_CONTENT) {
		this.m_CONTENT = m_CONTENT;
	}
	public String getM_IMAGE() {
		return m_IMAGE;
	}
	public void setM_IMAGE(String m_IMAGE) {
		this.m_IMAGE = m_IMAGE;
	}

	@Override
	public String toString() {
		return "제목: " + m_TITLE +"영화사진: "+m_IMAGE;
	}

}
