package cinema.cloud.com.hsh;

import java.util.List;

import cinema.cloud.com.dto.UsersVO;

public interface UsersService {
	//아이디체크
	int idCheck(UsersVO vo);
	//로그인
	int loginCheck(UsersVO vo);
	//회원가입
	void insertUser(UsersVO vo);
	//아이디찾기
	String idFind(UsersVO vo);
	//아이디 이메일 비교
	int pwFind(UsersVO vo);
	//비밀번호 변경
	void updatePw(String u_pw);
	//회원수정
	void updateUser(UsersVO vo);
	//회원삭제
	void deleteUser(UsersVO vo);
	//회원상세목록
	UsersVO getUser(UsersVO vo);
	//회원목록
	List<UsersVO> getUserList(UsersVO vo);
}
