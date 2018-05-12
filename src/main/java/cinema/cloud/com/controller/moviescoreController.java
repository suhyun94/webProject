package cinema.cloud.com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.CloudBoardVO;
import cinema.cloud.com.dto.CloudVO;
import cinema.cloud.com.pty.CloudService;

@Controller
@SessionAttributes("moviescores")
public class moviescoreController {
	
	@Autowired
	private CloudService CloudService;
	
	
	@RequestMapping("/moviescore") // 무비스코어로이동
	public String gomoviescore(CloudVO vo,CloudBoardVO cbvo,Model model) {
		System.out.println("무비스코어로이동");
		model.addAttribute("score", CloudService.getCloudList2(vo));
		model.addAttribute("reply", CloudService.getreply(cbvo));
		return "moviescore/moviescore";
	}

	@RequestMapping("/cloudBoardForm")
	public String cloudBoardForm(HttpServletRequest re) {
		
		System.out.println("평점폼");
		
		
		return "moviescore/writemoviescore";
	}
	
	@RequestMapping("/insertCloudBoard") //글작성 처리
	public String insertCloudBoard(CloudBoardVO vo, HttpServletRequest re) {
		System.out.println("마음의 준비...");
		
		String content = re.getParameter("cb_content");
		vo.setCb_content(content);
		
		//System.out.println(m_code);
		
		/*
		model.addAttribute("MP_TITLE",title);
		model.addAttribute("MP_CONTENT",content);
		*/		
		
		CloudService.insertCloudBoard(vo);
		return "redirect:moviescore";
	}
}
