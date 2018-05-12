package cinema.cloud.com.dao;
//Lost and Found : 분실물 센터
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.LafVO;


   

@Repository("LafDAO")
public class LafDAO {
	
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
	

	
	public LafVO getLaf(LafVO vo) { // 글목록 중 하나 작동확인
		System.out.println("===>  수행");
		return (LafVO) mybatis.selectOne("LafDAO.getLaf", vo);
	}
	
	public List<LafVO> getLafList(LafVO vo) { // 글목록 다 작동확인 
		System.out.println("===> Lost and Found 수행");
		return mybatis.selectList("LafDAO.getLaflist", vo);
	}
	
	
	
}
