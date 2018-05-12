<%@page import="cinema.cloud.com.dto.noticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../setting.jsp" %>    
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
<center>
	<h1>글 상세</h1>
	<a href="#">Log_out</a>
	<hr>
	<form action="#">
		<input name="l_number" type="hidden" value=""/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="#ffeecc" width="70">분류</td>
				<td align="left">${laf.l_kind}</td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">제목</td>
				<td align="left"><input name="n.title" type="text" value="${laf.l_title }"/></td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">내용</td>
				<td align="left"><textarea name="q_content" cols="40" rows="10">${laf.l_content}</textarea></td>
			</tr>
			<tr>
				<td bgcolor="#ffeecc" width="70">등록일</td>
				<td align="left">${laf.l_regdate }</td>
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
</center>

<!-- 우측 퀵메뉴 -->
<aside class="bms-quick-banner">
	<ul>
		<li><a href="ticketing"><img src="resources/images/quick/quick.png" alt="빠른예매"></a></li>
		<li><a href="ticketing"><img src="resources/images/quick/list.png" alt="예매내역" /></a></li>
		<li><a href="cinema"><img src="resources/images/quick/loc.png" alt="영화관정보" /></a></li>
		<li><a href="#"><img src="resources/images/quick/top.png" alt="상단 이동" /></a></li>
	</ul>
</aside>
<!-- 우측 퀵메뉴 -->
	
<%@ include file="../footer.jsp" %>
</body>
</html>