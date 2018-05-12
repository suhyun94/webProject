package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.CloudBoardVO;
import cinema.cloud.com.dto.CloudVO;

@Repository("cloudDAO")
public class CloudDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertcloud(CloudBoardVO vo) { // 작동확인
		System.out.println("cloud 글 작성 처리");
		mybatis.insert("CloudDAO.insertcloud",vo);
		System.out.println("cloud 글 작성 완료");
	}
	
	public void updatecloud(CloudBoardVO vo) {
		System.out.println("cloud 글 수정  처리");
		mybatis.update("CloudDAO.updateCloudBoard", vo);
		System.out.println("cloud 글 수정 완료");
	}
	
/*	public void like(CloudBoardVO vo) {
		System.out.println("cloud 좋아요+");
		mybatis.update("CloudDAO.likeup",vo);
		System.out.println("cloud 좋아요 확인");
	}*/
	
	public List<CloudBoardVO> getreply(CloudBoardVO vo) { // 글목록 다 작동확인 
		System.out.println("===> 평점 목록 가져오는중");
		return mybatis.selectList("CloudDAO.getreplylist", vo);
	}
	
	/////////////////////////////////////////////////////////////////////////
	public void deletecloud(CloudBoardVO vo) { // 작동확인
		System.out.println("cloud 글 삭제 처리");
		mybatis.delete("CloudDAO.deleteCloudBoard",vo);
		System.out.println("cloud 글 삭제 완료");
	}

	
	public List<CloudVO> getCloudList(CloudVO vo) { // 글목록 다 작동확인 
		System.out.println("===> 평점 목록 가져오는중");
		return mybatis.selectList("CloudDAO.getCloudList", vo);
	}
	
	public List<CloudVO> getAllCloud(CloudVO vo) { // 글목록 다 작동확인 
		System.out.println("===> 평점 목록 가져오는중");
		return mybatis.selectList("CloudDAO.getCloudMovieList", vo);
	}

	
}
