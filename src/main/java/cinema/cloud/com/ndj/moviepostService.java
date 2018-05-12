package cinema.cloud.com.ndj;

import java.util.List;

import cinema.cloud.com.dto.MprVO;
import cinema.cloud.com.dto.moviepostVO;

public interface moviepostService {
	//글 등록
	void insertMoviepost(moviepostVO vo);
	
	//글 수정
	void updateMoviepost(moviepostVO vo);
	
	//글 삭제
	void deleteMoviepost(moviepostVO vo);
	
	//좋아여!!
	void like(moviepostVO vo);
	
	//글 상세 조
	moviepostVO getMoviepost(moviepostVO vo);
	
	//글 목록 조회
	List<moviepostVO> getMoviepostList(moviepostVO vo);
	
	//댓글조회
	List<MprVO> getreplyList(MprVO vo);
}
