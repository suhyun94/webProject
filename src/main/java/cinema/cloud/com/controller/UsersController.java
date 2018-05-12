package cinema.cloud.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cinema.cloud.com.dto.UsersVO;
import cinema.cloud.com.hsh.MailService;
import cinema.cloud.com.hsh.UsersService;

@Controller
@SessionAttributes("users")
public class UsersController {
	@Autowired
	private UsersService usersService;
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping("/index")
	public String index() {		
		return "index";
	}
	
	@RequestMapping("/naverSession")
	public int naverSession(HttpSession se, HttpServletRequest rq) {
		String id = rq.getParameter("u_id");
		if(id == null) {
			return 0;
		}else {
			se.setAttribute("u_id", id);
			return 1;
		}
	}
	
	//로그인 폼
	@RequestMapping("/loginForm")
	public String loginUser() {
		return "register/loginForm";
	}	
	
	@RequestMapping("/idCheck")
	public @ResponseBody int idCheck(UsersVO vo, HttpServletRequest req) {
		String id = req.getParameter("u_id");
		vo.setU_id(id);
		int chk = usersService.idCheck(vo);
		return chk;
	}
	//로그인 처리
	@RequestMapping("/login")
	public String login(RedirectAttributes red, HttpSession se,UsersVO vo) {
		System.out.println("로그인!!");
		
		if(usersService.idCheck(vo) == 0) {
			System.out.println("아이디 체크");
			red.addFlashAttribute("idError","존재하지 않는 아이디입니다.");
			System.out.println("체크 성공");
			return "redirect:loginForm";
		}
		if(usersService.loginCheck(vo)==1) {
			UsersVO user = usersService.getUser(vo);
			String u_id = user.getU_id();
			int u_code = user.getU_code();
			se.setAttribute("u_id", u_id);
			se.setAttribute("u_code", u_code);
			return "redirect:index";
		}else {
			return "redirect:index";
		}		
	}	
	//로그아웃처리
	@RequestMapping("/logout")
	public String logout(HttpSession se) {
		se.invalidate();
		return "redirect:index";
	}	
	//회원가입 폼
	@RequestMapping("/registerForm")
	public String registerForm() {
		
		return "register/registerForm";
	}	
	//회원가입 처리
	@RequestMapping("/insertUser")
	public String insertUser(HttpServletRequest req, HttpSession se,UsersVO vo) {
		System.out.println("회원가입 성공");
		
		String id = req.getParameter("u_id");
		se.setAttribute("u_id", id);	
		
		usersService.insertUser(vo);
		return "register/register";
	}
	//아이디/비밀번호찾기
	@RequestMapping("/idPwFind")
	public String idPwFind(Model m) {
		
		return "register/idPwFind";
	}
	//아이디 찾기
	@RequestMapping("/idFind")
	public String idFind(RedirectAttributes red, UsersVO vo) {
	
		String id = usersService.idFind(vo);
		System.out.println(id);
		red.addFlashAttribute("id", id);
		System.out.println("넘겨줘라");
		return "redirect:idPwFind";
	}
	//비밀번호 찾기
	@RequestMapping("/pwFind")
	public String pwFind(UsersVO vo,RedirectAttributes red) {
		String id = vo.getU_id();
		System.out.println(id);
		if(usersService.idCheck(vo) == 0) {
			red.addFlashAttribute("idError","존재하지 않는 아이디입니다.");
			return "redirect:idPwFind";
		}else if(usersService.pwFind(vo) == 0) {
			red.addFlashAttribute("emailError","아이디와 이메일이 일치하지 않습니다.");
			return "redirect:idPwFind";
		}else {
			System.out.println("랜덤 비밀번호를 이메일로 보내자 가즈아@@");
			//랜덤비번고민해보자!
			String password = "hong5214";
	        usersService.updatePw(password); // 해당 유저의 DB정보 변경
	 
            String subject = "임시 비밀번호 발급 안내 입니다.";
            StringBuilder sb = new StringBuilder();
            sb.append("귀하의 임시 비밀번호는 " + password + " 입니다.");
            mailService.send(subject, sb.toString(), "hongsh221@gmail.com", "hsh6487@naver.com", null);
            System.out.println("메일전송되었나?");
            red.addFlashAttribute("resultMsg", "귀하의 이메일 주소로 새로운 임시 비밀번호를 발송 하였습니다.");
            return "redirect:idPwFind";
		}
	}
	//회원정보 수정
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("users") UsersVO vo,HttpSession se) {
		System.out.println("회원수정");
		String id = (String)se.getAttribute("u_id");
		vo.setU_id(id);
		usersService.updateUser(vo);
		return "redirect:mypage";
	}
	//회원 탈퇴
	@RequestMapping("/deleteUser")
	public String deleteUser(UsersVO vo,HttpSession se) {
		System.out.println("회원삭제");
		String id = (String)se.getAttribute("u_id");
		vo.setU_id(id);
		usersService.deleteUser(vo);
		se.invalidate();
		return "redirect:index";
	}
	//마이페이지
	@RequestMapping("/mypage")
	public String mypage(HttpSession se,UsersVO vo, Model model) {
		String id = (String) se.getAttribute("u_id");
		vo.setU_id(id);
		model.addAttribute("users", usersService.getUser(vo));
		return "register/mypage";
	}
	//..보류
	@RequestMapping("/getUser")
	public String getUser(UsersVO vo, Model model) {
		System.out.println("회원 상세 조회");
		model.addAttribute("users", usersService.getUser(vo));
		return "getUser";
	}
	
	@RequestMapping("/getUserList")
	public String getUserList(UsersVO vo, Model model) {
		
		return "getUserList";
	}
	
	
}
