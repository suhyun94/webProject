package cinema.cloud.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.khc.CinemaService;
 
@Controller
@SessionAttributes("cinema")
public class CinemaController {
	
	@Autowired
	private CinemaService cinemaService;
	
/*	public void setMoviepostService(moviepostService moviepostService) {
		this.moviepostService = moviepostService;
	}*/

	@RequestMapping("/cinema") // 영화관 페이지로 이동
	public String goCinema(CinemaVO vo,Model model,HttpSession s) {
		System.out.println("시네마 이동");
		s.setAttribute("cinemalist", cinemaService.getCinemaList(vo));
		//model.addAttribute("cinemalist",cinemaService.getCinemaList(vo));
		return "cinema/cinema";
	}
	
	@RequestMapping("/cinema2") // 영화관 페이지로 이동
	public String goCinema1(CinemaVO vo,Model model,HttpSession s) {
		System.out.println("시네마 이동");
		s.setAttribute("theaterlist", cinemaService.getTheaterList(vo));
		//model.addAttribute("cinemalist",cinemaService.getCinemaList(vo));
		return "cinema/cinema2";
	}
	
	@RequestMapping("/cinema3") // 영화관 페이지로 이동
	public String goCinema2(CinemaVO vo,Model model,HttpSession s) {
		System.out.println("시네마 이동");
		s.setAttribute("cinemainfolist", cinemaService.getCinemaInfoList(vo));
		//model.addAttribute("cinemalist",cinemaService.getCinemaList(vo));
		return "cinema/cinema3";
	}
}
