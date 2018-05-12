package cinema.cloud.com.pty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.movieDAO;
import cinema.cloud.com.dto.movieVO;
import cinema.cloud.com.pty.moviechartService;
import cinema.cloud.com.pty.moviescoreService;
import cinema.cloud.com.pty.movietrailerService;
//테스트
@Service("movietrailerService")
//@Configuration
public class movietrailerServiceimpl implements movietrailerService {
	
	@Autowired
	private movieDAO movieDAO;
	
	
	public void setMovieTrailerDAO(movieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}

	@Override
	public void insertMovieTrailer(movieVO vo) {
		//구현중..
	}

	@Override
	public void updateMovieTrailer(movieVO vo) {
		// 구현중..
	}

	@Override
	public void deleteMovieTrailer(movieVO vo) {
		// 구현중..
	}

	@Override
	public movieVO getMovieTrailer(movieVO vo) {
		// 구현중..
		return null;
	}

	@Override
	public List<movieVO> getMovieTrailerList(movieVO vo) {
		
		return movieDAO.getMovieList(vo);
	}



}
