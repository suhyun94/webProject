package cinema.cloud.com.hsh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.TicketingDAO;
import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.ScreeninfoVO;
import cinema.cloud.com.dto.SeatVO;
import cinema.cloud.com.dto.TicketChooseVO;
import cinema.cloud.com.dto.TicketingVO;

@Service("ticketService")
public class TicketingServiceImpl implements TicketingService {

	@Autowired
	private TicketingDAO ticketDAO;
	
	@Override
	public List<TicketChooseVO> ticketChoose(TicketChooseVO vo) {
		System.out.println("서비스");
		return ticketDAO.ticketChoose(vo);
	}

	@Override
	public List<CinemaVO> ticketLoc(CinemaVO vo) {
		System.out.println("지역선택!");
		System.out.println(vo.getC_LOC()+"//service");
		return ticketDAO.ticketLoc(vo);
	}

	//좌석 가져오기
	@Override
	public String getStNum(SeatVO vo) {
		String st_num = ticketDAO.getStNum(vo);
		return st_num;
	}

	@Override
	public void insertTicket(TicketingVO vo) {
		ticketDAO.insertTicket(vo);
	}

	@Override
	public void updateScreenInfo(SeatVO vo) {
		ticketDAO.updateScreenInfo(vo);
	}

}
