package cinema.cloud.com.pty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.CloudDAO;
import cinema.cloud.com.dto.CloudBoardVO;
import cinema.cloud.com.dto.CloudVO;
@Service("cloudService")
public class CloudServiceImpl implements CloudService {
	
	@Autowired
	private CloudDAO CloudDAO;



	@Override
	public List<CloudVO> getCloudList(CloudVO vo) {
		return CloudDAO.getCloudList(vo);
	}

	@Override
	public List<CloudVO> getCloudList2(CloudVO vo) {
		return CloudDAO.getAllCloud(vo);
	}

	@Override
	public void insertCloudBoard(CloudBoardVO vo) {
		CloudDAO.insertcloud(vo);
		
	}

	@Override
	public void updateCloudBoard(CloudBoardVO vo) {
		CloudDAO.updatecloud(vo);
		
	}

	@Override
	public void deleteCloudBoard(CloudBoardVO vo) {
		CloudDAO.deletecloud(vo);
		
	}

	@Override
	public List<CloudBoardVO> getreply(CloudBoardVO vo) {
	
		return CloudDAO.getreply(vo);
	}



}
