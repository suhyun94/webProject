<%@page import="cinema.cloud.com.dto.movieVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

 <% 
	//	//1.  정보 추출
	//	//2. DB 연동 처리
		movieVO vo = new movieVO();
	
	//	//3. 응답 화면 구성
	System.out.println("movie 값 가져오는지 실험중..");
	// 세션에 저장된 글 목록을 꺼낸다	
	List <movieVO> movie = (List) session.getAttribute("moviechartlist");
	System.out.println("movie 값 가져오는지 실험중..2");
	 
%>     
  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/slideshow.css">

<style>

.swiper-margin{
width:100%;
height:334px;
background: black;
margin-bottom:20px;
}
.chart{
width:230px;
margin:10px;
display: inline-block;
}

#dot{
margin-top: 20px;
margin-bottom: 20px;
clear:both;
}

.tp{
	width: 80%;
	height: 100px;
	margin-top:100px;
}
.tt{
	clear: both;
}

.ci{
	width:225px;
	height:280px;

}
.trailer1{
	background: black;
	height:500px;
	width:80%;
	clear: both;
	margin: auto;
}
#tr_left{

}
.tdiv{


}
</style>

<title>Movie Chart</title>
</head>   

<body>

<!-- 	아이프레임으로 더 편하게 할 수 있음
 -->
<div class="section">
<div class="trailer1">

	<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	
	<div class="slideshow-container">
 	<c:forEach var="m" items="<%=movie %>">
 	<c:if test="${m.m_TRAILER ne null}">
		<div class="mySlides fade">
 				<!-- width="700px" height="365px" -->
			<div id="tr_left" class="trailerArea">
				<video width="700px" height="365px" controls><source src="${m.m_TRAILER}" type="video/mp4"></video>
				
			</div>
	 		<div id="tr_right"class="trailerArea" style="color:white;">
	 		<img src="${m.m_IMAGE}" width= "250px"/>
	 			${m.m_TITLE}<br>
	 			${m.m_CONTENT}
	 		</div>
 		</div>
	</c:if>
 	</c:forEach>
 	</div>
	
	<a class="next" onclick="plusSlides(1)">&#10095;</a>

	<div id="dot" style="text-align:center">
	  <span class="dot" onclick="currentSlide(1)"></span> 
	  <span class="dot" onclick="currentSlide(2)"></span> 
	  <span class="dot" onclick="currentSlide(3)"></span> 
	</div>
</div>
</div>
<!-- 이제 다른 영역 -->


<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
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

<%@ include file="footer.jsp" %>

</body>
</html>