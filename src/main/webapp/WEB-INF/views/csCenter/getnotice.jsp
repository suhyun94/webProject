<%@page import="cinema.cloud.com.dto.noticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>글 상세</title>
</head>
<body>
<div id="section">	
	<h1>글 상세</h1>
	<a href="#">Log_out</a>
	<hr>
	<form action="#">
		<input name="seq" type="hidden" value=""/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="n.title" type="text" value="${notice.n_title }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">작성자</td>
				<td align="left">관리자</td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">내용</td>
				<td align="left"><textarea name="n_content" cols="40" rows="10">${notice.n_content }</textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">등록일</td>
				<td align="left"></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">조회수</td>
				<td align="left">${notice.n_view}</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="#">글등록</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="center">글목록</a>
</div>
</body>
</html>