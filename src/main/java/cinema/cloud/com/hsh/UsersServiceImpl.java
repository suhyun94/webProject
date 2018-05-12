package cinema.cloud.com.hsh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.cloud.com.dao.UsersDAO;
import cinema.cloud.com.dto.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDAO usersDAO;
	
	@Override
	public int idCheck(UsersVO vo) {
		return usersDAO.idCheck(vo);
	}
	@Override
	public int loginCheck(UsersVO vo) {
		return usersDAO.loginCheck(vo);
	}
	@Override
	public void insertUser(UsersVO vo) {
		usersDAO.insertUser(vo);
	}
	@Override
	public String idFind(UsersVO vo) {
		return usersDAO.idFind(vo);
	}
	@Override
	public int pwFind(UsersVO vo) {
		return usersDAO.pwFind(vo);
	}
	@Override
	public void updatePw(String u_pw) {
		usersDAO.updatePw(u_pw);
	}
	@Override
	public void updateUser(UsersVO vo) {
		System.out.println("aaa");
		usersDAO.updateUser(vo);
		System.out.println("bbb");
	}

	@Override
	public void deleteUser(UsersVO vo) {
		usersDAO.deleteUser(vo);
	}

	@Override
	public UsersVO getUser(UsersVO vo) {
		return usersDAO.getUser(vo);
	}

	@Override
	public List<UsersVO> getUserList(UsersVO vo) {
		return usersDAO.getUserList(vo);
	}

}
