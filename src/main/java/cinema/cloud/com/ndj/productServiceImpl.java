package cinema.cloud.com.ndj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.productDAO;
import cinema.cloud.com.dto.productVO;

@Service("productService")
public class productServiceImpl implements productService {
	
	
	@Autowired
	private productDAO productDAO;
	
	
	@Override
	public void insertProduct(productVO vo) {
		// 구현중

	}

	@Override
	public void updateProduct(productVO vo) {
		// 구현중

	}

	@Override
	public void deleteProduct(productVO vo) {
		// 구현중

	}

	@Override
	public productVO getProduct(productVO vo) {
		return productDAO.getProduct(vo);
	}

	@Override
	public List<productVO> getProductList(productVO vo) {
	// product DB 리스트 가져오자
		return productDAO.getProductList(vo);
	}

	@Override
	public List<productVO> getProductListC(productVO vo) {
		
		return productDAO.getProductListC(vo);
	}

	@Override
	public List<productVO> getProductListA(productVO vo) {
		return productDAO.getProductListA(vo);
	}

	@Override
	public List<productVO> getProductListB(productVO vo) {
		return productDAO.getProductListB(vo);
	}
	
	

}
