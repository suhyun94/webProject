<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event</title>
</head>
<body>
<div> 
	<table>
		<tr>
			<td><h1>${event.e_NAME}</h1></td>
		</tr>
		<tr>
			<td><p><strong>분류</strong> ${event.e_TYPE}</p></td>
		</tr>	
		<tr>
			<td><p><strong>${event.e_IMG}</strong></p></td>
		</tr>
		<tr>
			<td><p><strong>2</strong></td>
		</tr>
		<tr>	
			<td rowspan="4"><strong>3</strong> </td>
		</tr>
		<tr>	
			
		</tr>
	</table></div>

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