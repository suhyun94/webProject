package cinema.cloud.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.CinemaVO;
import cinema.cloud.com.dto.moviepostVO;
   

@Repository("CinemaDAO")
//@Configuration
public class CinemaDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	//private SqlSession mybatis;
	
	/*public CinemaDAO() { 
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}*/
	
	public List<CinemaVO> getCinemaList(CinemaVO vo) {
		System.out.println("===> 영화관");
		return mybatis.selectList("CinemaDAO.getBoardList", vo);
	}
	
	public List<CinemaVO> getTheaterList(CinemaVO vo) {
		System.out.println("===> 영화관2");
		return mybatis.selectList("CinemaDAO.getTheaterList", vo);
	}
	public List<CinemaVO> getCinemaInfoList(CinemaVO vo) {
		System.out.println("===> 영화관3");
		return mybatis.selectList("CinemaDAO.getCinemaInfoList", vo);
	}
	
	public List<CinemaVO> getCinemaLoc(CinemaVO vo) {
		System.out.println("===> 영화관 지역 불러오기");
		return mybatis.selectList("CinemaDAO.getCinemaLoc", vo);
	}
	
}
