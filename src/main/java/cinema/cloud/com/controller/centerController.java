package cinema.cloud.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.LafVO;
import cinema.cloud.com.dto.QaVO;
import cinema.cloud.com.dto.noticeVO;
import cinema.cloud.com.khc.LafService;
import cinema.cloud.com.ndj.QaService;
import cinema.cloud.com.ndj.noticeService;

@Controller
@SessionAttributes("center")
public class centerController {
	
	@Autowired
	private noticeService noticeService;
	@Autowired
	private QaService QaService;
	@Autowired
	private LafService LafService;
	
	@RequestMapping("/center")
	public String gocenter(noticeVO vo,QaVO vo2,LafVO vo3,Model model,HttpSession h) {
		System.out.println("고객 센터 이동");
		//model.addAttribute("center", noticeService.getNoticeList(vo)); // 공지사항 불러오기
		h.setAttribute("notice", noticeService.getNoticeList(vo));
		h.setAttribute("Qa", QaService.getQaList(vo2));
		h.setAttribute("Laf", LafService.getLafList(vo3));
		System.out.println("고객 센터 값 불러오기 완료");
		return "csCenter/center";
	}
	
	@RequestMapping("/getnotice")
	public String getnotice(noticeVO vo,Model model,HttpSession h) {
		System.out.println("공지사항 클릭");
		model.addAttribute("notice", noticeService.getNotice(vo));
		System.out.println("공지사항 상세보기");
		return "csCenter/getnotice";
	}
	
	@RequestMapping("/getqa")
	public String getqa(QaVO vo,Model model,HttpSession h) {
		System.out.println("Q/A 클릭");
		model.addAttribute("qa", QaService.getQa(vo));
		System.out.println("Q&A 상세보기");
		return "csCenter/getqa";
	}
 	
	@RequestMapping("/getlaf")
	public String getLaf(LafVO vo,Model model,HttpSession h) {
		System.out.println("분실물센터 클릭");
		model.addAttribute("laf", LafService.getLaf(vo));
		System.out.println("분실물센터 상세보기");
		return "csCenter/getlaf";
	}
}
