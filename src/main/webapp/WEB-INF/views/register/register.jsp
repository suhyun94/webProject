<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="section">
	${u_id}님, 회원가입을 축하드립니다.
	<a href="logout">
		<input type="button" value="로그아웃">
	</a>
	<a href="index">
		<input type="button" value="홈으로">
	</a>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>