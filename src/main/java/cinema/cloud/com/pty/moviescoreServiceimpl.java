package cinema.cloud.com.pty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.movieDAO;
import cinema.cloud.com.dto.movieVO;
import cinema.cloud.com.pty.moviechartService;
import cinema.cloud.com.pty.moviescoreService;
//테스트
@Service("moviescoreService")
//@Configuration
public class moviescoreServiceimpl implements moviescoreService {
	
	@Autowired
	private movieDAO movieDAO;
	
	
	public void setMovieScoreDAO(movieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}

	@Override
	public void insertMovieScore(movieVO vo) {
		//구현중..
	}

	@Override
	public void updateMovieScore(movieVO vo) {
		// 구현중..
	}

	@Override
	public void deleteMovieScore(movieVO vo) {
		// 구현중..
	}

	@Override
	public movieVO getMovieScore(movieVO vo) {
		// 구현중..
		return null;
	}

	@Override
	public List<movieVO> getMovieScoreList(movieVO vo) {
		
		return movieDAO.getMovieList(vo);
	}



}
