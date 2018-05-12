<%@page import="java.util.List"%>
<%@page import="cinema.cloud.com.dto.eventVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%-- <%@ include file="header.jsp" %> --%>
 <% 
	//	//1.  정보 추출
	//	//2. DB 연동 처리
		eventVO vo = new eventVO();
	
	//	//3. 응답 화면 구성
	System.out.println("event 값 가져오는지 실험중..");
	// 세션에 저장된 글 목록을 꺼낸다	
	List <eventVO> movie = (List) session.getAttribute("eventlist");
	System.out.println("event 값 가져오는지 실험중..");
	 
%>     

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/sliding.css">

<style>
h2{
text-align: left;
}
.swiper-margin{
width:100%;
height:334px;
background: black;
margin-bottom:20px;
}
.chart{
width:15%;
margin:5px;
display: inline-block;
}


footer{
clear: both;
}
#box{
	width : 1000px;
}
</style>
<title>Movie Chart</title>
</head>

<body>
<nav>
<!-- header 아래 박스 -->
<a href="#" onclick="loginpopup()">로그인</a>&nbsp;
<a href="#">회원가입</a>&nbsp;
<a href="#">my page</a>&nbsp;
<a href="#">관리자</a>&nbsp;
<a href="#">고객센터</a>
<hr>
</nav>

<section>
<h2>무비차트</h2><hr>

<div class="swiper-margin">
  <div class="swiper-container" >
    <div class="swiper-wrapper">
      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/moviechart3.png"></a></div>
      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/moviechart2.png"></a></div>
      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/moviechart1.png"></a></div>
    </div>
  </div>
</div>
<!-- Swiper JS 연결 -->
<script src="resources/js/swiper.min.js"></script>
<script>var swiper = new Swiper('.swiper-container');</script>

<c:forEach var="m" items="<%=movie%>">
	<div class= "chart">
		<table>
			<tr>
				<td colspan="2"><img src="${m.m_IMAGE}"></td>				
			</tr>
			<tr>
               <td><img src="${m.m_GRADE}"></td>
       		   <td>${m.m_TITLE}</td>
 			</tr>
 			<tr>
               <td colspan="2">평점/예매율</td>
 			</tr>
 			</table>
	</div>
	
	<c:if test="${m.m_CODE mod 5 eq '0'}">
	<br>
	</c:if>
	
</c:forEach>

</section>

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


<%-- <%@ include file="footer.jsp" %> --%>

</body>
</html>