package cinema.cloud.com.ndj;

import java.util.List;

import cinema.cloud.com.dto.noticeVO;

public interface noticeService {
	//글 등록
	void insertNotice(noticeVO vo);
	
	//글 수정
	void updateNotice(noticeVO vo);
	
	//글 삭제
	void deleteNotice(noticeVO vo);
	
	//글 상세 조회
	noticeVO getNotice(noticeVO vo);
	
	//글 목록 조회
	List<noticeVO> getNoticeList(noticeVO vo);
}
