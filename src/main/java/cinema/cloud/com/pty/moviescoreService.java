package cinema.cloud.com.pty;

import java.util.List;

import cinema.cloud.com.dto.movieVO;


public interface moviescoreService {
	//글 등록
	void insertMovieScore(movieVO vo);
	
	//글 수정
	void updateMovieScore(movieVO vo);
	
	//글 삭제
	void deleteMovieScore(movieVO vo);
	
	//글 상세 조회
	movieVO getMovieScore(movieVO vo);
	
	//글 목록 조회
	List<movieVO> getMovieScoreList(movieVO vo);
}
