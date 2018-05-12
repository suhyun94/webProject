package cinema.cloud.com.pty;

import java.util.List;

import cinema.cloud.com.dto.CloudBoardVO;
import cinema.cloud.com.dto.CloudVO;


 

public interface CloudService {
	//글 등록
	void insertCloudBoard(CloudBoardVO vo);
		
	//글 수정
	void updateCloudBoard(CloudBoardVO vo);
	
	//글 삭제
	void deleteCloudBoard(CloudBoardVO vo);
	//관람객 뽑아오자
	List<CloudBoardVO> getreply(CloudBoardVO vo);
	
	
	//글 목록 조회
	List<CloudVO> getCloudList(CloudVO vo);
	
	//글 목록 조회2
	List<CloudVO> getCloudList2(CloudVO vo);
	
	
	
}
