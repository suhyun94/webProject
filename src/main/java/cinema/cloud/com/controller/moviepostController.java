package cinema.cloud.com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.MprVO;
import cinema.cloud.com.dto.UsersVO;
import cinema.cloud.com.dto.moviepostVO;
import cinema.cloud.com.ndj.moviepostService;


@Controller
@SessionAttributes("moviepost")
public class moviepostController {
	
	@Autowired
	private moviepostService moviepostService;
	
	
	//검색조건 목록 설정하기
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("내용", "MP_CONTENT");
		conditionMap.put("제목", "MP_TITLE"); 
		
		return conditionMap;
	}
	
	
	@RequestMapping("/moviepost") // 무비포스트이동
	public String gomoviepost(moviepostVO vo,Model model,HttpSession s) {
		System.out.println("테스트");
		if(vo.getSearchCondition() == null) vo.setSearchCondition("MP_TITLE");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
		//s.setAttribute("moviepostlist", moviepostService.getMoviepostList(vo));
		model.addAttribute("moviepostlist",moviepostService.getMoviepostList(vo));
		
		return "moviepost/moviepost";
	}
	
	@RequestMapping("/getmoviepost") // 상세보기
	public String getmoviepost(moviepostVO vo,MprVO mvo,Model model, HttpServletRequest re) {
		System.out.println("무비포스트 창 확인중..");
		model.addAttribute("movielist", moviepostService.getMoviepost(vo));
		
		String mp_code =re.getParameter("MP_CODE");
		mvo.setMp_code(Integer.parseInt(mp_code));
		
		model.addAttribute("reply", moviepostService.getreplyList(mvo));
		return "moviepost/getmoviepost";
		}
	
	@RequestMapping("/write") // 글작성 창 여는거
	public String write(moviepostVO vo,Model model,HttpSession h,UsersVO uvo) {
		System.out.println("무비포스트 창 확인중..");
		//감히 로그인도 안하고 글적어?
		if(h.getAttribute("u_id") == null) {
			//model.addAttribute("logincheck", "1");
			return "redirect:moviepost/moviepost";
		}else if(h.getAttribute("u_id") != null) {
			//model.addAttribute("logincheck", "2");
			return "moviepost/getmoviepost";
		}
		return "moviepost/getmoviepost";
			
		
		}
	
	@RequestMapping("/insertmoviepost") //글작성 처리
	public String insertmoviepost(moviepostVO vo,HttpServletRequest re,Model model) {
		String title = re.getParameter("MP_TITLE");
		String content = re.getParameter("MP_CONTENT");
		
		vo.setMP_TITLE(title);
		vo.setMP_CONTENT(content);
		
		/*
		model.addAttribute("MP_TITLE",title);
		model.addAttribute("MP_CONTENT",content);
		*/		
		
		moviepostService.insertMoviepost(vo);
		return "redirect:moviepost";
	}
	
	@RequestMapping("/updatemoviepost") // 글 수정
	public String updatemovielist(moviepostVO vo) {
		moviepostService.updateMoviepost(vo);
		return "moviepost/moviepost";
	}
	
	@RequestMapping("/likeclick") // 조항요~
	public String likeup(moviepostVO vo,Model model,HttpSession h) {
		//로그인 해놔야 좋아요누를ㄹ수이따
		if(h.getAttribute("u_id") == null) {
			//model.addAttribute("logincheck", "1");
			return "redirect:moviepost";
		}else {
			moviepostService.like(vo);
			return "redirect:moviepost";
		}
	}
	

	
	 
	
	 

}
