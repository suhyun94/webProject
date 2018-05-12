<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>좌석선택</title>
<script>
var st_num = "${st_num}";
var t_num = new Array();
function check(a){
	st_num = st_num+"/"+a;
	t_num.push(a);
	var x = document.getElementById(a);
	x.style.color = "blue"; 
	x.innerHTML = "▣";
}
function res(s){
	var s_code = s;
	var t_price = t_num.length*10000;
	confirm("예매하시겠습니까?");
	location.href="ticketResult?st_num="+st_num+"&t_num="+t_num+"&t_price="+t_price+"&s_code="+s_code;
	/* alert(st_num);
	alert(t_num);
	alert(t_num.length*10000); */
}
</script>
</head>
<body>
<div id="section">
<h2>좌석선택</h2>
<h2>${c_name}-${th_num}관-${m_title}-${s_start_time}

<br>
<%
	String st_num = (String)request.getAttribute("st_num");
	String[] seat = st_num.split("/");
	int row = (int)request.getAttribute("row");
	int col = (int)request.getAttribute("col");
	char ch = 'A';
	for(int i=1;i<=row;i++){
		%>
		<br><hr><%=ch %>열
		<%
		for(int j=1;j<=col;j++){
			String check = String.valueOf(ch)+String.valueOf(j);
			int a = 0;
			for(int h=0;h<seat.length;h++){
				if(seat[h].equals(check)){
					a=1;
					break;
				}else a=0;
			}
			if(a==1) {%><%=j%>■&emsp;<%}
			else {%><%=j%><span id="<%=check%>" onclick="check('<%=check%>')">□</span>&emsp;<%}
		}
		ch++;
	}	
%>
<hr><br>
<a href="#" onclick="res(${s_code})">예매</a>
</h2>
</div> 

<%@ include file="../footer.jsp" %>
</body>
</html>