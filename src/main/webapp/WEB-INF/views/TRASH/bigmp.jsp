<%@page import="cinema.cloud.com.dto.moviepostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 
	//세션에 저장된 게시글 정보를 꺼낸다
	System.out.println("무비포스트 클릭 화면");
	moviepostVO mp = (moviepostVO) session.getAttribute("moviepost");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
<center>
	<h1>글 상세</h1>
	<a href="logout.do">Log_out</a>
	<hr>
	<form action="updatemoviepost" method="post">
		<input name="MP_CODE" type="hidden" value="${mp.mP_CODE }"/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="MP_TITLE" type="text" value="${mp.mP_TITLE }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">내용</td>
				<td align="left"><textarea name="MP_TITlE" cols="40" rows="10">${mp.mP_CONTENT }</textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">등록일</td>
				<td align="left">${mp.mP_DATE}</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글 수정"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertmoviepost">글등록</a>&nbsp;&nbsp;&nbsp;&nbsp;
<%-- 	<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글목록</a> --%>
</center>
</body>
</html>