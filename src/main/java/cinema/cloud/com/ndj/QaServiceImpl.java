package cinema.cloud.com.ndj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.QaDAO;
import cinema.cloud.com.dto.QaVO;

@Service("QaService")
public class QaServiceImpl implements QaService {
	@Autowired
	private QaDAO QaDAO;
	@Override
	public void insertQa(QaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateQa(QaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteQa(QaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public QaVO getQa(QaVO vo) {
		return QaDAO.getQa(vo);
	}

	@Override
	public List<QaVO> getQaList(QaVO vo) {
		return QaDAO.getQaList(vo);
	}

}
