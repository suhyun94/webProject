/* 회원가입  */
function registerCheck(){
	var id = $('#u_id').val();
	
	$.ajax({
		type:'POST',
		url:'idCheck',
		data:{u_id:id},
		success:function(result){
			if(result==1){
				$('#checkMessage').html('사용할 수 없는 아이디입니다.');
				$('#checkType').attr('class','modal-content panel-success');
			}else{
				$('#checkMessage').html('사용할 수 있는 아이디입니다.');
				$('#checkType').attr('class','modal-content panel-warning');
				
			}
			$('#checkModal').modal("show");
		}
	});
	
}