package cinema.cloud.com.ndj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.moviepostDAO;
import cinema.cloud.com.dto.MprVO;
import cinema.cloud.com.dto.moviepostVO;
//테스트
@Service("moviepostService") 
//@Configuration
public class moviepostServiceimpl implements moviepostService {
	
	@Autowired
	private moviepostDAO moviepostDAO;

	@Override
	public void insertMoviepost(moviepostVO vo) {
		// 무포글작성
		moviepostDAO.insertmoviepost(vo);
	}

	@Override
	public void updateMoviepost(moviepostVO vo) {
		// 무포글수정
		moviepostDAO.updatemoviepost(vo);

	}

	@Override
	public void deleteMoviepost(moviepostVO vo) {
		// 무비포스트 글 삭제
		moviepostDAO.deletemoviepost(vo);
	}

	@Override
	public moviepostVO getMoviepost(moviepostVO vo) {
		// 무비포스트 목록 중 한개!
		return moviepostDAO.getMoviepost(vo);
	}

	@Override
	public List<moviepostVO> getMoviepostList(moviepostVO vo) {
		// 무비포스트 DB 목록 가져오자
		return moviepostDAO.getMoviepostList(vo);
		
	}

	@Override
	public void like(moviepostVO vo) {
		//좋아요
		moviepostDAO.like(vo);
		
	}

	@Override
	public List<MprVO> getreplyList(MprVO vo) {
		//댓글 불러오기
		return moviepostDAO.getreplyList(vo);
	}



}
