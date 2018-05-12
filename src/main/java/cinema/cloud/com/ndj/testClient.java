package cinema.cloud.com.ndj;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
/*import cinema.cloud.com.dto.moviepostVO;*/
import cinema.cloud.com.dto.productVO;

public class testClient {
// 무비포스트 DB연결 작동 및 값 가져오기 테스트
	public static void main(String[] args) {
		AbstractApplicationContext c = 
		new GenericXmlApplicationContext("applicationContext.xml");
		
/*		moviepostService ms = 
		(moviepostService) c.getBean("moviepostService");*/
		
		productService ps = (productService) c.getBean("productService");
		
		productVO pvo = new productVO();
		//moviepostVO vo = new moviepostVO();
		//moviepostVO vo2 = new moviepostVO();
		//ms.insertMoviepost(vo);

		
		// 4. 글 목록 검색 기능 테스트
	
	//List<moviepostVO> movie = ms.getMoviepostList(vo); // 여기서 select 하거
	//System.out.println(movie);
	
/*	for (moviepostVO ma : movie) {
			System.out.println("---> " + ma.toString());
				}*/
	

	
	//vo.setMP_CODE("5");

/*	moviepostVO getmovie = ms.getMoviepost(vo);
	
	System.out.println(getmovie.toString());*/
	
	/*vo.setM_CODE("test");
	vo.setMP_CODE("test");
	vo.setMP_CONTENT("test");
	vo.setMP_DATE("2018-03-22");
	//vo.setMP_LIKE(0);
	vo.setMP_PIC("test");
	vo.setMP_TITLE("test");
	vo.setU_CODE("test");
	
	ms.insertMoviepost(vo); ?
	System.out.println(vo);
	*/
//	vo.setMP_CODE("t7");
//	vo.setMP_TITLE("test222222222222222");
//	vo.setMP_CONTENT("ㅎㅇ");

//	ms.updateMoviepost(vo);
		
//	vo.setMP_CODE("t7");	
//	vo2.setMP_CODE("t7");	
//	ms.deleteMoviepost(vo2);
		pvo.setP_type("A");
		
		List<productVO> product = ps.getProductListC(pvo); // product
		for (productVO pr : product) {
			System.out.println("---> " + pr.toString());
				}
	
	c.close();
				
				
	}

}
