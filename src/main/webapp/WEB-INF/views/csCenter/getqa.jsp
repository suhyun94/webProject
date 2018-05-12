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
		<input name="q_number" type="hidden" value=""/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="#ffeecc" width="70">분류</td>
				<td align="left">${qa.q_kind}</td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">제목</td>
				<td align="left"><input name="n.title" type="text" value="${qa.q_title }"/></td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">내용</td>
				<td align="left"><textarea name="q_content" cols="40" rows="10">${qa.q_content}</textarea></td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">등록일</td>
				<td align="left">${qa.q_regdate }</td>
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