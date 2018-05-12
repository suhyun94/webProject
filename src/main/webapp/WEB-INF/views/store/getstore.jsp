<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Store</title>
</head>
<body>

<div id="section">
<h2>&nbsp;&nbsp;&nbsp;Store</h2>
	<hr>
	<div class="">
	<div class="">
	<img src=""><br><br><a href="ticketing">
	<img src="" width="193px"></a>
	</div>
	<div class="">
	<table>
		<tr>
			<td><h1>${product.p_name }</h1></td>
		</tr>
		<tr>
			<td><p>${product.p_content }</p></td>
		</tr>	
		<tr>
			<td><p>${product.p_price }</p></td>
		</tr>
		<tr>
			<td>ㄹ</td>
		</tr>
		<tr>	
			<td rowspan="4"><strong>?</strong> </td>
		</tr>
		<tr>	
			
		</tr>
	</table></div><br>
	<div class=""><h2>버튼놓자</h2>
	<img src="resources/images/store/buy.PNG"><br>
	<a href="#" onclick="history.back()"><img src="resources/images/store/list.PNG"></a><br>
	<img src="resources/images/store/gift.PNG"><br>
	
	</div>
	</div>

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