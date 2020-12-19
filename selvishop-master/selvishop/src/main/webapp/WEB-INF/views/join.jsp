<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.util.*"%>
<%
	Random r_join = new Random();
	int i_join = r_join.nextInt(1000);
%> 
    
<!DOCTYPE html>
<html>
<head>
<script src="/resources/js/jquery.js"></script>
<meta charset="utf-8">

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
 <link rel="shortcut icon" href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<title>회원가입</title> 


<link href="/resources/css/join/join.css?i="<%=i_join%> rel="stylesheet">

</head>

<body>




<div style="widht:100%; height:100%;">


<div id="alert" ></div>

<div id="entry" class="hidden">
 
   <div style="font-size: 32px;padding-bottom: 38px;margin-top: 23px;">회원가입</div>

   <input type="text" id="id" placeholder="아이디"  onkeyup="e_id();"/> 

   <input type="password" id="pass" placeholder="비밀번호"  onkeyup="e_pass();"/>
    
   <input type="password" id="pass_cert" placeholder="비밀번호 확인" onkeyup="e_pass1();" />
   
   <input type="text" id="name" placeholder="이름"/>

   <input type="text" id="call" placeholder="전화번호 (' - '없이)" onkeyup="call1();" />
 
   <input type="text" id="email" placeholder="이메일" style="border-bottom:1px solid #d0d0d0;" />
   
   
   <div  class="email_valid" style="font-weight: 100;color:#c4caf5;  font-size:small;margin:8px; ">*가입 인증을 위하여 정확하게 입력 해주세요</div>
   
   



<!-- ========== 개인정보 제공동의  ============ -->
   <div id="user_info_agree" >
   
       
     
       <div class="agree_div">
       
               <div class="all_agree_div">
                      <div style="width:15%;text-align: center;"><input type="checkbox" class="info_agree_box" /></div>
                      <div style="width:25%;">모든 약관 전체동의</div>
               </div>  
    
               <div class="info_agree_div">
                      <div style="width:15%;text-align: center;"><input type="checkbox" class="info_agree_box" /></div>
                      <div style="width:25%;" class="info_agree">슈퍼셀 정보제공동의</div>
                      <div style="width:40%;" class="info_agree_see"><img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvi_shopping_mall_pc/%EC%95%84%EB%9E%98%EB%A1%9C.png" /></div>
               </div>  
               
               <div class="user_agree_div"> 
                   	  <div  style="width:15%;text-align: center;"><input type="checkbox" class="info_agree_box1" /></div>
                   	  <div  style="width:20%;" class="user_agree">개인처리정보방침</div>  
                   	  <div  style="width:40%;" class="user_agree_see"><img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvi_shopping_mall_pc/%EC%95%84%EB%9E%98%EB%A1%9C.png" /></div>
                </div> 
        
        
               
              
       </div> 
       
   
   </div>
    
   
   <!-- ========== 개인정보 제공동의  ============ -->



</div>
  

    
   </div>
  
  
   
   
  
   
<script type="text/javascript">

$(".fa-arrow-left").click(function(){
	location.href="m_login";
});


function call1(){	
	var reg = /[^\d]/gi;
	if(reg.test($("#call").val())){		
		$("#call").val("");
		$(".call_valid").text("숫자만 입력 해 주십시오");
		}
	
	if($("#call").val().length>=11){
		reg = /[\d]{11}/gi;
	    var call_v = $("#call").val();
	    $("#call").val(call_v.match(reg));		
	}
}

$("body").on("click","#product_page",function(){
	 var reg = /.*가격/gi;
	 var explain = $(".product_explain").text();
	
	 var name = explain.match(reg);
	 name = name.toString().replace(/가격/gi,"");
	 $("#product_page").css("display", "none");
	 $("#code_ex_page").css("display","block").css("top","300px");
    $(".title").text(name);
    
    $("#code_ex_page").animate({top:"0"},500,function(){
		 var i = 0;
		 while(i<101){
			 $("#code_ex_page").css("opacity",i*0.01);
			 i=i+1;
		 }
    });
});


$("body").on("click",".code_entry",function(){
	$("#code_ex_page").css("display","none");
	$("#code_out").css("display","block").css("top","500px");
	   $("#code_out").animate({top:"250"},500,function(){
			 var i = 0;
			 while(i<101){
				 $("#code_out").css("opacity",i*0.01);
				 i=i+1;
			 }
		});
});

function e_id(){
	var reg = /\W/gi;
	var str = $("#id").val();
	
	if(reg.test(str)){
		$("#id").val("");
		$(".id_valid").text("영문이나 영문과 숫자를 혼합하여 적어주십시오");
	}
	else{
		$(".id_valid").text("");
		
		if($("#id").val().length>16){
			$("#id").val("");
			$(".id_valid").text("8자 이상, 16자 이하로 적어주십시오");
		}
		else{
		
		}
	}
	
	
	
}

var flag=0;
function e_pass(){
	/*
	var reg = /\W/gi;
	var str = $("#pass").val();
	
	if(reg.test(str)){
		$("#pass").val("");
		$(".pass_valid").text("특수문자는 허용되지 않습니다.");
	}
	else{
		$(".pass_valid").text("");
		
		
	}*/
	
	
	if($("#pass").val().length>16){
		$("#pass").val("");
		$(".pass_valid").text("8자 이상, 16자 이하로 적어주십시오");
		flag=1;
	}
	else{
		if(flag==1){
			$(".pass_valid").text("");
			flag=0;
		}
	}
}


function e_pass1(){
	/*var reg = /\W/gi;
	var str = $("#pass_cert").val();
	
	if(reg.test(str)){
		$("#pass_cert").val("");
		$(".pass_valid1").text("특수문자는 허용되지 않습니다.");
	}
	else{
		$(".pass_valid1").text("");
		
		
	}*/
	if($("#pass_cert").val().length>16){
		$("#pass_cert").val("");
		$(".pass_valid1").text("8자 이상, 16자 이하로 적어주십시오");
	}
	else{
		
	}
	
}


$(".login_move").on("click",function(){
	 
	var i =0;
	$("#entry").css("display","none");
	$("#login_form").css("z-index","8"); 
	$("#login_form").css("display","block");
	$("#login_form").css("top","100px");
	$("#entry input").val("");
	$(".id_valid, .pass_valid, .pass_valid1, .call_valid, .email_valid").text("");
	 $("body, html").animate({
			scrollTop: "0"
		}, 10);
	
	$("#login_form").animate({top:"0px"},500,function(){
		 var i = 0;
		 while(i<101){
			 $("#login_form").css("opacity",i*0.01);
			 i=i+1;
		 }
	});

	
	setTimeout(function(){
		$("#main_page").css("display","none");
	},50);
	
	
});

$("#login_click").on("click", function(){
	var i =0;
	$(".arrow_div").css("display","block");
	$("#entry").css("display","none");
	$("#login_form").css("z-index","8"); 
	$("#login_form").css("display","block");
	$("#login_form").css("top","100px");
	 $("body, html").animate({
			scrollTop: "0"
		}, 10);
	
	$("#login_form").animate({top:"16%"},500,function(){
		 var i = 0;
		 while(i<101){
			 $("#login_form").css("opacity",i*0.01);
			 i=i+1;
		 }
	});

	
	setTimeout(function(){
		$("#main_page").css("display","none");
	},50);
	
});


$("#entry_click").on("click", function(){
	
	var i =0;
	$(".arrow_div").css("display","block");
	/*$("#entry").css("opacity","1");*/
	$("#login_form").css("display","none");
	$("#entry").css("display","block");
	$("#entry").css("z-index","8"); 
	$("#entry").css("top","150px");

	 $("body, html").animate({
			scrollTop: "0"
		}, 10);
	
		$("#entry").animate({top:"6%"},500,function(){
			 var i = 0;
			 while(i<101){
				 $("#entry").css("opacity",i*0.01);
				 i=i+1;
			 }
		});
	
			
		
		

	
	setTimeout(function(){
		$("#main_page").css("display","none");
		
	},50);
	
});









	

// 회원가입버튼 누를때
$("#entry_en").on('click',function(){
	$("#entry").css("display","block");
	$("#login_form").css("display","none");
	$("#entry").css("z-index","0"); 
	$("#entry").css("top","150px");
	$("#entry").css("opacity","0");
 
	 $("body, html").animate({
			scrollTop: "0"
		}, 10);
	
	$("#entry").animate({top:"30"},500,function(){
		 var i = 0;
		 while(i<101){
			 $("#entry").css("opacity",i*0.01);
			 i=i+1;
		 }
	});
	
});
    
    
    
    var entry_flag = 0;
    
    $(".entry_login").on("click",function(){
    	
    if(entry_flag==0 && $(".info_agree_box").is(":checked") && $(".info_agree_box1").is(":checked")){
    	entry_flag=1;
    	var ret=0;
    	var reg= /[A-za-z0-9]/gi;
    	var reg_num = /\d/gi;
    	var reg_en = /[A-Za-z]+/gi;
    	var reg_w = /\W/gi;
    	var reg_num1 = /\d/gi;
    	var reg_en1 = /[A-Za-z]+/gi;
    	var reg_w1 = /\W/gi;
    	var reg_email = /[0-9a-z]*@+[0-9a-z]*\.(com|kr)/;
    	var temp_en;
    	var temp_num;
    	var name = $.trim($("#name").val());
    	var id = $.trim($("#id").val().toLowerCase());
    	var pass = $.trim($("#pass").val().toLowerCase());
    	var pass_cert = $.trim($("#pass_cert").val().toLowerCase());
    	var call = $.trim($("#call").val());
        var email = $.trim($("#email").val().toLowerCase());
        
        $(".entry_login").text("잠시만 기다려주세요...");
  
    	
    	$("#entry div input").each(function(){
    		if($(this).val() ==""){
    			$(this).css("border", "1px solid red");
    			ret = 1;
    			entry_flag=0;
    			$(".entry_login").text("가입하기");
    			return 0;
    		}
    			
    	});
    	
    	if(name.length!=3){
    		alert("이름을 실명 3글자로 작성하여 주십시오.");
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	
    	if($("#pass").val() != $("#pass_cert").val()){
    		alert("비밀번호가 일치하지 않습니다.");
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	if(id.length<6){
    		alert("아이디는 영문 숫자 조합 8자 이상 적어주십시오");
    		$("#id").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	//로그인 정규식 구별 영역ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
    	
    	if(reg_en.test(id)){
    		temp_en = id.replace(/[a-z]/g,""); 
    		
    		
    	}
    	else{
    		alert("아이디는 영문 혹은 영문,숫자를 조합한 6자 이상을 적어주십시오.");
    		$("#id").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	/*if(reg_num.test(id)){
    		temp_num = id.replace(/\d/g,""); 
    	}
    	else{
    		alert("아이디는 영문과 숫자를 조합한 8자 이상을 적어주십시오.");
    		$("#id").focus();
    		return;
    	}*/
    	

    	
    	if(!reg_w.test(id)){
    		temp_num = id.replace(/\d/g,""); 
    		
    		
    	}
    	else{
    		alert("아이디에 특수문자는 허용되지 않습니다.");
    		$("#id").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	
    	//로그인 정규식 구별 영역ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
    	
    	
    	if(pass.length<8){
    		alert("비밀번호는 영문 숫자 조합으로 8자 이상 적어주십시오.");
    		$("#pass").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	//패스워드 정규식 구별 영역ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
    	if(reg_en1.test(pass)){
    		temp_en = pass.replace(/\w/gi,""); 
    		
    	}
    	else{
    		alert("비밀번호는 영문과 숫자를 조합한 8자 이상을 적어주십시오.");
    		$("#pass").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	if(reg_num1.test(pass)){
    		temp_num = pass.replace(/\d/gi,""); 
    		
    	}
    	else{
    		alert("비밀번호는 영문과 숫자를 조합한 8자 이상을 적어주십시오.");
    		$("#pass").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	/*if(reg_w1.test(pass)){
    		temp_num = pass.replace(/\d/gi,""); 
    	}
    	else{
    		alert("비밀번호에 특수문자를 조합해주십시오.");
    		$("#pass").focus();
    		return;
    	}*/
    	
    	
    	
    	
    	//패스워드 정규식 구별 영역ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
    	
    	//이메일 형식 구별
    	    if(!reg_email.test(email)){
    	    	alert("알맞은 이메일 형식이 아닙니다.");
    	    	entry_flag=0;
    	    	$(".entry_login").text("가입하기");
    	    	return;
    	    }
    	
    	//이메일 형식 구별
    	
    	if(pass_cert.length<8){
    		alert("비밀번호는 영문 숫자 조합으로 8자 이상 적어주십시오.");
    		$("#pass_cert").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	if(call.length<8){
    		alert("전화번호는 '-' 문자를 제외한 11자리 숫자를 적어주십시오.'");
    		$("#call").focus();
    		entry_flag=0;
    		$(".entry_login").text("가입하기");
    		return;
    	}
    	
    	
    	
    	if(ret==1){
    		return;
    	}
    	
    	   $.ajax({
    		   url : "/entry",
    		   type:"post",
    		   data : {name:name, id:id, pass:pass,pass_cert:pass_cert, call : call, state:"selvi.entry", email:email},
    		   
    		   success : function(data){
    			   entry_flag=0;
    			   $(".entry_login").text("가입하기");
    			   if($.trim(data.id_exist) == "id_exist"){
    				   alert("아이디가 이미 존재합니다.");
    			   }
    			   else if($.trim(data.email_exist) == "email_exist"){
    				   alert("동일한 이메일이 이미 존재합니다.");
    			   }
    			   else if($.trim(data.state) == "fail"){
    				   alert("메일 발송에 실패하였습니다.");
    			   }
    			   else{
    				 alert("인증 메일이 발송되었습니다. 메일을 확인 해 주세요.");
    				 $("#alert").text("회원가입이 완료 되었습니다..");
      	    		 $("#alert").show(1000);
      	    		 
      	    		 setTimeout(function(){
      	    			 
      	    			 $("#alert").hide(1000);
      	    			 
      	    		 },2500);
      	    		
    				   
    					
    				
    					
    					
    						$("#entry").css("opacity",0);
    						
    				
    					
    				
    					$("#entry").css("display","none");
    					$("#login_form").css("z-index","8"); 
    					$("#login_form").css("display","block");
    					$("#login_form").css("top","100px");
    					
    					$("#login_form").animate({top:"16%"},500,function(){
    						
    							 $("#login_form").css("opacity",1);
    						
    					});
    					
    					
    					$("#entry").attr("class","hidden");
    					$("#entry").css("z-index","0");
    					
    					setTimeout(function(){
    						$("#entry").css("display","none");
    					},1500);
    					
    					
    			   }
    			 
    		   },
    		   
    		   error : function(){
    			   alert("알수없는 오류로 실패");
    			   entry_flag=0;
    			   $(".entry_login").text("가입하기");
    		   }
    		    
    		   
    	   });
    	  
    	 // 플래그 검사    
         }
         else{
        	 alert("개인정보 제공동의를 모두 선택해 주십시오.");
         }
    });
    
    // 로그인 할때에
    $("#login").on('click', function(){
    	
    	var id = $.trim($("#login_id").val());
    	var pass = $.trim($("#login_pass").val());
    	
    	if(id=="" || pass==""){
    		
    		 $("#alert").text("아이디나 비밀번호를 입력 해 주십시오.");
    		 $("#alert").show(2000);
    		 $("#alert").hide(1000);
    		 return;
    	}
    	
    	    $.ajax({
    	    	url : "/login",
    	    	type :"post",
    	    	data : {id:id, pass:pass, state:"selvi.login"},
    	    	dataType:"json",
    	    	
    	    	success : function(data){
    	    		
    	    		
    	    		if($.trim(data.state) == "success"){
    	    			
    	    			  
    	    		
    	    				$("#login_form").css("opacity",0);
    	    			
    	    			
    	    			
    	    		  location.href="/m_main";
    	    			
    	    		
    	    			
    	    		}
    	    		else if($.trim(data.state) == "fail"){
    	    			alert("메일 인증이 완료 되지 않았습니다.");
    	    		}
    	    		else if($.trim(data.state) == "deleted"){
    	    			alert("아직 가입을 하지 않으셨거나 탈퇴된 상태입니다.");
    	    		}
    	    		else{
    	    			 $("#alert").text("아이디나 비밀번호가 잘못되었습니다.");
        	    		 $("#alert").show(1000);
        	    		 
        	    		 setTimeout(function(){
        	    			 
        	    			 $("#alert").hide(1000);
        	    			 
        	    		 },2500);
        	    		
    	    		}
    	    	},
    	    	error : function(){
    	    		 
    	    		 $("#alert").text("아이디나 비밀번호가 잘못되었습니다.");
    	    		 $("#alert").show(1000);
    	    		 
    	    		 setTimeout(function(){
    	    			 
    	    			 $("#alert").hide(1000);
    	    			 
    	    		 },2500);
    	    		
    	    		 
    	    		 
    	    	}
    	    	
    	    });
    });
    
    

      
    // 정보제공동의, 개인처리정보방침 보기 ----------------------------------------------------------------------
	
    
    $(document).on("click",".info_agree_see, .user_agree_see", function(){
    	if($(this).attr("class")=="info_agree_see"){
    		$("#info_display").css("display","block");
    	}
    	else if($(this).attr("class")=="user_agree_see"){
    		$("#user_display").css("display","block");
    	}
    });
    
    
    
    
    // 개인정보 선택약관에 대하여. ---------------------------------------------------------------------------
    
    $(document).on("click",".cross_img_info, .cross_img_user", function(){
    	
    	if($(this).attr("class")=="cross_img_info"){
    	
    	    if($("#info_display").css("display")=="block"){    
    	        $("#info_display").css("display","none"); 
    	    }
    	    else if($("#info_display").css("display")=="none"){
    		    $("#info_display").css("display","block");
      	    }
    	}
    	else if($(this).attr("class")=="cross_img_user"){
    	
    	    if($("#user_display").css("display")=="block"){    
    	        $("#user_display").css("display","none"); 
    	    }
    	    else if($("#user_display").css("display")=="none"){
    		    $("#user_display").css("display","block");
    	    }
    	}
    	
    });
    
    



	
</script>
</body>

</html>