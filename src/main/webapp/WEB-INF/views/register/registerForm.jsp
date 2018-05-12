<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ include file="../setting.jsp" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>registerForm</title>
	
	<script type="text/javascript">
	var idCheck;
	var pwC;
	function registerCheck(){
		var id = $('#u_id').val();
		if(id=='' || id==null){
			$('#checkMessage').html('아이디를 입력해주세요.');
			$('#checkType').attr('class','modal-content panel-warning');
			$('#checkModal').modal('show');	
			$('#checkModal').on('hidden.bs.modal', function () {
			    $('#u_id').focus();
			});
			idCheck=0;
			return false;
		}
		$.ajax({
			type:'POST',
			url:'idCheck',
			data:{u_id:id},
			success:function(result){
				if(result==1){
					$('#checkMessage').html('사용할 수 없는 아이디입니다.');
					$('#checkType').attr('class','modal-content panel-warning');
					$('#u_id').val('');
					$('#checkModal').on('hidden.bs.modal', function () {
					    $('#u_id').focus();
					});
					idCheck=0;
				}else{
					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
					$('#checkType').attr('class','modal-content panel-success');
					idCheck=1;
				}
				$('#checkModal').modal('show');
			}
		});
		$('#u_id').focus();
	}
	function pwCheck(){
		var pw = $('#u_pw').val();
		var re_pw = $('#u_pw_re').val();
		if(pw != re_pw){
			pwC=0;
			$('#pwCheck').html('비밀번호가 불일치합니다.');
			$('#pwCheck').css('color','red');
		}else{
			pwC=1;
			$('#pwCheck').html('비밀번호가 일치합니다.');
			$('#pwCheck').css('color','green');
		}
	} 
	function submitCheck(){
		var u_id = $('#u_id').val();
		var u_pw = $('#u_pw').val();
		var u_name = $('#u_name').val();
		var u_birth = $('#u_birth').val();
		var u_phone = $('#u_phone').val();
		var u_email = $('#u_email').val();
		
		if(idCheck!=1){
			$('#checkMessage').html('아이디를 다시 입력해주세요!');
			$('#checkType').attr('class','modal-content panel-warning');
			$('#checkModal').modal('show');
			return false;
		}
		if(pwC!=1){
			$('#checkMessage').html('비밀번호를 다시 입력해주세요!');
			$('#checkType').attr('class','modal-content panel-warning');
			$('#checkModal').modal('show');
			
			return false;
		}
	}
	</script>
</head>
<body>
<div id="section">
	<h2>회원가입폼</h2>
	
	<!-- Modal -->
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center">
	    <div id="checkType" class="modal-content panel-info">
			<div class="modal-header panel-heading">
				<h4 class="modal-title">
					확인메세지
				</h4>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">Close</span>
				</button>
				
			</div>
			<div class="modal-body panel-body" id="checkMessage">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
			</div>
		</div>
	  </div>
	</div>
	</div>	
	
	<form action="insertUser" method="post" onsubmit="return submitCheck();">
	<table>
		<tr>
			<th><label for="u_id">아이디</label></th>
			<td>
			<input type="text" placeholder="아이디 입력" name="u_id" id="u_id" autofocus="autofocus" onchange="registerCheck();"/>
			<button  class="btn btn-primary" type="button" onclick="registerCheck();">중복확인</button>
			</td>
		</tr>
		<tr>
			<th><label for="u_pw">비밀번호</label></th>
			<td><input type="password" placeholder="비밀번호 입력" name="u_pw" id="u_pw" onchange="pwCheck();"/></td>
		</tr>
		<tr>
			<th><label for="u_pw_re">비밀번호 확인</label></th>
			<td><input type="password" placeholder="비밀번호 입력 확인" id="u_pw_re" onchange="pwCheck();"/>
			<span id="pwCheck">비밀번호를 확인해주세요.</span>
			</td>
		</tr>
		<tr>
			<th><label for="u_name">이름</label></th>
			<td><input type="text" placeholder="이름 입력" name="u_name" id="u_name"/></td>
		</tr>
		<tr>
			<th><label for="u_birth">생년월일</label></th>
			<td><input type="text" placeholder="생년월일 입력" name="u_birth" id="u_birth"/></td>
		</tr>
		<tr>
			<th><label for="u_phone">핸드폰</label></th>
			<td><input type="text" placeholder="핸드폰 번호 입력" name="u_phone" id="u_phone"/></td>
		</tr>
		<tr>
			<th><label for="u_email">이메일</label></th>
			<td><input type="email" placeholder="이메일 입력" name="u_email" id="u_email"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="회원가입">
			</td>
		</tr>
	</table>	
	
	</form>

</div>


<%@ include file="../footer.jsp" %>
</body>
</html>