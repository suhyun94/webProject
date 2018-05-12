package cinema.cloud.com.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.ScreeninfoVO;
import cinema.cloud.com.dto.SeatVO;
import cinema.cloud.com.dto.TicketChooseVO;
import cinema.cloud.com.dto.TicketingVO;
import cinema.cloud.com.dto.movieVO;
import cinema.cloud.com.hsh.TicketingService;
import cinema.cloud.com.khc.CinemaService;
import cinema.cloud.com.pty.moviechartService;

@Controller
@SessionAttributes("ticketing")
public class TicketingController {
	@Autowired
	private TicketingService ticketingService;
	
	@Autowired
	private moviechartService moviechartService;
	
	@Autowired
	private CinemaService cinemaService;
	
	//상영정보 선택
	@RequestMapping("/ticketing")
	public String ticketing(movieVO mvo,CinemaVO cvo,TicketChooseVO tvo, Model m, HttpServletRequest re) {
		System.out.println("된다?11");
		m.addAttribute("movie",moviechartService.getAllMovie(mvo));
		System.out.println("된다?22");
		m.addAttribute("cinema",cinemaService.getCinemaLoc(cvo));
		
		String c_loc = re.getParameter("c_loc");
		if(c_loc == null) {
			cvo.setC_LOC("서울");
		}else {
			cvo.setC_LOC(c_loc);
		}		
		m.addAttribute("ticketLoc",ticketingService.ticketLoc(cvo));
		
		String m_code = re.getParameter("m_code");
		String c_code = re.getParameter("c_code");
		String s_date = re.getParameter("s_date");
		
		System.out.println("mm");
		if(m_code == null && c_code == null && s_date == null) {
			System.out.println("?");
		}else {
			tvo.setM_code(Integer.parseInt(m_code));
			tvo.setC_code(Integer.parseInt(c_code));
			tvo.setS_date(s_date);
			m.addAttribute("ticket",ticketingService.ticketChoose(tvo));
		}	
		System.out.println("예매를 해보자");
		return "ticketing/ticketing";
	}
	
	//좌석선택
	@RequestMapping("/seatChoose")
	public String ticketLoc(ScreeninfoVO svo,SeatVO stvo, Model m, HttpServletRequest re) {
		String s_code = re.getParameter("s_code");
		String c_name = re.getParameter("c_name");
		String th_num = re.getParameter("th_num");
		String m_title = re.getParameter("m_title");
		String s_start_time = re.getParameter("s_start_time");
		String th_row = re.getParameter("th_row");
		String th_col = re.getParameter("th_col");
		
		m.addAttribute("s_code",s_code);
		m.addAttribute("c_name",c_name);
		m.addAttribute("th_num",th_num);
		m.addAttribute("m_title",m_title);
		m.addAttribute("s_start_time",s_start_time);
		
		//선택한 상영정보에 대한 예약좌석 가져오기		
		stvo.setS_code(Integer.parseInt(s_code));
		
		String st_num = ticketingService.getStNum(stvo);
		int row = Integer.parseInt(th_row);
		int col = Integer.parseInt(th_col);
		
		m.addAttribute("st_num",st_num);
		m.addAttribute("row",row);
		m.addAttribute("col",col);		
		
		return "ticketing/seatChoose";		
	}
	
	//결제완료
	@RequestMapping("/ticketResult")
	public String ticketResult(HttpSession se,HttpServletRequest re,TicketingVO tvo,SeatVO svo,Model m) {
		System.out.println("거의 성공!@!@!가자!!");
		String st_num = re.getParameter("st_num");
		String t_num = re.getParameter("t_num");
		String t_price = re.getParameter("t_price");
		String s_code = re.getParameter("s_code");
		
		int u_code = (int) se.getAttribute("u_code");
		
		tvo.setT_num(t_num);
		tvo.setT_price(Integer.parseInt(t_price));
		tvo.setS_code(Integer.parseInt(s_code));
		tvo.setU_code(u_code);
		ticketingService.insertTicket(tvo);
		
		svo.setSt_num(st_num);
		svo.setS_code(Integer.parseInt(s_code));
		ticketingService.updateScreenInfo(svo);
		
		return "ticketing/ticketResult";
	}

}
