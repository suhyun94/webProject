<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LOGIN</title>
</head>
<body>

<!-- 로그인 폼 -->
<form action="#" method="post" name="log_f" id="login_f">
  <fieldset>
    <legend>로그인</legend>
      <label for="user_id">아이디</label>      
      <input type="text" name="user_id" id="user_id" placeholder="아이디" />
      
      <label for="user_pw">비밀번호</label>      
      <input type="password" name="user_pw" id="user_pw" placeholder="비밀번호"/>
      
      <input type="checkbox" name="save_id" id="save_id" />
      <label for="save_id"> 비밀번호 저장</label>
      
      <input type="button" value="로그인버튼" />
 
       <a href="registerForm">회원가입</a>
       <a href="#" class="sch_id_btn">아이이디/비밀번호 찾기</a>
       
       <a href="#">닫기버튼</a>
  </fieldset>
</form>
</body>
</html>