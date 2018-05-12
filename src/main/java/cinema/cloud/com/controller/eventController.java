package cinema.cloud.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.eventVO;
import cinema.cloud.com.pty.eventService;


@Controller
@SessionAttributes("event")
public class eventController {
	
	@Autowired
	private eventService eventService;

	@RequestMapping("/event") //이벤트 페이지로 이동
	public String gomovie(eventVO vo,Model model,HttpSession s) {
		System.out.println("테스트");
		s.setAttribute("eventlist", eventService.getEventList(vo));

		return "event/event";
	}
	
	
	@RequestMapping("/getevent")
	public String getmoviechart(eventVO  vo,Model model) {
		System.out.println("이벤트 창 확인중..");
		model.addAttribute("event",eventService.getEvent(vo));
		return "event/getevent";
		}

}
