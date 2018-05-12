package cinema.cloud.com.khc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.CinemaDAO;
import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.khc.CinemaService;


//테스트
@Service("CinemaService")
//@Configuration
public class CinemaServiceimpl implements CinemaService {
	
	@Autowired
	private CinemaDAO cinemaDAO;
	
	
	public void setCinemaDAO(CinemaDAO cinemaDAO) {
		this.cinemaDAO = cinemaDAO;
	}

	@Override
	public void selectLocation(CinemaVO vo) {
		//구현중..
	}
	
	@Override
	public void selectCinema(CinemaVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void reserveMovie(CinemaVO vo) {
		// 구현중..
	}



	
	/*@Override
	public CinemaVO getCinema(CinemaVO vo) {
		// 구현중..
		return null;
	}
	*/
	@Override
	public List<CinemaVO> getCinemaList(CinemaVO vo) {
		// 무비포스트 DB 목록 가져오자
		return cinemaDAO.getCinemaList(vo);
	}
	@Override
	public List<CinemaVO> getTheaterList(CinemaVO vo) {
		// 무비포스트 DB 목록 가져오자
		return cinemaDAO.getTheaterList(vo);
	}
	public List<CinemaVO> getCinemaInfoList(CinemaVO vo) {
		// 무비포스트 DB 목록 가져오자
		return cinemaDAO.getCinemaInfoList(vo);
	}

	@Override
	public List<CinemaVO> getCinemaLoc(CinemaVO vo) {
		
		return cinemaDAO.getCinemaLoc(vo);
	}


}
