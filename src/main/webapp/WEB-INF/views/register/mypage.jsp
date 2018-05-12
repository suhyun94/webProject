<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>mypage</title>
</head>
<body>
<div id="section">
	<div id="mypage_menu">
		<ul>
			<li><a href="">정보 수정</a></li>
			<li><a href="">예매 내역</a></li>
			<li><a href="">포인트 관리</a></li>
			<li><a href="">스토어 구매내역</a></li>			
			<li><a href="">나의 문의내역</a></li>			
		</ul>
	</div>
	<div id="mypage_content">
		<form action="updateUser" method="post">
			아이디 ${users.u_id}
			<br>
			<label for="u_pw">비밀번호</label>
			<input type="password" placeholder="비밀번호 입력" name="u_pw" id="u_pw"/>
			<br>
			<label for="u_pw_re">비밀번호 확인</label>
			<input type="password" placeholder="비밀번호 입력 확인" id="u_pw_re"/>
			<br>
			<label for="u_name">이름</label>
			<input type="text" placeholder="이름 입력" name="u_name" id="u_name" value="${users.u_name}"/>
			<br>
			<label for="u_phone">핸드폰 번호</label>
			<input type="text" placeholder="핸드폰 번호 입력" name="u_phone" id="u_phone" value="${users.u_phone}"/>
			<br>
			<label for="u_email">이메일</label>
			<input type="email" placeholder="이메일 입력" name="u_email" id="u_email" value="${users.u_email}"/>
			<br>
			<label for="u_birth">생일</label>
			<input type="text" placeholder="생일 입력" name="u_birth" id="u_birth" value="${users.u_birth}"/>
	
			<input type="submit" value="수정"/>
			<a href="deleteUser">탈퇴</a>
		</form>		
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>