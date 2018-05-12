<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">

<title>MovieScore</title>
</head>
<body>

<div id="section">

  <div class="swiper-container2" id="score">
    <div class="swiper-wrapper">
  
    <c:forEach var="s" items="${score}">
      <div class="swiper-slide"	>
			<div id="left">
			<span><strong>${s.m_TITLE}</strong></span><br><br>
			<img src="${s.m_IMAGE}">
			<c:choose>
				<c:when test="${s.cl_reply eq '핵꿀잼'}">
					<img src="resources/images/cloud/3.png">
				</c:when>
				
				<c:when test="${s.cl_reply eq '허니잼'}">
					<img src="resources/images/cloud/2.png">
				</c:when>
				
				<c:when test="${s.cl_reply eq '잼'}">
					<img src="resources/images/cloud/4.png">
				</c:when>
				
				<c:when test="${s.cl_reply eq '노잼'}">
					<img src="resources/images/cloud/1.png">
				</c:when>
			</c:choose><br>		
			<strong>전문가 평점</strong><br>
		        감독연출 :: ${s.cl_directorscore}<br>
			스토리 :: ${s.cl_storyscore}<br>
			배우연기 :: ${s.cl_actorscore }<br>
			영상미 :: ${s.cl_goodscore }<br>
			</div>
			<div id="right">
			<strong>관람객 평점</strong>
			<br>
			 
			<c:forEach var="s" items="${reply}">
			
			<c:choose>
				<c:when test="${(s.cb_actorscore + s.cb_directorscore+ s.cb_goodscore+cb_storyscore) >= 320 }">				
					<img src="resources/images/cloud/3.png">
				</c:when>
				
				<c:when test="${(s.cb_actorscore + s.cb_directorscore+ s.cb_goodscore+cb_storyscore) > 240 }">				
					<img src="resources/images/cloud/2.png">
				</c:when>
				
				<c:when test="${(s.cb_actorscore + s.cb_directorscore+ s.cb_goodscore+cb_storyscore) > 160 }">				
					<img src="resources/images/cloud/4.png">
				</c:when>
				
				<c:when test="${(s.cb_actorscore + s.cb_directorscore+ s.cb_goodscore+cb_storyscore) <= 160 }">				
					<img src="resources/images/cloud/1.png">
				</c:when>			
			</c:choose>

			
			
			${s.u_id} :: ${s.cb_content}<br>
			
			</c:forEach>
				 	
 			<c:if test="${not empty u_id}">
 			<a href="cloudBoardForm?m_code=${s.m_code}"><img src="resources/images/etc/scorebtn.png"></a>
			
 			</c:if> 
 			
			</div>
			</div>
      </c:forEach>

    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination2"></div>
  </div>
  
  <!-- Swiper JS -->
  <!-- <script src="resources/js/swiper.min3.js"></script>  -->

  <!-- 무비스코어  -->
   <script src="resources/js/moviescore2.js"></script> 

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