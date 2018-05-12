<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>header</title>
</head>
<body>

<div id = "header">
	<div id="topMenu">
		<ul>
		<c:choose>
		<c:when test="${empty u_id }">
			<li><a href="loginForm">LOGIN</a></li>
			<li><a href="ticketing">빠른예매</a></li>
			<li><a href="center">고객센터</a></li>
		</c:when>
		<c:when test="${not empty u_id}">
			<c:if test = "${u_id ne 'host'}">				
				<li><a href="logout">LOGOUT</a></li>
				<li><a href="mypage"> MY PAGE </a></li>
				<li><a href="ticketing">빠른예매</a></li>
				<li><a href="center">고객센터</a></li>
			</c:if>
			<c:if test = "${u_id eq 'host'}">
				<li><a href="logout">LOGOUT</a></li>
				<li><a href="admin"> ADMIN </a></li>
			</c:if>
		</c:when>
		</c:choose>
		</ul>	
	</div>
	
	<div id="logo">
		<a href="index"><img src="resources/images/main/cinemacloudLogo2.png"></a>
	</div>
	
	<div id="menu">
		<!-- 메뉴 -->
		<ul class="zeta-menu">
		    <li><a href="moviechart">영화</a>
				<ul>
					<li><a href="moviechart">무비차트</a></li>
					<li><a href="movietrailer">트레일러</a></li>
					<li><a href="moviescore">평점</a></li>
				</ul>
			</li> 
			 <li><a href="cinema" >영화관</a></li>    
			 <li><a href="moviepost">무비포스트</a></li>    
			 <li><a href="store">스토어</a></li>
		     <li><a href="event" >이벤트</a></li>
		</ul>
	</div>
</div>
</body>
</html>