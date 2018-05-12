<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">
<title>MainPage</title>
</head>
<body>
<div id="section">
${score }
<%-- <c:forEach var="m" items="${movietest}">
제목::${m.m_TITLE }
이미지::${m.m_IMAGE }
</c:forEach> --%>
<!-- 점수 불러내깅 -->
<%-- <c:forEach var="s" items="${score }">
감독연출 :: ${s.cl_directorscore}<br>
스토리 :: ${s.cl_storyscore}<br>
배우연기 :: ${s.cl_actorscore }<br>
영상미 :: ${s.cl_goodscore }<br>
</c:forEach> --%>

</div>

<!-- 우측 퀵메뉴 -->
<aside class="bms-quick-banner">
	<ul>
	<li><a href="#" target="_blank"><img src="" alt="퀵메뉴"></a></li>
	<li><a href="#"><img src="" alt="버튼1" /></a></li>
	<li><a href="#"><img src="" alt="버튼2" /></a></li>
	<li><a href="#"><img src="" alt="상단 이동" /></a></li>
	</ul>
</aside>
<!-- 우측 퀵메뉴 -->
		
<%@ include file="../footer.jsp" %>
</body>
</html>