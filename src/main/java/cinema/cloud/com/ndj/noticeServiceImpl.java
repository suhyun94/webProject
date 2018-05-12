package cinema.cloud.com.ndj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.noticeDAO;
import cinema.cloud.com.dto.noticeVO;
@Service("noticeService")
public class noticeServiceImpl implements noticeService {
	
	@Autowired
	private noticeDAO noticeDAO;
	
	@Override
	public void insertNotice(noticeVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateNotice(noticeVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteNotice(noticeVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public noticeVO getNotice(noticeVO vo) {
		return noticeDAO.getnotice(vo);
	}

	@Override
	public List<noticeVO> getNoticeList(noticeVO vo) {
		return noticeDAO.getNoticeList(vo);
	}

}
