package cinema.cloud.com.pty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.movieDAO;
import cinema.cloud.com.dto.movieVO;

//테스트
@Service("moviechartService")
public class moviechartServiceimpl implements moviechartService {
	
	@Autowired
	private movieDAO movieDAO;
	
	
	public void setMovieChartDAO(movieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}

	@Override
	public void insertMovieChart(movieVO vo) {
		//구현중..
	}

	@Override
	public void updateMovieChart(movieVO vo) {
		// 구현중..
	}

	@Override
	public void deleteMovieChart(movieVO vo) {
		// 구현중..
	}

	@Override
	public movieVO getMovieChart(movieVO vo) {
		return movieDAO.getMovie(vo);
	}

	@Override
	public List<movieVO> getMovieChartList(movieVO vo) {
		//무비 DB 가져오는거
		return movieDAO.getMovieList(vo);
	}

	@Override
	public List<movieVO> getAllMovie(movieVO vo) {
		return movieDAO.getAllMovie(vo);
	}



}
