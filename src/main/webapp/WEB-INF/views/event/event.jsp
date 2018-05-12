<%@page import="cinema.cloud.com.dto.eventVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

   
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
width:290px;
height:auto;
margin:10px;
background : white;
display: inline-block;
}

#box{
	width : 1000px;
}
.img{
	width: 285px;
	height:auto;
}
.ename{
	color:navy;
}
</style>
<title>Event</title>
</head>
<body>
<div id="section">
	<h2>이벤트</h2><hr>
	<div id="a" style="text-align: center">
	<c:forEach var="e" items="${eventlist}">
		<div class= "chart">
			<table>
				<tr>
					<td colspan="2"><a href="getevent?e_CODE=${e.e_CODE }"><img src="${e.e_IMG}" class="img"></a></td>				
				</tr>
				<tr>
	       		   <td><p class="ename">${e.e_NAME}</p></td>
	 			</tr>
	 			<tr>
	               <td colspan="2">${e.e_TYPE}</td>
	 			</tr>
	 			<tr>
	 			    <td colspan="2">기간:<fmt:formatDate value="${e.e_START_DATE}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${e.e_END_DATE}" pattern="yyyy.MM.dd"/></td>
	 			</tr>
	 			
	 		</table>
		</div>	
		<c:if test="${e.e_CODE mod 4 eq '0'}">
		<br>
		</c:if>	
	</c:forEach>
	</div>
</div>

<!-- 우측 퀵메뉴 -->
<aside class="bms-quick-banner">
<!--ul 부분 수정하기  -->
	<ul>
		<li><a href="ticketing"><img src="resources/images/quick/quick.png" alt="빠른예매"></a></li>
		<li><a href="ticketing"><img src="resources/images/quick/list.png" alt="예매내역" /></a></li>
		<li><a href="cinema"><img src="resources/images/quick/loc.png" alt="영화관정보" /></a></li>
		<li><a href="#"><img src="resources/images/quick/top.png" alt="상단 이동" /></a></li>
		</ul>
</aside>

<%@ include file="../footer.jsp" %>

</body>
</html>