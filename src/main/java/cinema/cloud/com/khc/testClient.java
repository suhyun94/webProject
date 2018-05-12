package cinema.cloud.com.khc;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.moviepostVO;
import cinema.cloud.com.dto.productVO;

public class testClient {
// 무비포스트 DB연결 작동 및 값 가져오기 테스트
	public static void main(String[] args) {
		AbstractApplicationContext c = 
		new GenericXmlApplicationContext("applicationContext.xml");
		
		CinemaService ms = 
		(CinemaService) c.getBean("CinemaService");
		
		CinemaVO vo = new CinemaVO();
		ms.selectCinema(vo);

		
		// 4. 글 목록 검색 기능 테스트
	
	List<CinemaVO> cinema = ms.getCinemaList(vo); // 여기서 select 하거
	//System.out.println(movie);
	
	for (CinemaVO ma : cinema) {
		System.out.println("---> " + ma.toString());
	}

	List<CinemaVO> theater = ms.getTheaterList(vo); // 여기서 select 하거
	System.out.println("=================================");
	//System.out.println(movie);
	//vo.setC_LOC("서울");
	for (CinemaVO ma : theater) {
		System.out.println("---> " + ma.toString());
	}
	
	
	c.close();
	
	
}

}
