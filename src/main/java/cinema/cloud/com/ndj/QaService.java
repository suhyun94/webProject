package cinema.cloud.com.ndj;

import java.util.List;

import cinema.cloud.com.dto.QaVO;

public interface QaService {
	//글 등록
	void insertQa(QaVO vo);
	
	//글 수정
	void updateQa(QaVO vo);
	
	//글 삭제
	void deleteQa(QaVO vo);
	
	//글 상세 조회
	QaVO getQa(QaVO vo);
	
	//글 목록 조회
	List<QaVO> getQaList(QaVO vo);
}
