

// 성별 선택

$(document).on("click", "#gender_male, #gender_female", function(){
	
	var clas = $(this).attr("id");
	

	if(clas == "gender_male"){
		$("#"+clas).prop("checked",true);
		$("#gender_female").prop("checked",false);
	}
	else if(clas == "gender_female"){
		$("#"+clas).prop("checked",true);
		$("#gender_male").prop("checked",false);
	}
});




// 아이디 이미 있는지 ajax 로 확인

$("#id").on("blur",function(){
	
	var id = $.trim($("#id").val());
	
	
	if(id != "" && !id.match(/[^0-9a-zA-Z]/gi) && id.length > 6 && id.length<16){
		$.ajax({
			url : "/login_id_exist",
			type : "post",
			data : {mem_id : id},
		
			success : function(data){
				if($.trim(data) == "success"){
					$(".input_id_caution").html("<span class='input_id_cation_blue'>(사용가능한 아이디 입니다)</span>");
				}
				else if($.trim(data) == "fail"){
					$(".input_id_caution").html("<span class='input_id_cation_red'>(이미있는 아이디 입니다.)</span>");
				}
			},
		
			error : function(){
				swal("오류발생");
			}
		});
	
	}
	else{
		$(".input_id_caution").html("<span class='input_id_cation_red'>(올바르게 입력해주세요.)</span>");
	}
	
});



// 비밀번호, 비밀번호 확인 일치하는지 안하는지

$("#pass_cert").on("blur",function(){
	
	var pass = $.trim($("#pass").val());
	var pass_cert = $.trim($("#pass_cert").val());
	
	if(/\s/gi.test(pass) || pass.length<6 || pass.length >16 || /\s/gi.test(pass_cert)  ){
		$(".input_pass_caution").html("<span class='input_pass_caution_red'>(올바르게 입력해주세요.)</span>");
		return;	
    }
	else{
		if(pass == pass_cert){
			$(".input_pass_caution").html("<span class='input_pass_caution_blue'>(비밀번호 일치)</span>");
		}
		else{
			$(".input_pass_caution").html("<span class='input_pass_caution_red'>(비밀번호 불일치)</span>");
		}
	}
	
});



// 양력음력 클릭했을때 색깔 전환

$(document).on("click",".yang , .um", function(){
	
     var clas = $(this).attr("class");
     
     
     if(clas=="yang"){
     
    	 if($("."+clas).hasClass("choice")){
    	
    	 }
    	 else{
    		 $("."+clas).addClass("choice");
    		 $(".um").removeClass("choice");
    	 }
	
     }
     else if(clas == "um"){
    	 
    	 if($("."+clas).hasClass("choice")){

         }
         else{
        	 $("."+clas).addClass("choice");
        	 $(".yang").removeClass("choice");
         }
    	 
     }
     
});








// 주소찾기

$(".post_num_button").click(function(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	if(data!=null){
        		if(data.jibunAddress != ""){
        			$("#post_num").val(data.postcode);
                    $("#addr1").val(data.jibunAddress);
        		}
        		else if(data.roadAddress != ""){
        			$("#post_num").val(data.postcode);
        			$("#addr1").val(data.roadAddress);
        		}
        	}
        }
    }).open();
});






//핸드폰. 연락처  번호 입력 할 때에 글자 제한하는 기능

$(document).on("blur","#join_call2,  #join_call3",function(){
	var clas = $(this).attr("id");
	
	
	// 숫자 외의 값이 입렦됐을때 초기화
	if(!$.trim($("#"+clas).val()).match(/[0-9]*/g)){
		$("#"+clas).val("");
		return;
	}
	
	
	
    // 숫자 3글자 , 4글자 제한 해주는것
    if(clas == "join_call2"){
		
		var val = $.trim($("#"+clas).val());
	      
		if(val.length > 3){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "join_call3"){
    	
    	var val = $.trim($("#"+clas).val());
        
		if(val.length > 3){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
   
	
});



// 생년월일 숫자 갯수 제한하는기능

$(document).on("blur","#birth1,  #birth2, #birth3",function(){
	var clas = $(this).attr("id");
	
	
	// 숫자 외의 값이 입렦됐을때 초기화
	if(!$.trim($("#"+clas).val()).match(/[0-9]*/g)){
		$("#"+clas).val("");
		return;
	}
	
	
	
    // 숫자 3글자 , 4글자 제한 해주는것
    if(clas == "birth1"){
		
		var val = $.trim($("#"+clas).val());
	      
		if(val.length > 4){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "birth2"){
    	
    	var val = $.trim($("#"+clas).val());
        
		if(val.length > 2){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{2}/i));
		}
		
	}
    else if(clas == "birth3"){
    	
    	var val = $.trim($("#"+clas).val());
        
		if(val.length > 2){
			$("#"+clas).val("");
			$("#"+clas).val(val.match(/[0-9]{2}/i));
		}
		
	}
   
	
});



// 아이디 검증
function e_id(){
	var reg = /\W/gi;
	var str = $("#id").val();
	
	if(reg.test(str)){
		$("#id").val("");
	
	}
	else{
		if($("#id").val().length>20){
			$("#id").val("");
		
		}
		else{
		
		}
	}	
}




    
    
    
    // 회원가입 버튼 눌렀을때   =================================================================================================
    
    	
    var entry_flag = 0;
    

    $(".entry_button").on("click",function() {
    	
    	
    	var info_agree_flag = $("#info_agree_box").is(":checked");
    	var user_agree_flag = $("#user_agree_box").is(":checked");
    	
    	

			if (entry_flag == 0 ) {

				entry_flag = 1;
		
				var id = $.trim($("#id").val().toLowerCase());
				var pass = $.trim($("#pass").val().toLowerCase());
				var pass_cert = $.trim($("#pass_cert").val().toLowerCase());
				var name = $.trim($("#name").val());
				var call = $.trim($(".select_call").val())+$.trim($("#join_call2").val())+$.trim($("#join_call3").val());
				var email = $.trim($("#email1").val().toLowerCase())+"@"+$.trim($("#email2").val().toLowerCase());
                var addr = $.trim($("#post_num").val())+$.trim($("#addr1").val())+$.trim($("#addr2").val());
                var mem_personal_info_agree;
                var mem_sevice_terms_agree;
                var mem_shopping_info_agree_sms;
                var mem_shopping_info_agree_email;
        
                
                if($("#user_agree_box").prop("checked") == true){
                	mem_sevice_terms_agree = 'y';
                }
                else{
                	mem_sevice_terms_agree = 'n';
                }
                
                if($("#info_agree_box").prop("checked") == true){
                	mem_sevice_terms_agree = 'y';
                }
                else{
                	mem_sevice_terms_agree = 'n';
                }

                if($("#sms_agree").prop("checked") == true){
                	mem_shopping_info_agree_sms = 'y';
                }
                else{
                	mem_shopping_info_agree_sms = 'n';
                }
                	
                if($("#email_agree").prop("checked") == true){
                	mem_shopping_info_agree_email = 'y';
                }     
                else{
                	mem_shopping_info_agree_email = 'n';
                }        	
                	
				var gender;
				
				$(".gender_input").each(function(){
					
					if($(this).prop("checked") == true){
						gender = $(this).attr("id");
					}
					
				});
				
				var birth = $.trim($("#birth1").val()) + $.trim($("#birth2").val())+ $.trim($("#birth3").val());
				var birth_choice ;
				
				$(".yang_um_div").each(function(){
					if($(this).attr("class").match("choice")){
						birth_choice = $(this).data("val");
					}
				});
				
				
				
				
				// 값 ====================================================================
				
				
				
				
				$(".entry_button").text("잠시만 기다려주세요...");

				// 공백검사
				$("#entry div input").each(function() {
					if ($(this).val() == "") {
					
						ret = 1;
						entry_flag = 0;
						$(".entry_button").text("회원가입");
						return 0;
					}

				});

				
				
				
				
				
				// 로그인 정규식 구별 영역ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

				if (/[^a-zA-Z0-9]/gi.test(id)) {
				    swal("아이디는 영문숫자 조합으로 입력해주세요.");
				    $("#id").focus();
				    return;
				}
				else if ($.trim($("#id").val()).length <6 || $.trim($("#id").val()).length > 16) {
				    swal("아이디는 6자이상, 16자이하로 입력해주세요.");
				    $("#id").focus();
				    return;
				}
				else if ($.trim($("#pass").val()).length<8 || $.trim($("#pass").val()).length>16) {
				    swal("비밀번호는 8자이상 16자 이하로 적어주세요");
				    $("#pass").focus();
				    return;
				}
				else if (/\s/gi.test(pass)) {
				    swal("비밀번호는 8자이상 16자 이하의 특수문자, 영문, 숫자 조합입니다.");
				    $("#pass").focus();
				    return;
				}
				else if ($.trim($("#pass_cert").val()).length<8 || $.trim($("#pass_cert").val()).length>16) {
				    swal("비밀번호는 8자이상 16자 이하로 적어주세요");
				    $("#pass_cert").focus();
				    return;
				}   
				else if (/\s/gi.test(pass_cert)) {
				    swal("비밀번호는 8자이상 16자 이하의 특수문자, 영문, 숫자 조합입니다.");
				    $("#pass_cert").focus();
				    return;
				}
				else if ($("#name").val().length != 3 ) {
				    swal("이름은 3글자로 적어주세요.");
				    return;
				}
				else if (/[^가-힣]/gi.test(name)) {
				    swal("이름은 올바르게 적어주세요 ex)홍길동 o, ㄱ수근 x");
				    return;
				}
				else if (/[^0-9]/gi.test(call)) {
				    swal("휴대폰 번호는 숫자만 적을 수 있습니다.");
				    return;
				}
				else if (call.length != 11) {
				    swal("휴대폰 번호는 11자리 숫자로 적어주세요");
				    return;
				}
				else if (!email.match(/[0-9a-zA-Z]*@{1}[a-zA-Z]*\.{1}com|net|COM|NET/gi)) {
				    swal("이메일 형식에 맞지 않습니다.");
				    return;
				}
				else if (/[§]/gi.test(addr)) {
				    swal("주소에 올바르지않은 특수문자가 입력되어있습니다.");
				    return;
				}
				else if(!info_agree_flag || !user_agree_flag){
					swal("모든 약관에 체크해주세요.");
					return;
				}

				

				
                
				
				// 회원가입 내용 전송
				$.ajax({
					url:"/join_entry",
					type:"post",
					data : {mem_id:id, mem_name:name, mem_pass:pass, 
						    mem_pass2:pass_cert, mem_phone:call, mem_email:email, mem_addr : addr,
						    mem_birth : birth, mem_gender : gender, mem_personal_info_agree:mem_personal_info_agree,
						    mem_sevice_terms_agree:mem_sevice_terms_agree, mem_shopping_info_agree_sms:mem_shopping_info_agree_sms, 
						    mem_shopping_info_agree_email:mem_shopping_info_agree_email},
					
					success : function(data){
						if(data=="id_cert_success"){
							swal("회원가입이 완료되었습니다");
							$(".entry_button").text("회원가입");
							
							setTimeout(function(){
								location.href="/member/login";
							},2000);
							
						}
						else if(data=="id_cert_fail"){
							swal("이미 존재하는 아이디 입니다.");
							$(".entry_button").text("회원가입");
							entry_flag = 0;
						}
					},
					
					error : function(err){
						alert("회원가입에 실패하였습니다.");
						$(".entry_button").text("회원가입");
						entry_flag = 0;
					}
					
				});
				
				
				
				// 플래그 if
			} else {
				swal("모든 약관에 체크 해주십시오.");
			}

		});
    
   
    

      
 // 라디오 체크 자바스크립트 기능
 
 $("#all_agree_box").click(function(){
	if($("#all_agree_box").prop("checked") == true){
		$("#user_agree_box").prop("checked",true);
		$("#info_agree_box").prop("checked",true);
		$("#sms_agree").prop("checked",true);
		$("#email_agree").prop("checked",true);	
	} 
	else{
		$("#user_agree_box").prop("checked",false);
		$("#info_agree_box").prop("checked",false);
		$("#sms_agree").prop("checked",false);
		$("#email_agree").prop("checked",false);
	}
 }); 
    
    
  
    
    
 
	
    
    
    
    // 히스토리 백
    
    
    $(".back_button").click(function(){
        	history.back();
        });
    
    
    