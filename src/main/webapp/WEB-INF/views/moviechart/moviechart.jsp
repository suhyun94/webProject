<%@page import="cinema.cloud.com.dto.movieVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

 <% 
	//	//1.  정보 추출
	//	//2. DB 연동 처리
		movieVO vo = new movieVO();
	
	//	//3. 응답 화면 구성
	System.out.println("movie 값 가져오는지 실험중..");
	// 세션에 저장된 글 목록을 꺼낸다	
	List <movieVO> movie = (List) session.getAttribute("moviechartlist");
	//System.out.println("movie 값 가져오는지 실험중..2");
	 
%>     
  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
width:230px;
margin:10px;
display: inline-block;
background: white;
}


footer{
clear: both;
}
#box{
	width : 1000px;
}

.ci{
	width:225px;
	height:280px;
}

#footer {
	clear: both;
}


.moviechart_content {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.moviechart_content:target {
    opacity:1;
    pointer-events: auto;
}
.moviechart_content > div {
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	background-color: white;
	overflow: auto;	
}


</style>
<title>Movie Chart</title>
</head>
<body>

<div id="section">

	<h2>&nbsp;&nbsp;&nbsp;무비차트</h2><hr>
	
	<div class="swiper-margin">
	  <div class="swiper-container" >
	    <div class="swiper-wrapper">
	      <div class="swiper-slide"><a href="#open"><img src="resources/images/movie/moviechart3.png"></a></div>
	      
	       <div class="moviechart_content" id="open">
        	<div>
               <p><iframe src="www.youtube.com/watch?v=ejxV-HmDAg0"></iframe> https://www.youtube.com/watch?v=mEAjmr0K7rA<a href="#close">닫기</a></p>
        	</div>
    	   </div>
	      
	      
	      <div class="swiper-slide"><a href="https://www.youtube.com/watch?v=ejxV-HmDAg0" target="_blank"><img src="resources/images/movie/moviechart2.png"></a></div>
	      <div class="swiper-slide"><a href="https://www.youtube.com/watch?v=XSIaNI718Fw" target="_blank"><img src="resources/images/movie/moviechart1.png"></a></div>
	    </div>
	  </div>
	</div>
	  <script src="resources/js/swiper.min.js"></script>
	
	<script>var swiper = new Swiper('.swiper-container');</script>

	<!-- 검색 -->
	<form action="moviechart" method="post">
		<select name="searchCondition">
		
			<c:forEach var="option" items="${conditionMap}" >
				<option value="${option.value}">${option.key}</option>
			</c:forEach>
		</select>
		<input name="searchKeyword" type="text" />
		<input type="submit" value="검색">
	</form>

	<c:forEach var="m" items="<%=movie%>">
		<div class= "chart">
			<table>
				<tr>
					<td colspan="2"><a href="getmoviechart?m_CODE=${m.m_CODE }"><img class="ci" src="${m.m_IMAGE}"></a></td>				
				</tr>
				<tr>
	               <td><img src="${m.m_GRADE}"></td>
	       		   <td>${m.m_TITLE}</td>
	 			</tr>
	 			<tr>
	                  	<td colspan="2"><fmt:formatDate value="${m.m_START_DATE}" pattern="yyyy.MM.dd"/> 개봉 </td>
	 			</tr>
	 		</table>
		</div>
		
		<c:if test="${m.m_CODE mod 5 eq '0'}">
		<br>
		</c:if>
		
	</c:forEach>

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
	<script src="resources/js/q.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
 	<!-- 우측 퀵메뉴 -->

<%@ include file="../footer.jsp" %>

</body>
</html>