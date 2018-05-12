package cinema.cloud.com.pty;

import java.util.List;

import cinema.cloud.com.dto.movieVO;


public interface movietrailerService {
	//글 등록
	void insertMovieTrailer(movieVO vo);
	
	//글 수정
	void updateMovieTrailer(movieVO vo);
	
	//글 삭제
	void deleteMovieTrailer(movieVO vo);
	
	//글 상세 조회
	movieVO getMovieTrailer(movieVO vo);
	
	//글 목록 조회
	List<movieVO> getMovieTrailerList(movieVO vo);
}
