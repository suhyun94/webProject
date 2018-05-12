package cinema.cloud.com.khc;

import java.util.List;

import cinema.cloud.com.dto.LafVO;

 
public interface LafService {
	//글 등록
	void selectLaf(LafVO vo);
	
	//글 수정
	void updateLaf(LafVO vo);
	
	//글 삭제
	void deleteLaf(LafVO vo);
	
	//글 상세 조회
	LafVO getLaf(LafVO vo);
	
	//글 목록 조회
	List<LafVO> getLafList(LafVO vo);
}
