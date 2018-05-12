<%@page import="java.util.List"%>
<%@page import="cinema.cloud.com.dto.moviepostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Movie Post</title>
</head>
<body>

<div id="section">
	<div id="t1">
		<button onclick="newwrite()">글쓰기</button>
		<!-- <a id="tt" href="write">글쓰기</a> -->
		<br>
		<form action="moviepost" method="post">
		<input id="logincheck" type="hidden" value="${logincheck}">
		
			<select name="searchCondition">	
			<c:forEach var="option" items="${conditionMap}" >
				<option value="${option.value}">${option.key}</option>
			</c:forEach>
			</select>
			
			<input name="searchKeyword" type="text" />
			<input type="submit" value="검색">
		</form>
	</div>
	
	<script>

function newwrite(){
	if(${not empty u_id}){
		//alert("로그인했음"); 
		location.href="write";
		return true;
	}else{
		alert("로그인후 사용이 가능합니다.");
		return false;
	}
}
</script>
	
	<div id = "box">
		<c:forEach  items="${moviepostlist}" var="mp" >
		<div class="space">
			<div><a href="getmoviepost?MP_CODE=${mp.MP_CODE}"><img src="${mp.MP_PIC}"></a></div>
			<div><strong>${mp.MP_TITLE}</strong></div>
			<div id="like"><a href="/com/likeclick?MP_CODE=${mp.MP_CODE}"  onclick="likeck()" ><img alt="좋아요" src="resources/images/etc/goodgood.png"> ${mp.MP_LIKE}</a>&nbsp; / <a href="#">댓글</a></div>
		</div>&nbsp;
		</c:forEach> 
	</div>
</div>

	<script>

function likeck(){
	if(${not empty u_id}){
		//alert("로그인했음"); 
		location.href="likeclick";
		return true;
	}else{
		alert("로그인후 사용이 가능합니다.");
		return false;
	}
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
<!-- 우측 퀵메뉴 -->
	
<%@ include file="../footer.jsp" %>
</body>
</html>