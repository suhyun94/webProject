package cinema.cloud.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.movieVO;
import cinema.cloud.com.pty.movietrailerService;

@Controller
@SessionAttributes("movietrailer")
public class movietrailerController {	
	@Autowired
	private movietrailerService movietrailerService;
	
	@RequestMapping("/movietrailer") // 무비트레일러로 이동
	public String gomovie(movieVO vo,Model model) {
		System.out.println("무비트레일러로이동");
		return "movietrailer";
	}

}
