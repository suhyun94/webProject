<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	#section2{
	width: 1500px;
	height:700px;
	margin:auto;
}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>평점</title>
</head>
<body>
<div id="section2">
<form action="insertCloudBoard">
<input type="hidden"/>
 
관람평 :: 
<textarea name="cb_content" rows="10" cols="20"></textarea>
감독연출 ::
<select name="cb_directorscore">
	<option value=100>100</option>
	<option value=90>90</option>
	<option value=80>80</option>
	<option value=70>70</option>
	<option value=60>60</option>
	<option value=50>50</option>
	<option value=40>40</option>
	<option value=30>30</option>
	<option value=20>20</option>
	<option value=10>10</option>
	<option value=0>0</option>
</select>
<br>
스토리 ::
<select name="cb_storyscore">
	<option value=100>100</option>
	<option value=90>90</option>
	<option value=80>80</option>
	<option value=70>70</option>
	<option value=60>60</option>
	<option value=50>50</option>
	<option value=40>40</option>
	<option value=30>30</option>
	<option value=20>20</option>
	<option value=10>10</option>
	<option value=0>0</option>
</select>
<br>
배우연기 ::
<select name="cb_actorscore">
	<option value=100>100</option>
	<option value=90>90</option>
	<option value=80>80</option>
	<option value=70>70</option>
	<option value=60>60</option>
	<option value=50>50</option>
	<option value=40>40</option>
	<option value=30>30</option>
	<option value=20>20</option>
	<option value=10>10</option>
	<option value=0>0</option>
</select>
<br>
영상미 ::
<select name="cb_goodscore">
	<option value=100>100</option>
	<option value=90>90</option>
	<option value=80>80</option>
	<option value=70>70</option>
	<option value=60>60</option>
	<option value=50>50</option>
	<option value=40>40</option>
	<option value=30>30</option>
	<option value=20>20</option>
	<option value=10>10</option>
	<option value=0>0</option>
</select>

<hr>

<br>
<hr>

<input type="submit" value="관람평작성">&nbsp;&nbsp;
<input type="reset" value="취소">
</form>
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