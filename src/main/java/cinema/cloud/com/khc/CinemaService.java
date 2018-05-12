package cinema.cloud.com.khc;

import java.util.List;

import cinema.cloud.com.dto.CinemaVO;

public interface CinemaService {
	//지역 선택 (서울 , 경기 , 인천 , 대구 , 부산)
	void selectLocation(CinemaVO vo);
	
	//영화관 선택
	void selectCinema(CinemaVO vo);
	
	//영화 예약
	void reserveMovie(CinemaVO vo);
	
//	CinemaVO getCinema(CinemaVO vo);
	
	//글 목록 조회
	List<CinemaVO> getCinemaList(CinemaVO vo);
	
	List<CinemaVO> getTheaterList(CinemaVO vo);

	List<CinemaVO> getCinemaInfoList(CinemaVO vo);
	
	//지역 불러오기(중복없이)
	List<CinemaVO> getCinemaLoc(CinemaVO vo);
	
}	
