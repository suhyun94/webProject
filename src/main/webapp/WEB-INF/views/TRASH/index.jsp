<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/swiper.min.css">

<!-- CSS -->
<!--  script -->
<script src="resources/js/loginpopup.js"></script>
<!--  script -->

<title>MainPage</title>
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

  <!-- Swiper JS 연결 -->
  <script src="resources/js/swiper.min.js"></script>

  <!-- 스위퍼 초기화 -->
  <script>var swiper = new Swiper('.swiper-container');</script>
    
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
	<!-- 우측 퀵메뉴 -->
	


<footer>
	<hr>
	<h3>영화관 찾기</h3>
		
		<b>서울특별시 마포구 신촌로 176 중앙빌딩, 중앙정보처리학원 4층</b><br>
		<b>대표이사 : 나동주  / 사업자등록번호 : 123-45-67890 / 통신판매업신고번호 : 2018-서울마포-1234</b><br>
		<b>개인정보보호 책임자 : 박태영 / 마케팅 담당 홍수현 대표/  이메일 : caccmaster@ca.net / CC고객센터 : 1234-5678</b>
	<hr>
</footer>


</body>
</html>