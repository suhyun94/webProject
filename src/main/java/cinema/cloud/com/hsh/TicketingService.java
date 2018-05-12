package cinema.cloud.com.hsh;

import java.util.List;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.SeatVO;
import cinema.cloud.com.dto.TicketChooseVO;
import cinema.cloud.com.dto.TicketingVO;

public interface TicketingService {
	List<TicketChooseVO> ticketChoose(TicketChooseVO vo);
	List<CinemaVO> ticketLoc(CinemaVO vo);	
	//좌석가져오기
	String getStNum(SeatVO vo);
	//예매 추가
	void insertTicket(TicketingVO vo);
	//상영정보테이블에 예매좌석 업데이트
	void updateScreenInfo(SeatVO vo);
}
