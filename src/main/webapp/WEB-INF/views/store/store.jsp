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
<!-- 
	<form action="store2">
	<input id="pop" class="menu1" type="submit" name="p_type" value="A" >&nbsp;&nbsp;
	<input id="coke" class="menu2" type="submit" name="p_type" value="B">&nbsp;&nbsp;
	<input id="ticket" class="menu3" type="submit" name="p_type" value="C"><br>
	</form> -->
	<div id="center">
	<img alt="스토어" src="resources/images/store/store.png">
	</div>
	<br>
	<a href="store">전체 </a><br>
	<a href="store3" id="pop">팝콘</a><br>
	<a href="store4" id="coke">음료</a><br>
	<a href="store2" id="ticket">티켓</a><br>
	<br>
	<a href="store3"><img src="resources/images/store/pop.png" onmouseover="this.src='resources/images/store/pop_choice.png'" onmouseout="this.src='resources/images/store/pop.png'"></a>&nbsp;&nbsp;
	<a href="store4"><img src="resources/images/store/bever.png" onmouseover="this.src='resources/images/store/bever_choice.png'" onmouseout="this.src='resources/images/store/bever.png'"></a>&nbsp;&nbsp;
	<a href="store2"><img src="resources/images/store/ticket.png" onmouseover="this.src='resources/images/store/tiket_choice.png'" onmouseout="this.src='resources/images/store/ticket.png'"></a>&nbsp;&nbsp;<br>
	
	<br><br><br>
<c:forEach var="store" items="${store}">
	
			<div class= "store">
					<table>
						<tr>
							<td colspan="2"><a href="getproduct?p_code=${store.p_code}">${store.p_name}</a></td>				
						</tr>
						<tr>
               				<td></td>
       		   				<td>${store.p_content}</td>
 						</tr>
 						<tr>
               				<td colspan="2">${store.p_price }</td>
 						</tr>
 					</table>
				</div>


</c:forEach>
<script src="resources/js/store.js"></script>
</div>
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