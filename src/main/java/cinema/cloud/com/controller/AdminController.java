package cinema.cloud.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cinema.cloud.com.dto.UsersVO;
import cinema.cloud.com.hsh.UsersService;

@Controller
public class AdminController {
	@Autowired
	private UsersService usersService;
	
	@RequestMapping("/admin")
	public String admin(HttpSession se,UsersVO vo, Model model) {
		String id = (String) se.getAttribute("u_id");
		vo.setU_id(id);
		model.addAttribute("users", usersService.getUser(vo));
		return "admin/admin";
	}
}
