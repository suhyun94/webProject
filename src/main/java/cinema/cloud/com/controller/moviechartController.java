package cinema.cloud.com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.movieVO;
import cinema.cloud.com.pty.moviechartService;

@Controller
@SessionAttributes("moviechart")
public class moviechartController {
	
	@Autowired
	private moviechartService moviechartService;
	
	//검색조건 목록 설정하기
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "m_TITLE"); 		
		return conditionMap;
	}

	@RequestMapping("/moviechart") // 무비차트로이동
	public String gomovie(movieVO vo,Model model,HttpSession s) {
		System.out.println("테스트");
		if(vo.getSearchCondition() == null) vo.setSearchCondition("m_TITLE");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
		s.setAttribute("moviechartlist", moviechartService.getMovieChartList(vo));
//		model.addAttribute("moviechartlist",moviechartService.getMovieChartList(vo));
		return "moviechart/moviechart";
	}
	
	@RequestMapping("/getmoviechart")
	public String getmoviechart(movieVO vo,Model model) {
		System.out.println("무비차트 창 확인중..");
		model.addAttribute("movie", moviechartService.getMovieChart(vo));
		return "moviechart/getmoviechart";
	}

}
