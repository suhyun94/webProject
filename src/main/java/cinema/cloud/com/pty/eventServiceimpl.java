package cinema.cloud.com.pty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.eventDAO;
import cinema.cloud.com.dto.eventVO;

//테스트
@Service("eventService")
public class eventServiceimpl implements eventService {
	
	@Autowired
	private eventDAO eventDAO;
	
	
	public void setEventDAO(eventDAO eventDAO) {
		this.eventDAO = eventDAO;
	}

	@Override
	public void insertEvent(eventVO vo) {

	}

	@Override
	public void updateEvent(eventVO vo) {

	}

	@Override
	public void deleteEvent(eventVO vo) {

		
	}

	@Override
	public eventVO getEvent(eventVO vo) {
	
		return eventDAO.getEvent(vo);
	}

	@Override
	public List<eventVO> getEventList(eventVO vo) {
		
		return eventDAO.getEventList(vo);
	}



}
