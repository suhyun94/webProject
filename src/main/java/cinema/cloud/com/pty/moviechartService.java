package cinema.cloud.com.pty;

import java.util.List;

import cinema.cloud.com.dto.movieVO;


public interface moviechartService {
	//글 등록
	void insertMovieChart(movieVO vo);
	
	//글 수정
	void updateMovieChart(movieVO vo);
	
	//글 삭제
	void deleteMovieChart(movieVO vo);
	
	//글 상세 조회
	movieVO getMovieChart(movieVO vo);
	
	//글 목록 조회
	List<movieVO> getMovieChartList(movieVO vo);
	
	List<movieVO> getAllMovie(movieVO vo);
}