package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.MprVO;
import cinema.cloud.com.dto.moviepostVO;
   

@Repository("moviepostDAO")
public class moviepostDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	
	public void insertmoviepost(moviepostVO vo) { // 작동확인
		System.out.println("moviepost 글 작성 처리");
		mybatis.insert("moviepostDAO.insertMoviepost",vo);
		System.out.println("moviepost 글 작성 완료");
	}
	
	public void updatemoviepost(moviepostVO vo) {
		System.out.println("moviepost 글 수정  처리");
		mybatis.update("moviepostDAO.updateMoviepost", vo);
		System.out.println("moviepost 글 수정 완료");
	}
	
	public void like(moviepostVO vo) {
		System.out.println("moviepost 좋아요+");
		mybatis.update("moviepostDAO.likeup",vo);
		System.out.println("moviepost 좋아요 확인");
	}
	
	
	public void deletemoviepost(moviepostVO vo) { // 작동확인
		System.out.println("moviepost 글 삭제 처리");
		mybatis.delete("moviepostDAO.deleteMoviepost",vo);
		System.out.println("moviepost 글 삭제 완료");
	}
	
	
	

	
	public moviepostVO getMoviepost(moviepostVO vo) { // 글목록 중 하나 작동확인
		System.out.println("===> Mybatis로 getMoviepost 수행");
		return (moviepostVO) mybatis.selectOne("moviepostDAO.getMoviepost", vo);
	}
	
	public List<moviepostVO> getMoviepostList(moviepostVO vo) { // 글목록 다 작동확인 
		System.out.println("===> movieDAO getMoviepostList 수행");
		return mybatis.selectList("moviepostDAO.getMoviepostList", vo);
	}
	
	public List<MprVO> getreplyList(MprVO vo) { // 글목록 다 작동확인 
		System.out.println("===> movieDAO reply  수행");
		return mybatis.selectList("moviepostDAO.reply", vo);
	}
	
	
	
}
