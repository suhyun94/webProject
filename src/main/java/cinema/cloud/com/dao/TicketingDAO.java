package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.SeatVO;
import cinema.cloud.com.dto.TicketChooseVO;
import cinema.cloud.com.dto.TicketingVO;

@Repository("TicketingDAO")
public class TicketingDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<TicketChooseVO> ticketChoose(TicketChooseVO vo) {
		System.out.println("ticketChoose");
		return mybatis.selectList("TicketingDAO.ticketChoose", vo);
	}
	
	public List<CinemaVO> ticketLoc(CinemaVO vo) {
		System.out.println("ticketLoc");
		return mybatis.selectList("TicketingDAO.ticketLoc", vo);
	}
	
	public String getStNum(SeatVO vo) {
		System.out.println("getStNum");
		String st_num =(String)mybatis.selectOne("TicketingDAO.getStNum",vo);
		return st_num;
	}
	
	public void insertTicket(TicketingVO vo) {
		System.out.println("insertTicket");
		mybatis.insert("TicketingDAO.insertTicket",vo);
	}
	
	public void updateScreenInfo(SeatVO vo) {
		System.out.println("updateScreenInfo");
		mybatis.insert("TicketingDAO.updateScreenInfo",vo);
	}
}
