// 이메일번호로찾기, 휴대폰번호로 찾기 중 하나 클릭했을때 토글

$(document).on('click',"#email, #phone",function(){
	
	var clas = $(this).attr("id");
	

	if(clas == "phone"){
		$("#"+clas).prop("checked",true);
		$("#email").prop("checked",false);
		
		$("#"+clas).data("state","choose");
		$("#email").data("state","ban")
		
		$(".find_account_email").css("display","none");
		$(".find_account_phone").css("display","block");
	}
	else if(clas == "email"){
		$("#"+clas).prop("checked",true);
		$("#phone").prop("checked",false);
		
		$("#"+clas).data("state","choose");
		$("#phone").data("state","ban")
		
		$(".find_account_email").css("display","block");
		$(".find_account_phone").css("display","none");
		
	}
	
});







// 임시비밀번호 전송 버튼 눌렀을때

$(".join_complete_send_pass").click(function(){
	
	
	var url;
	var email_flag = false;
	var phone_flag = false;
	
	var email = $.trim($(".email_display_div").val());
	
	
	
	if($("#email").prop("checked") == true){
		url = "/member/find_account_pass_find_email";
		email_flag = true;
	}
	else if($("#phone").prop("checked") == true){
		url = "/member/find_account_pass_find_phone";
		phone_flag=true;
	}
	
	if(email_flag){
		$(".join_complete_title").text("임시 비밀번호가 고객님의 이메일로 전송되었습니다.");
	}
	else if(phone_flag){
		$(".join_complete_title").text("임시 비밀번호가 고객님의 휴대폰 번호로 전송되었습니다.");
	}
		
	$(".main_phone_checkbox").remove();
	$(".email_display_div").remove();
	
	$(".join_complete_comment").html("<div class='change_div'>"+mem_email+"</div><div class='change_div'>항상 고객님의 즐겁고 편리한 쇼핑을 위해 최선을 다하는 셀비샵이 되도록 하겠습니다.</div>");
	
	/*
	$.ajax({
    	url : url,
    	type : "post",
    	data : {mem_email : email, mem_id : mem_id},
    	dataType:"json",
    	
    	success : function(data){
    		
    		
    	},
    	
    	error : function(){
    		
    	}
    });
    
    */
});