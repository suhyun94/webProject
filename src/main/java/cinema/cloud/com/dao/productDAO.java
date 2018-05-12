package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.productVO;
   

@Repository("productDAO")
public class productDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	/*
	 * 
	 	public void insertmoviepost(moviepostVO vo) { 
		System.out.println("moviepost 글 작성 처리");
		mybatis.insert("moviepostDAO.insertMoviepost",vo);
		System.out.println("moviepost 글 작성 완료");
	}
	
	public void updatemoviepost(moviepostVO vo) {
		System.out.println("moviepost 글 수정  처리");
		mybatis.update("moviepostDAO.updateMoviepost", vo);
		System.out.println("moviepost 글 수정 완료");
	}
	
	
	public void deletemoviepost(moviepostVO vo) { 
		System.out.println("moviepost 글 삭제 처리");
		mybatis.delete("moviepostDAO.deleteMoviepost",vo);
		System.out.println("moviepost 글 삭제 완료");
	}
	

	 */
	
	
	public productVO getProduct(productVO vo) {
		System.out.println("===> productDAO getProduct 수행");
		return mybatis.selectOne("productDAO.getProduct", vo);
	}
	
	
	
	public List<productVO> getProductList(productVO vo) {
		System.out.println("===> productDAO getProductList 수행");
		return mybatis.selectList("productDAO.getProductList", vo);
	}
	
	public List<productVO> getProductListA(productVO vo) {
		System.out.println("===> productDAO getProductListA 수행");
		return mybatis.selectList("productDAO.getProductListA", vo);
	}
	
	public List<productVO> getProductListB(productVO vo) {
		System.out.println("===> productDAO getProductListB 수행");
		return mybatis.selectList("productDAO.getProductListB", vo);
	}
	
	
	public List<productVO> getProductListC(productVO vo) {
		System.out.println("===> productDAO getProductListC 수행");
		return mybatis.selectList("productDAO.getProductListC", vo);
	}
	
	
	
	
}
