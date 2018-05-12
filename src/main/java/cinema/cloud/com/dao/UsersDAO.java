package cinema.cloud.com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cinema.cloud.com.dto.UsersVO;

@Repository("UsersDAO")
public class UsersDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int idCheck(UsersVO vo) {
		System.out.println("idCheck");
		return mybatis.selectOne("UsersDAO.idCheck", vo);
	}
	public int loginCheck(UsersVO vo) {
		System.out.println("login");
		return mybatis.selectOne("UsersDAO.loginCheck", vo);
	}
	public void insertUser(UsersVO vo) {
		System.out.println("insertUser");
		mybatis.insert("UsersDAO.insertUser", vo);
	}
	public String idFind(UsersVO vo) {
		return mybatis.selectOne("UsersDAO.idFind",vo);
	}
	public int pwFind(UsersVO vo) {
		return mybatis.selectOne("UsersDAO.pwFind", vo);
	}
	public void updatePw(String u_pw) {
		mybatis.update("UsersDAO.updatePw",u_pw);
	}
	public void updateUser(UsersVO vo) {
		System.out.println("updateUser");
		System.out.println(vo.getU_id());
		System.out.println("??");
		mybatis.update("UsersDAO.updateUser", vo);
		System.out.println("??");
	}
	public void deleteUser(UsersVO vo) {
		System.out.println("deleteUser");
		mybatis.delete("UsersDAO.deleteUser", vo);
	}
	public UsersVO getUser(UsersVO vo) {
		System.out.println("getUser");
		return (UsersVO) mybatis.selectOne("UsersDAO.getUser",vo);
	}
	public List<UsersVO> getUserList(UsersVO vo) {
		System.out.println("getUserList");
		return mybatis.selectList("UsersDAO.getUserList", vo);
	}
}
