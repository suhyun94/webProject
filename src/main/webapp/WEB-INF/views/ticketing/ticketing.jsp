<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<script>
$(function() {
	$( "#calendar" ).datepicker();
	//옵션  : 매개변수값 2번째가 옵션의 타입이며 3번째 항목은 옵션에 대한 설정 값
    $( "#calendar" ).datepicker( "option", "dateFormat", "yy년-mm월-dd일" ); //데이터 포맷으로 날짜의 반환 타입을 지정
    $( "#calendar" ).datepicker( "option", "showAnim", "slideDown" );      //달력의 표시 형태
}); 
var m_code,c_code, s_date;
function m_code(c){
	m_code = c;
	document.getElementById(c).style.border = "thick solid #0000FF";
}
function c_code(a,b){
	c_code = a;
	document.getElementById(b).style.border = "thick solid #0000FF";
}
//s_date = document.getElementById('datess').value;
//s_date = document.fm.datess.value;
s_date = "2018-04-05";
function dd(){
	var d = document.getElementById("calendar").value;
	alert(d);
}

function resultScreen(){
	location.href="ticketing?m_code="+m_code+"&c_code="+c_code+"&s_date="+s_date;
}

function idCheck(s_code){
	if(${empty u_id}){
		alert("로그인 후 이용가능한 서비스입니다.");
		return false;
	}else{
		location.href="seatChoose?s_code="+s_code;
	}
}
function seatChoose(){
	if(${empty u_id}){
		alert("로그인 후 이용가능한 서비스입니다.");
		return false;
	}
	return true;
}
</script>

<title>ticketing</title>
</head>
<body>
<div id="section">
	<table id="t_table">
	<tr class="theader">
		<th width="40%">영화</th>
		<th width="40%">영화관</th>
		<th>날짜</th>
	</tr>
	
	<tr id="tcontents">
		<td>
			<ul>
			<c:forEach var="m" items="${movie}">
			<li><div id="${m.m_CODE}" onclick="m_code(${m.m_CODE})"><img src="${m.m_GRADE}" >${m.m_TITLE}</div></li>				
			</c:forEach>
			</ul>
		</td>
		
		<td>
		<div id="c_loc">
			<ul>		
			<c:forEach var="c" items="${cinema}">
			<li class= "chart">
				<a href="ticketing?c_loc=${c.c_LOC}" >${c.c_LOC}</a>
			</li>
			</c:forEach>
		    </ul>
		</div>
		<div id="c_name">
		<ul>	
			<c:forEach var="t" items="${ticketLoc}">
			<li>
				<div id="${t.c_NAME}" onclick="c_code(${t.c_CODE},'${t.c_NAME}')">${t.c_NAME}</div>
			</li>
			</c:forEach>
		</ul>			
		</div>
		</td>  
		<td>
			<p>Date: <input type="text" id="calendar" value="selectCal"></p> 
			<input type = "text" value="hong" id="datess">
			<button type="button" onclick="dd()" >클릭클릭클릭</button>
		</td>		
	</tr>
	</table>
	<input type="button" onclick="resultScreen()" value="선택"/> 
	<div>
	<c:if test="${not empty ticket}">
		<c:forEach items="${ticket}" var="tk">	
		<form action="seatChoose" method="post" onsubmit="return seatChoose();">
		${tk.c_name} 
		- ${tk.th_num}관 
		- ${tk.s_seat_rest}석/150석 
		- 영화제목 ${tk.m_title}
		- ${tk.s_start_time}
		- ${tk.m_runningtime}분
		<a href="#" onclick="idCheck(${tk.s_code}); return false;">예매</a>
		<input type="hidden" name="s_code" value="${tk.s_code}">
		<input type="hidden" name="c_name" value="${tk.c_name}">
		<input type="hidden" name="th_num" value="${tk.th_num}">
		<input type="hidden" name="m_title" value="${tk.m_title}">
		<input type="hidden" name="s_start_time" value="${tk.s_start_time}">
		<input type="hidden" name="th_row" value="${tk.th_row}">
		<input type="hidden" name="th_col" value="${tk.th_col}">
		<input type="submit" value="예매"/>
		<br>
		</form>
		</c:forEach>
	</c:if>
		
	</div>
	<div class="tail">
		<div>영화선택 -></div>
		<div>영화관선택 -></div>
		<div>좌석선택 -> </div>
		<div>결제 -> </div>
	</div>
</div>
<!-- <div id="section">
	<div id="ticket_left">
		<form action="ticketChoose" method="post">
			날짜<br>
			<select name="s_date">
				<option value="2018-03-26">2018-03-26</option>
				<option value="2018-03-27">2018-03-27</option>
				<option value="2018-03-28">2018-03-28</option>
				<option value="2018-03-29">2018-03-29</option>
			</select><br><br>
			영화관<br>
			<select name="c_code">
				<option value=1>화곡점</option>
				<option value=2>부천점</option>
				<option value=3>일산점</option>
			</select><br><br>
			영화<br>
			<select name="m_code">
				<option value=1>퍼시픽림: 업라이징</option>
				<option value=2>지금 만나러 갑니다</option>
				<option value=3>사라진 밤</option>
				<option value=4>리틀 포레스트</option>
				<option value=5>툼레이더</option>
				<option value=6>레디플레이어원</option>
				<option value=7>셰이프 오브 워터</option>
				<option value=8>영웅본색4</option>
				<option value=9>블랙팬서</option>
				<option value=10>로건럭키</option>
			</select>
			<br><br>
			<input type="submit" value="선택 >>>"/>
		</form>
	</div>
</div> -->
<%@ include file="../footer.jsp" %>

</body>
</html>