package cinema.cloud.com.pty;

import java.util.List;

import cinema.cloud.com.dto.eventVO;



public interface eventService {
	//글 등록
	void insertEvent(eventVO vo);
	
	//글 수정
	void updateEvent(eventVO vo);
	
	//글 삭제
	void deleteEvent(eventVO vo);
	
	//글 상세 조회
	eventVO getEvent(eventVO vo);
	
	//글 목록 조회
	List<eventVO> getEventList(eventVO vo);
}
