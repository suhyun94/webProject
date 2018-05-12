<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>무비차트 상세</title>
<link rel="stylesheet" type="text/css" href="resources/css/getmoviechart.css">

</head>
<body>
	<h2>&nbsp;&nbsp;&nbsp;영화 상세</h2>
	<hr>
	<div id="section">
	<div class="chart">
	<div class="chartinfo">
	<img src="${movie.m_IMAGE}"><br><br><a href="ticketing">
	<img src="resources/images/mchart/t_btn.png" width="193px"></a>
	</div>
	<div class="chartinfo">
	<table>
		<tr>
			<td><h1>${movie.m_TITLE}</h1></td>
		</tr>
		<tr>
			<td><p><strong>누적관객수</strong> ${movie.m_VIEWER_NUM} <strong>평점</strong></p></td>
		</tr>	
		<tr>
			<td><p><strong>감독</strong> ${movie.m_DIRECTOR}  <strong>출연</strong> ${movie.m_ACTOR} <strong>상영시간</strong> ${movie.m_RUNNINGTIME}</p></td>
		</tr>
		<tr>
			<td><p><strong>장르</strong> ${movie.m_GENRE}  <strong>등급</strong> <img src="${movie.m_GRADE}" width="10px"></p></td>
		</tr>
		<tr>	
			<td rowspan="4"><strong>개봉</strong> ${movie.m_START_DATE}</td>
		</tr>
		<tr>	
			
		</tr>
	</table></div><br>
	<div class="contents"><h2>줄거리</h2>
	${movie.m_CONTENT}
	</div>
	</div>
	</div>
</body>
</html>