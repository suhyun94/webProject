<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>무비차트 상세</title>
</head>
<body>
<div id="section">
	테스트테스트
	제목::${movie.m_TITLE}<br>
	줄거리::${movie.m_CONTENT}
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>