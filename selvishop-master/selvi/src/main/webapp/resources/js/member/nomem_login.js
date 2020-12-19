

//로그인 아이디 비밀번호 올바르게 입력했는지 판별해주는 판별식

//버튼 여러번 클릭해도 한번만 인식되도록 하는 플래그
var overlap_mem_flag = true;
$(".btnLogin").click(function(){
		
	
	if(overlap_mem_flag == true){
		overlap_mem_flag = false;
		
		// 정규표현식 변수
		var reg_id = /[a-z]/gi;
		var reg_irre_id = /\W/gi;
		var reg_pass = /[]/gi;
	
	    // 아이디, 패스워드 값
		var id = $.trim($("#email").val());
		var password = $.trim($("#password").val());
		
		//아이디, 패스워드 공백 판별식
		if($("#email").val()=="" || $("#password").val()==""){
			swal("아이디와 비밀번호를 입력해주세요.");	
			overlap_mem_flag = true;
			return;	
		}
	
		//아이디 정규 판별식
		if(reg_id.test($("#email").val()) && reg_irre_id.test($("#email").val()) || $("#email").val().length < 6 || $("#email").val().length > 16){
			swal("아이디는 영문 숫자를 포함한 6~16자로 입력 해주세요.");
			overlap_mem_flag = true;
			return;
		}
		
	
		//패스워드 정규 판별식
		if($("#password").val().length < 8 || $("#password").val().length > 16){
			swal("패스워드는 영문 숫자포함 8~16자로 입력 해주세요.");
			overlap_mem_flag = true;
			return;
		}
		
		
		//나중에 포스트할 값 보내주는 ajax
		$.ajax({
			type : "post",
			url : "/login_entry", 
			data : {id:id, password:password},
			
			success : function(data){
				if(data=="login_entry_success"){
					
					location.reload();
				}
				else if(data=="login_entry_fail"){
					swal("아이디나 비밀번호가 올바르지 않습니다.");
					overlap_mem_flag = true;
				}
			},
			
			error : function(){
				alert("실패");
				overlap_mem_flag = true;
			}
		});
		
	}
	
});



// 비회원 주문 이름, 핸드폰번호 올바르게 입력했는지 판별해주는 판별식

var overlap_nmem_flag = true;
$(".nonmemLogin").click(function(){
		
	
	if(overlap_nmem_flag == true){
		overlap_nmem_flag = false;
		
		// 정규표현식 변수
		var reg_id = /[a-z]/gi;
		var reg_irre_id = /\W/gi;
		var reg_pass = /[]/gi;
	
	
		//아이디, 패스워드 공백 판별식
		if($("#nonmemberName").val()=="" || $("#nonmemberPass").val()=="" || $("#nonmemberNo1").val()=="" || $("#nonmemberNo2").val()==""){
			alert("비회원 주문 정보를 입력 해 주십시오.");	
			overlap_nmem_flag = true;
			return;	
		}
	
		//아이디 정규 판별식
		if(reg_id.test($("#nonmemberName").val()) && reg_irre_id.test($("#nonmemberName").val()) || $("#nonmemberName").val().length < 6 || $("#nonmemberName").val().length > 16){
			alert("아이디는 영문 숫자를 포함한 6~16자로 입력 해주세요.");
			overlap_nmem_flag = true;
			return;
		}
		
	
		//패스워드 정규 판별식
		if($("#nonmemberPass").val().length < 8 || $("#nonmemberPass").val().length > 16){
			alert("패스워드는 영문 숫자포함 8~16자로 입력 해주세요.");
			overlap_nmem_flag = true;
			return;
		}
		
		//주민번호 정규 판별식
		if($("#nonmemberPass").val().length < 8 || $("#nonmemberPass").val().length > 16){
			alert("패스워드는 영문 숫자포함 8~16자로 입력 해주세요.");
			overlap_nmem_flag = true;
			return;
		}
		
		
		//나중에 포스트할 값 보내주는 ajax
		$.ajax({
			type : "post",
			url : "", 
			data : 1,
			
			success : function(){
				
			},
			
			error : function(){
				
			}
		});
		
	}
	
});

