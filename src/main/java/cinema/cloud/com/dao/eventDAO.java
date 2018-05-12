package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.eventVO;

   

@Repository("eventDAO")

public class eventDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public eventVO getEvent(eventVO vo) {
		System.out.println("===> eventVo getEvent 수행");
		return mybatis.selectOne("eventDAO.getEvent", vo);
	}
		
	
	public List<eventVO> getEventList(eventVO vo) {
		System.out.println("===> eventVO getEventList 수행");
		return mybatis.selectList("eventDAO.getBoardList", vo);
	}
	
	
	
}
