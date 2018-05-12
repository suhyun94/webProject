<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="header.jsp" %> --%>
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
		<ul><li><a href="#" target="_blank"><img src="" alt="퀵메뉴"></a></li>
		<li><a href="#"><img src="" alt="버튼1" /></a></li>
		<li><a href="#"><img src="" alt="버튼2" /></a></li>
		<li><a href="#"><img src="" alt="상단 이동" /></a></li>
		</ul>
	</aside>
	<script src="resources/js/q.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- 우측 퀵메뉴 -->
	
<%-- <%@ include file="footer.jsp" %> --%>
</body>
</html>