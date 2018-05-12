package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.noticeVO;

@Repository("noticeDAO")
public class noticeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertnotice(noticeVO vo) { // 작동확인
		System.out.println("notice 글 작성 처리");
		mybatis.insert("noticeDAO.insertnotice",vo);
		System.out.println("notice 글 작성 완료");
	}
	
	public void updatenotice(noticeVO vo) {
		System.out.println("notice 글 수정  처리");
		mybatis.update("noticeDAO.updatenotice", vo);
		System.out.println("notice 글 수정 완료");
	}
	
	
	public void deletenotice(noticeVO vo) { // 작동확인
		System.out.println("notice 글 삭제 처리");
		mybatis.delete("noticeDAO.deletenotice",vo);
		System.out.println("notice 글 삭제 완료");
	}
	
	
	public noticeVO getnotice(noticeVO vo) { // 글목록 중 하나 작동확인
		System.out.println("===> Mybatis로 getnotice 수행");
		return (noticeVO) mybatis.selectOne("noticeDAO.getNotice", vo);
	}
	
	public List<noticeVO> getNoticeList(noticeVO vo) {
		System.out.println("===> noticeDAO getNoticeList 수행");
		return mybatis.selectList("noticeDAO.getNoticelist", vo);
	}
	
	
}
