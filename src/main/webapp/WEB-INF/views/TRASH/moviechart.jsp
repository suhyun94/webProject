<%@page import="java.util.List"%>
<%@page import="cinema.cloud.com.dao.movieDAO"%>
<%@page import="cinema.cloud.com.dto.movieVO"%>
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
<style>
h2{
text-align: left;
}
.swiper-margin{
width:100%;
height:334px;
background: black;

}
.chart{
width:20%;
margin:10px;
float:left;
}

footer{
clear: both;
}
</style>
    
<title>MainPage</title>
</head>
<body>

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
</div><br><br><br>
<!-- Swiper JS 연결 -->
<script src="resources/js/swiper.min.js"></script>
<!-- 스위퍼 초기화 -->
 <script>var swiper = new Swiper('.swiper-container');</script>

<!-- 버튼 2개  현재상영작, 개봉예정작	  테이블로 영화-->

	<!-- <a href="#open"><img alt="사라진 밤" src="resources/images/movie/movie1.jpg"></a>
	<div class="modal" id="open">
        <div>
            <a href="#close"><img alt="사라진 밤" src="resources/images/movie/movie1.jpg"></a>
        </div>
    </div> -->
    
    <br>
	<div class= "chart">
		<img src="resources/images/movie/chartdiv1.png">
	</div>
    <div class= "chart">
		<img src="resources/images/movie/chartdiv2.png">
	</div>
	<div class= "chart">
		<img src="resources/images/movie/chartdiv3.png">
	</div>
	<div class= "chart">
		<img src="resources/images/movie/chartdiv4.png">
	</div>
		
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