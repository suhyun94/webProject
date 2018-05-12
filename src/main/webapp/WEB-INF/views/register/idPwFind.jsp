<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>idPwFind</title>

</head>
<body>
<div id="section">
<c:if test="${not empty id}">
	<script>
	alert("찾으신 아이디는 "+'${id}'+" 입니다.");
	</script>
</c:if>
<c:if test="${not empty resultMsg}">
	<script>
	alert('${resultMsg}');
	</script>
</c:if>
<div class="findBox">
<form action="idFind" method="post">
	<table>
		<tr>
			<td colspan="2"><h2>아이디 찾기</h2></td>
		</tr>
		<tr>
			<td><label for="u_name">이름</label></td>
			<td><input type="text" placeholder="이름 입력" name="u_name" id="u_name"/></td>
		</tr>
		<tr>
			<td><label for="u_birth">생년월일</label></td>
			<td><input type="text" placeholder="생년월일 입력" name="u_birth" id="u_birth"/></td>
		</tr>
		<tr>
			<td><label for="u_phone">핸드폰</label></td>
			<td><input type="text" placeholder="핸드폰 번호 입력" name="u_phone" id="u_phone"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="확인"></td>
		</tr>
	</table>
</form>
</div>

<div class="findBox">
<form action="pwFind" method="post">
	<table>
		<tr>
			<td colspan="2"><h2>비밀번호 찾기</h2></td>
		</tr>
		<tr>
			<td><label for="u_id">아이디</label></td>
			<td><input type="text" placeholder="아이디 입력" name="u_id" id="u_id"/></td>
		</tr>
		<!-- 
		<tr>
			<td><label for="u_name">이름</label></td>
			<td><input type="text" placeholder="이름 입력" name="u_name" id="u_name"/></td>
		</tr>
		 -->
		<tr>
			<td><label for="u_email">이메일</label></td>
			<td><input type="email" placeholder="이메일 입력" name="u_email" id="u_email"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="확인"></td>
		</tr>		
	</table>
</form>
</div>
	
</div>

<%@ include file="../footer.jsp" %>
</body>
</html>