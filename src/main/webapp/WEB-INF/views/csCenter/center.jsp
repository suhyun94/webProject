<%@page import="cinema.cloud.com.dto.noticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">

<title>고객센터</title>
</head> 
<body>
<div id="section">	
	<div id="notice">
		<table>
			<caption><strong>공지사항</strong></caption>
			  <tr>
			    <th>글번호</th>
			    <th>제목</th> 
			    <th>조회수</th>
			  </tr>
			<c:forEach var="n" items="${notice}">
			  <tr>
			    <td>${n.n_code}</td>
			    <td><a href="getnotice?n_code=${n.n_code}">${n.n_title}</a></td>
			    <td>${n.n_view}</td>
			    </tr>
			</c:forEach>
		</table>
	</div>
	
	<div id="QA">
		<table>
			<caption><strong>Q / A</strong></caption>
			<tr>
				<th>글번호</th>
				<th>종류</th>
				<th>제목</th>
			</tr>
			<c:forEach var="q" items="${Qa}">
			<tr>
				<td>${q.q_code}</td>
				<td>${q.q_kind}</td>
				<td><a href="getqa?q_code=${q.q_code}">${q.q_title}</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<div id="11">
		<h1><a href="mailto:cinemacloud@cicle.com"><img src="resources/images/etc/11.PNG"></a></h1>
	</div>
	
	<div id="LAF">
<table>
<caption><strong>분실물센터</strong></caption>
<tr>
	<th>글번호</th>
	<th>종류</th>
	<th>제목</th>
</tr>
<c:forEach var="l" items="${Laf }">
<tr>
	<td>${l.l_number}</td>
	<td>${l.l_kind}</td>
	<td><a href="getlaf?l_number=${l.l_number}">${l.l_title}</a></td>
</tr>
</c:forEach>
</table>
</div>
	
</div>

    <!-- 우측 퀵메뉴 -->
    <aside class="bms-quick-banner">
		<ul><li><a href="ticketing"><img src="resources/images/quick/quick.png" alt="빠른예매"></a></li>
		<li><a href="ticketing"><img src="resources/images/quick/list.png" alt="예매내역" /></a></li>
		<li><a href="cinema"><img src="resources/images/quick/loc.png" alt="영화관정보" /></a></li>
		<li><a href="#"><img src="resources/images/quick/top.png" alt="상단 이동" /></a></li>
		</ul>
	</aside>
	<script src="resources/js/q.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- 우측 퀵메뉴 -->
	
<%@ include file="../footer.jsp" %>

</body>
</html>