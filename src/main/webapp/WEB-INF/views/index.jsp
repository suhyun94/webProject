<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>    
<%@ include file="header.jsp" %>
 
<!DOCTYPE html>
<html> 
<head> 
<meta charset="utf-8">

<title>MainPage</title>
</head>
<body>
<div id="section">
	<!-- 중앙 콘텐츠 -->
	<a href="#open"><img alt="사라진 밤" src="resources/images/movie/movie1.jpg"></a>
	<div class="modal" id="open">
        <div>
            <a href="#close"><img alt="사라진 밤" src="resources/images/movie/movie1.jpg"></a>
        </div>
    </div>
    
    <br>
    
    <!-- 비주얼배너 스위퍼 -->
    <div class="swiper-container">
	    <div class="swiper-wrapper">
	      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/movie_pr.jpg"></a></div>
	      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/movie_now.jpg"></a></div>
	      <div class="swiper-slide"><a href="#"><img src="resources/images/movie/movie1.jpg"></a></div>
	    </div>
  	</div>
  
	<!-- 스위퍼 초기화 -->
	<script src="resources/js/swiper.min.js"></script>
	<script>var swiper = new Swiper('.swiper-container');</script>
</div>

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
	
<%@ include file="footer.jsp" %>
</body>
</html>