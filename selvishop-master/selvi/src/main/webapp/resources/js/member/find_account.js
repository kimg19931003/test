

//아이디찾기, 비밀번호 찾기 버튼 눌렀을때

$(document).on('click',".tab_id, .tab_pass",function(){
	
	var clas = $(this).attr("class");
	
	
	
	if(clas=="tab_id"){
		
		// 아이디 찾기 탭 눌렀을때
		$(".find_account_id").css("display","none");
		$(".find_account_email").css("display", "block");
		$(".find_account_phone").css("display", "none");
		
		
		$(".tab_pass").css("border-bottom", "3px solid #d0d0d0");
		$("."+clas).css("border-bottom", "3px solid #e40069");
		$("#email_checkbox").prop("checked", true);
		$("#phone_checkbox").prop("checked", false);
		
		$("."+clas).data("state","choose");
		$(".tab_pass").data("state", "ban")
	}
	else if(clas=="tab_pass"){
		
		// 비밀번호 찾기 탭 눌렀을때 
		$(".find_account_id").css("display","block");
		$(".find_account_email").css("display", "block");
		$(".find_account_phone").css("display", "none");
		
		
		$(".tab_id").css("border-bottom", "3px solid #d0d0d0");
		$("."+clas).css("border-bottom", "3px solid #e40069");
		$("#email_checkbox").prop("checked", true);
		$("#phone_checkbox").prop("checked", false);
		
		$("."+clas).data("state","choose");
		$(".tab_id").data("state", "ban")
	}
});













// 이메일번호로찾기, 휴대폰번호로 찾기 중 하나 클릭했을때 토글

$(document).on('click',"#email_checkbox, #phone_checkbox",function(){
	
	var clas = $(this).attr("id");
	

	if(clas == "phone_checkbox"){
		$("#"+clas).prop("checked",true);
		$("#email_checkbox").prop("checked",false);
		
		$("#"+clas).data("state","choose");
		$("#email_checkbox").data("state","ban")
		
		$(".find_account_email").css("display","none");
		$(".find_account_phone").css("display","block");
	}
	else if(clas == "email_checkbox"){
		$("#"+clas).prop("checked",true);
		$("#phone_checkbox").prop("checked",false);
		
		$("#"+clas).data("state","choose");
		$("#phone_checkbox").data("state","ban")
		
		$(".find_account_email").css("display","block");
		$(".find_account_phone").css("display","none");
		
	}
	
});








//핸드폰. 연락처  번호 입력 할 때에 글자 제한하는 기능

$(document).on("blur"," #phone2, #phone3",function(){
	var clas = $(this).attr("id");
	
	
	// 숫자 외의 값이 입렦됐을때 초기화
	if(!$.trim($("#"+clas).val()).match(/[0-9]*/g)){
		$("#"+clas).val("");
		return;
	}
	
	
	
    // 숫자 3글자 , 4글자 제한 해주는것
    if(clas == "phone2"){
		
		var val = $.trim($("#"+clas).val());
	      
		if(val.length > 3){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "phone3"){
    	
    	var val = $.trim($("#"+clas).val());
        
		if(val.length > 3){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
   
	
});











// 아이디, 비밀번호 찾기에서 확인버튼 눌렀을때

$(".find_account_button").click(function(){
	
	var id = $.trim($("#id").val());
	var name = $.trim($("#name").val());
    var email = $.trim($("#email").val());
    var phone = $.trim($(".select_call").val()) + $.trim($("#phone1").val()); + $.trim($("#phone2").val());;
	
    var url;
    var data = {};
    
   
    if (/[^a-zA-Z0-9]/gi.test(id) && $(".tab_pass").data("state") == "choose") {
	    swal("아이디는 영문숫자 조합으로 입력해주세요.");
	    $("#id").focus();
	    return;
	}
	else if ($.trim($("#id").val()).length <6  && $(".tab_pass").data("state") == "choose" || $.trim($("#id").val()).length > 16  && $(".tab_pass").data("state") == "choose") {
	    swal("아이디는 6자이상, 16자이하로 입력해주세요.");
	    $("#id").focus();
	    return;
	}
	else if ($.trim($("#name").val()).length != 3 ) {
	    swal("이름은 3글자로 적어주세요.");
	    return;
	}
	else if (/[^가-힣]/gi.test(name)) {
	    swal("이름은 올바르게 적어주세요 ex)홍길동 o, ㄱ수근 x");
	    return;
	}
	else if (/[^0-9]/gi.test(phone) && $.trim($("#phone_checkbox").val()).length > 16  && $("#phone_checkbox").data("state") == "choose") {
	    swal("휴대폰 번호는 숫자만 적을 수 있습니다.");
	    return;
	}
	else if (phone.length != 11 && $("#phone_checkbox").data("state") == "choose") {
	    swal("휴대폰 번호는 11자리 숫자로 적어주세요");
	    return;
	}
	else if (!email.match(/[0-9a-zA-Z]*@{1}[a-zA-Z]*\.{1}com|net|COM|NET/gi) && $("#email_checkbox").data("state") == "choose") {
	    swal("이메일 형식에 맞지 않습니다.");
	    return;
	}
    
    
    
    if($(".tab_id").data("state") == "choose" && $("#email_checkbox").data("state") == "choose" ){
        url = "/member/find_account_id_find_email";	
        data.mem_name = $.trim($("#name").val());
        data.mem_email = $.trim($("#email").val());
    }
    else if($(".tab_id").data("state") == "choose" && $("#phone_checkbox").data("state") == "choose" ){
        url = "/member/find_account_id_find_phone";	
        data.mem_name = $.trim($("#name").val());
        data.mem_phone = $.trim($("#phone").val());
    }
    else if($(".tab_pass").data("state") == "choose" && $("#email_checkbox").data("state") == "choose" ){
        url = "/member/find_account_pass_find_email";	
        data.mem_id = $.trim($("#id").val());
        data.mem_name = $.trim($("#name").val());
        data.mem_email = $.trim($("#email").val());
    }
    else if($(".tab_pass").data("state") == "choose" && $("#phone_checkbox").data("state") == "choose" ){
        url = "/member/find_account_pass_find_phone";	
        data.mem_id = $.trim($("#id").val());
        data.mem_name = $.trim($("#name").val());
        data.mem_phone = $.trim($("#phone").val());
    }
    

    
    $.ajax({
    	url : url,
    	type : "post",
    	data : data,
    	dataType:"json",
    	
    	success : function(data){
    		 if($.trim(data.state) == "success"){
    			 if(data.val_kinds == "phone"){
    			 	location.href="/member/find_account_complete?val="+data.val+"&val_kinds="+data.val_kinds;
    			 }
    			 else if(data.val_kinds == "email"){
    			 	location.href="/member/find_account_complete?val="+data.val+"&val_kinds="+data.val_kinds;
    			 }
    		 }
    		 else if($.trim(data.state) == "fail"){
    			 swal("입력정보가 올바르지 않습니다.");
    		 }
    		 else if($.trim(data.state) == "id_mail_fail"){
    			 swal("메일 발송에 실패하였습니다.");
    		 }
    		 else if($.trim(data.state) == "pass_mail_fail"){
    			 swal("메일 발송에 실패하였습니다.");
    		 }
    	},
    	
    	error : function(){
    		
    	}
    	
    	
    	
    });
    
    
    
    
});
