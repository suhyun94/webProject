package cinema.cloud.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cinema.cloud.com.dto.productVO;
import cinema.cloud.com.ndj.productService;


@Controller
@SessionAttributes("store")
public class storeController {
	
	@Autowired
	private productService productService;
	
	@RequestMapping("/store") // 스토어 이동 (전체 목록)
	public String gostore(productVO vo,Model model,HttpSession s) {
		System.out.println("스토어 이동");
		model.addAttribute("store",productService.getProductList(vo));
		System.out.println("확인");
		return "store/store";
	}

	@RequestMapping("/store2") // 티켓
	public String gostoret(productVO vo,Model model,HttpSession s) {
		System.out.println("스토어 매핑 값 전달되는지?");
		model.addAttribute("store", productService.getProductListC(vo));
		System.out.println("잘수행");
		return "store/store2";
	}
	
	@RequestMapping("/store3") // 팝컨
	public String gostorep(productVO vo,Model model,HttpSession s) {
		System.out.println("스토어 매핑 값 전달되는지?");
		model.addAttribute("store", productService.getProductListA(vo));
		System.out.println("잘수행");
		return "store/store3";
	}
	
	@RequestMapping("/store4") // 음료
	public String gostorec(productVO vo,Model model,HttpSession s) {
		System.out.println("스토어 매핑 값 전달되는지?");
		model.addAttribute("store", productService.getProductListB(vo));
		System.out.println("잘수행");
		return "store/store4";
	}
	
	@RequestMapping("/getproduct") // 상품 상세보기
	public String getmoviepost(productVO vo,Model model) {
		System.out.println("무비포스트 창 확인중..");
		model.addAttribute("product", productService.getProduct(vo));
		return "store/getstore";
		}

}
