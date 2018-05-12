package cinema.cloud.com.khc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.LafDAO;
import cinema.cloud.com.dto.LafVO;
import cinema.cloud.com.khc.LafService;

@Service("LafService")
public class LafServiceImpl implements LafService {
	@Autowired
	private LafDAO LafDAO;
	@Override
	public void selectLaf(LafVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateLaf(LafVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteLaf(LafVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public LafVO getLaf(LafVO vo) {
		return LafDAO.getLaf(vo);
	}

	@Override
	public List<LafVO> getLafList(LafVO vo) {
		
		return LafDAO.getLafList(vo);
	}

}
