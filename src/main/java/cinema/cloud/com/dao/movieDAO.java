package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.movieVO;

   

@Repository("movieDAO")
public class movieDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public movieVO getMovie(movieVO vo) { // 글목록 중 하나 작동확인
		System.out.println("===> Mybatis로 getMoviepost 수행");
		return (movieVO) mybatis.selectOne("movieDAO.getBoard", vo);
	}
	
	public List<movieVO> getMovieList(movieVO vo) {
		System.out.println("===> movieDAO getMovieList 수행");
		return mybatis.selectList("movieDAO.getBoardList", vo);
	}
	
	public List<movieVO> getAllMovie(movieVO vo) {
		System.out.println("===>  movieDAO 영화목록불러오는중..");
		return mybatis.selectList("movieDAO.getAllMovie", vo);
	}
	
	
	
	
}
