

$(function(){
	
	
	
	
	
	
	// 공개글 비밀글 선택
	
	$(document).on("click", "#open, #secret", function(){
		
		var clas = $(this).attr("id");
		

		if(clas == "open"){
			$("#"+clas).prop("checked",true);
			$("#secret").prop("checked",false);
		}
		else if(clas == "secret"){
			$("#"+clas).prop("checked",true);
			$("#open").prop("checked",false);
		}
	});
	
	
	
	
	// 취소버튼 눌렀을때
	
	$(".faq_cancel").click(function(){
		history.back();
	});
	
	
	
	
	$(".faq_reg").click(function(){
		
		
		
		var board_id=user_id;
		var board_writer = $.trim($(".notice_writer_input").val());
		var board_title = $.trim($(".faq_setting").val());
		var board_content = $.trim($(".notice_content").val());
		var board_secret_setting;
		var board_password = $.trim($("#passwrod_input").val()).toLowerCase();
		
		
		
		alert(board_password);
		
		if($("#open").prop("checked") == true){
			board_secret_setting = "y";
		}
		else if($("#secret").prop("checked") == true){
			board_secret_setting = "n";
		}
		
	
	    
		if(id_empty){
			alert("로그인이 되어있지 않습니다. 로그인해주세요.");
			location.href="/member/login";
			return;
		}
		

		if(board_content.length < 300){
			
		}
		else{
			swal("내용은 300자 이하로 입력해주세요");			
			return;
		}
		
		
		if(board_writer.length < 2){
			swal("작성자 이름은 두글자 이상으로 적어주세요.");
			return;
		}
		else if(/[^0-9a-zA-Z가-힣ㄱ-ㅎㄱ]/gi.test(board_writer)){
			swal("작성자에 특수문자는 허용되지 않습니다.");
			return;
		}
		else if(board_content.length < 10){
			swal("내용은 10글자 이상 적어주세요.");
			return;
		}
		else if(/[^0-9a-zA-Z가-힣ㄱ-ㅎ ]/gi.test(board_content)){
			swal("내용에 특수문자는 허용되지 않습니다.");
			return;
		}
		else if(board_password.length <6){
			swal("비밀번호는 6자 이상으로 입력해주세요.");
			return;
		}
		else if(/[^0-9a-zA-Z]/gi.test(board_password)){
			swal("비밀번호에 특수문자는 허용되지 않습니다.");
			return;
		}
		
		
		
		
		
		
		
		
		$.ajax({
			url : "/cs/counselor_faq_write_post",
			type : "post",
			data  : {board_id:board_id,  board_title:board_title, board_content:board_content,
				board_secret_setting:board_secret_setting, board_password:board_password, board_writer:board_writer },
			
			success : function(data){
				swal("등록되었습니다");
			},
			
			error : function(){
				swal("등록실패하였습니다.");
			}
		
			
		});
	});
	

});



