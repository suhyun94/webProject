package cinema.cloud.com.ndj;

import java.util.List;

import cinema.cloud.com.dto.productVO;

public interface productService {
	//글 등록
	void insertProduct(productVO vo);
	
	//글 수정
	void updateProduct(productVO vo);
	
	//글 삭제
	void deleteProduct(productVO vo);
	
	//글 상세 조회
	productVO getProduct(productVO vo);
	
	//글 목록 조회
	List<productVO> getProductList(productVO vo);
	
	//팝콘
	List<productVO> getProductListA(productVO vo);
		
	//음료
	List<productVO> getProductListB(productVO vo);
	
	//티켓
	List<productVO> getProductListC(productVO vo);
}
