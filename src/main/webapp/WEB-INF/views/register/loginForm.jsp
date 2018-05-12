<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LOGIN</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</head> 
<body>
<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<div id="naverIdLogin"></div>
<!-- //네이버아이디로로그인 버튼 노출 영역 -->

	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "UDv4LN_ulLjNnIr7XM_W",
				callbackUrl: "http://localhost:8080/CinemaCloud/loginForm",
				isPopup: false,
				callbackHandle: true,
				loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}
		);

		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();

		/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
					var email = naverLogin.user.getEmail();
					var id = naverLogin.user.getId();
					alert("ss"+email);
					if( email == undefined || email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
						naverLogin.reprompt();
						return;
					}
					
					$.ajax({
						type:'POST',
						url:'naverSession',
						data:{u_id:id},
						success:function(result){
							if(result==1){
								window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/CinemaCloud");
							}else{
								alert("세션담지못했다...");
							}
						}
					});

				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});
	</script>





<div id="section">
	<!-- 로그인 폼 -->
	<c:if test="${not empty idError}">
		<script>
		alert('${idError}');
		</script>
	</c:if>
	<form action="login" method="post" name="log_f" id="login_f">
	<h2>로그인</h2>
	<table>
		<tr>
			<td>
			<input type="text" name="u_id" id="u_id" placeholder="아이디" />
			</td>
			<td rowspan="2">
			<input type="submit" value="로그인" />
			</td>
		</tr>
		<tr>
			<td>
			<input type="password" name="u_pw" id="u_pw" placeholder="비밀번호"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="checkbox" name="save_id" id="save_id" />
			<label for="save_id"> 비밀번호 저장</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<a href="registerForm">회원가입</a> 
			<a href="idPwFind">아이디/비밀번호 찾기</a>
			</td>
		</tr>
	</table>
	
	</form>	
	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>