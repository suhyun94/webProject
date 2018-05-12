<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>무비포스트 클릭 화면</title>
</head>
<body> 
<div id="section">
	<form action="insertmoviepost">
	<input type="hidden" value="1234" name="MP_CODE" value="${movielist.MP_CODE}" />
	 
	제목::<input type="text" name="MP_TITLE" value="${movielist.MP_TITLE}"><br>
	<hr>
	사진선택::
	<select name='M_CODE'>
  <option value='' selected>-- 선택 --</option>
  <option value='1'>퍼시픽림</option>
  <option value='2'>지금만나러갑니다</option>
  <option value='3'>사라진밤</option>
  <option value='4'>리틀포레스트</option>
  <option value='5'>툼레이더</option>
  <option value='6'>레디플레이어원</option>
  <option value='7'>셰이프오브워터</option>
  <option value='8'>영웅본색4</option>
  <option value='9'>블랙팬서</option>
  <option value='10'>로건럭키</option>
  <option value='11'>소공녀</option>
  <option value='12'>7년의밤</option>
  <option value='13'>치즈인더트랩</option>
	</select>
	사진::<img src="${movielist.MP_PIC }"><br><br><br>
	글내용::<br>
	<textarea name="MP_CONTENT" rows="10" cols="20"  >${movielist.MP_CONTENT}</textarea>
	<br>
	<hr>
	<input type="submit" value="글작성">&nbsp;&nbsp;<input type="reset" value="취소" >
	</form>
	<a href="moviepost">글 목록보기</a>
	<hr>
	<c:forEach var="r" items="${reply}">
	${r.u_id } :: ${r.mpr_content } <br>
	</c:forEach>
	<br>
	
	<form action="">
	<input type="text">&nbsp;&nbsp;<input type="submit" value="작성">
	</form>
	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>