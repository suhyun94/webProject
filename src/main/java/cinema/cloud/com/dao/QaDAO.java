package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.QaVO;

   

@Repository("QaDAO")
public class QaDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	
/*	public void insertmoviepost(QaVO vo) { // 작동확인
		System.out.println("moviepost 글 작성 처리");
		mybatis.insert("moviepostDAO.insertMoviepost",vo);
		System.out.println("moviepost 글 작성 완료");
	}
	
	public void updatemoviepost(QaVO vo) {
		System.out.println("moviepost 글 수정  처리");
		mybatis.update("moviepostDAO.updateMoviepost", vo);
		System.out.println("moviepost 글 수정 완료");
	}
	
	
	public void deletemoviepost(QaVO vo) { // 작동확인
		System.out.println("moviepost 글 삭제 처리");
		mybatis.delete("moviepostDAO.deleteMoviepost",vo);
		System.out.println("moviepost 글 삭제 완료");
	}
	
	*/
	

	
	public QaVO getQa(QaVO vo) { // 글목록 중 하나 작동확인
		System.out.println("===> Mybatis로 getMoviepost 수행");
		return (QaVO) mybatis.selectOne("QaDAO.getQa", vo);
	}
	
	public List<QaVO> getQaList(QaVO vo) { // 글목록 다 작동확인 
		System.out.println("===> movieDAO getQalist 수행");
		return mybatis.selectList("QaDAO.getQalist", vo);
	}
	
	
	
}
