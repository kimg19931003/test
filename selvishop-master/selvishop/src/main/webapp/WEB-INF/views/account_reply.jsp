<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="/resources/js/jquery.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-83606019-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-83606019-3');
  gtag('config', 'AW-847653643');
</script>

<title>아이디/비밀번호 찾기</title>
<style>
    
@font-face {

    font-family: ng; // 사용할 폰트명

    src: url('directory/NanumGothic.eot'); 

    src: local(※), url('/resources/font/medium.woff') format('woff'); 
      src: local(※), url('/resources/font/light.ttf') format('truetype')
    }
      html, body {height:100%;margin: 0px;font-size:5vw;text-decoration:none;font-family: ng !important;}
     #main_page{text-align:center;top: 9%; position: relative;}
     #header{transition:all linear 1s;z-index:3;position:relative; top:0px; left:200px;width:1300px; height:100px; background:#e0e0e0;z-index:2; box-shadow:2px 2px 2px 2px;text-align:center;color:white;}
     #header:hover{background:#d0d0d0;}
     #main{background:white;position:relative; left:200px; top:0px; width:1300px; height:850px; z-index:1;}
     #login{cursor:pointer; transition:all linear 0.6s;font-weight:bold; font-style:arial; padding:5px; width:60%;background:#e40069; border-radius:7px;text-align:center; color:white;  height:24px;line-height: 23px;margin:23% auto 0px auto;}
     #login:hover{background:#33cccc;}
     
     .entry_login, .code_entry ,.code_out,.code_view{margin:0px auto 0px auto;font-size: medium;cursor:pointer; transition:all linear 0.6s;font-weight:bold; font-style:arial; padding:5px; width:85%;background:#e40069; border-radius:7px; text-align:center; color:white;  height:40px;}
     .entry_login:hover{background:#33cccc;}
     
     #login_form{height:65%;opacity:0; display:none;   text-align: center;z-index:0;background:white;transition:all linear 1.5s;z-index:8; width:100%; height:30%;position:relative;  }
     #login_form input{font-size: medium;text-align:center; width:70%;}
     #entry{display:none;text-align:center;opacity:0;transition:all ease-in-out 1.5s;z-index:7;background:#ffffff; width:100%;position:relative; }
     #entry input{ font-size: medium; width:70%;text-align:center;}
     input[type='text'],input[type='password']{font-weight: bold;border-radius:8px;-webkit-box-sizing: border-box; margin:16px 0px 0px 0px;transition: all linear 1s; border:1px solid #fff5f8; height:63px;padding-left:5px;width:81%;background:#fff5f8;}
     input[type='text']:focus,input[type='password']:focus{border:3px solid d0d0d0;}
     .id_valid{  color:red;margin-left:15px;  font-size: 12px;font-weight: 800;}
     .pass_valid{  color:red;margin-left:15px;  font-size: 12px;font-weight: 800;}
     #alert{width:100%;margin:0px auto 0px auto;color:#e40069;position:fixed; top:0px; display:none;font-size:initial;text-align:center;font-weight: 700;top:5%;}
     #bin{transition:all linear 1s; }
     #bin:hover{border:2px solid #33ffff; }
     input:focus::-webkit-input-placeholder, textarea:focus::-webkit-input-placeholder { /* WebKit browsers */ color:transparent;  }
     
    #right_waku{width:100%;font-size:small; text-align:center;position: relative;  top: 30%;font-weight:100;  padding-bottom:2%;  }
  
     @media(max-height:400px){
          #right_waku{width:100%;font-size:small; text-align:center;position: relative;  top: 100%; }
     }
     
     @media(max-width:600px){
     
          .explain{font-size:18px;margin-top:10%;}
          
          #tab_form{margin-top:25%;}
     
          #id_tab{font-size: 4vw; padding-right: 7%; color: black;}
          #pass_tab{font-size: 4vw; padding-right: 7%; color: rgb(208, 208, 208);}
          #email_tab{font-size: 4vw; padding-right: 0%; color: rgb(208, 208, 208);}
          #id_reply{font-size: 3vw; margin-top: 0%; display: block;}
          #id_email{height: 60px;text-align: center;margin-top: 14%;}
          #reply_trans{
              margin-top: 10%;    
              font-size: 4vw;
              cursor:pointer; 
              transition:all linear 0.6s;
              font-style:arial; 
              padding:2%; 
              width:50%;
              background:#e40069; 
              border-radius:4px;
              text-align:center; 
              color:white; 
              height:24px;
              line-height: 23px;
              margin:9% auto 0px auto;
          }
          
          
          
          #pass_id{height: 60px;text-align: center;}
          #pass_email{height: 60px;/* font-size: 3vw; */text-align: center;}
          #pass_reply{display: block; margin-top: 10%;}
      
          
          
          #email_id{height: 60px;text-align: center;}
          #email{height: 60px;/* font-size: 3vw; */text-align: center;}
          #email_reply{display: none; margin-top: 10%;}
        
          
          .login_back{margin-top: 10%;    font-size: 4vw;}
     }
     
     @media(min-width:600px){
     
          .explain{font-size:23px;margin-top: 50px;}
          
          #tab_form{margin-top:150px;}
     
          #id_tab{font-size: 25px; padding-right: 25px; color: black;}
          #pass_tab{font-size: 25px; padding-right: 25px; color: rgb(208, 208, 208);}
          #email_tab{font-size: 25px; padding-right: 0%; color: rgb(208, 208, 208);}
          #id_reply{font-size: 3vw; margin-top: 0%; display: block;}
          #id_email{height: 60px;text-align: center;margin-top: 50px; width:461px;}
          #reply_trans{
               
              font-size: 20px;
              cursor:pointer; 
              transition:all linear 0.6s;
              font-style:arial; 
              padding:10px; 
              width:255px;
              background:#e40069; 
              border-radius:4px;
              text-align:center; 
              color:white; 
              height:24px;
              line-height: 23px;
              margin:50px auto 0px auto;
          }
          
          
          
          #pass_id{height: 60px;text-align: center;width:461px;}
          #pass_email{height: 60px;text-align: center;width:461px;display: block; margin:10px auto 0 auto;}
          #pass_reply{display: block; margin-top: 50px}
         
          
          
          #email_id{height: 60px;text-align: center;width:461px;}
          #email{height: 60px;text-align: center;width:461px;display: block; margin:10px auto 0 auto;}
          #email_reply{display: none; margin-top: 50px;}
        
          
          .login_back{margin-top: 50px;    font-size: 25px;}
     }
     
     
     
       .img_grid{text-align: center;margin-top: 8%;}
       .img_grid img{width:15%;padding-left: 2%;}
       .grid h4{font-weight: 100;}
       
       ::-webkit-scrollbar {
    width: 0px;  /* remove scrollbar space */
    background: transparent;  /* optional: just make scrollbar invisible */
}


h4{font-weight:100;}

#id_reply_trans, #login_back{}
#pass_reply_trans, #email_reply_trans{}
  
  
  a{-webkit-tap-highlight-color: transparent;}
   
</style>
</head>

<body>


 
   
   

<div style="width:100%; height:100%;text-align: center;">

 
  <div id="tab_form" style="">
        <span id="id_tab" >아이디 찾기</span>
        <span id="pass_tab" >비밀번호 찾기</span>
        <span id="email_tab" >메일 재발송</span>
  </div>
 
<div id="reply_form" style="/* border:2px solid #e0e0e0; */">
  
  
  
  
  
  
  <div id="id_reply" >
   <input type="text" id="id_email" placeholder="이메일" >

   <div class="explain">찾으실 ID 의 이메일을 입력 해 주십시오.</div>

<div id="reply_trans" >아이디 찾기</div>
<a href="m_login" ><div class="login_back" >로그인 하러 가기</div></a>
</div>






  <div id="pass_reply" style=" display:none; ">
     <input type="text" id="pass_id" placeholder="아이디" style="">
     <input type="text" id="pass_email" placeholder="이메일" >

     <div class="explain" > 아이디와 이메일을 입력 해 주십시오.</div>

     <div id="reply_trans" >비밀번호 찾기</div>
     <a href="m_login" ><div class="login_back"  >로그인 하러 가기</div></a>
  </div>
  
  
  
  
  
  <div id="email_reply" style=" display:none; ">
     <input type="text" id="email_id" placeholder="아이디" >
     <input type="text" id="email" placeholder="이메일" >

     <div class="explain" >메일 재발송을 위한 정보를 입력해 주세요</div>

     <div id="reply_trans" >메일 재발송</div>
      <a href="m_login" ><div class="login_back" >로그인 하러 가기</div></a>
  </div>
  
 </div> 
  
   <h5 class="hello" style="position:static;"></h5>
    <div id="right_waku"><div class="selvi_right">Copyright 2018. SELVI. All rights reserved</div></div>
  
    
    
</div>
  
  
   
   
  
   
<script type="text/javascript">



 var first_font_size = $("#id_tab").css("font-size");

 $("#id_tab").click(function(){
	 $(this).css("color","black").css("font-size", $(this).css("font-size").replace("px","")*1.5 );
	
	 $("#pass_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 $("#email_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 
	 $("#id_reply").css("display","block");
	 
	 $("#pass_reply").css("display","none");
	 $("#email_reply").css("display","none");
 });
	
 $("#pass_tab").click(function(){
	 $(this).css("color","black").css("font-size", $(this).css("font-size").replace("px","")*1.5 );
	 
	 $("#id_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 $("#email_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 
	 $("#pass_reply").css("display","block");
	 
	 $("#id_reply").css("display","none");
	 $("#email_reply").css("display","none");
 });
 
 $("#email_tab").click(function(){
	 $(this).css("color","black").css("font-size", $(this).css("font-size").replace("px","")*1.5 );
	 
	 $("#id_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 $("#pass_tab").css("color","#d0d0d0").css("font-size",first_font_size);
	 
	 $("#email_reply").css("display","block");
	 
	 $("#id_reply").css("display","none");
	 $("#pass_reply").css("display","none");
 });

 
 
 
 var id_reply_trans_flag=0;
 $("#id_reply_trans").click(function(){
	
   if(id_reply_trans_flag==0){
	   id_reply_trans_flag=1;
	 var id_email = $.trim($("#id_email").val().toLowerCase());
	 
	 $.ajax({
		 type:"post",
		 url : "/id_reply",
		 data : {id_email: id_email},
		 
		 success : function(date){
			 if($.trim(date)=="success"){
				 alert("메일이 발송 되었습니다.");
			 }
			 else if ($.trim(date)=="fail"){
				 alert("일치하는 이메일 정보가 없습니다.");
				 id_reply_trans_flag=0;
			 }
		 }
		 
	 });
	 
    }
 });
 
 
 var pass_reply_trans_flag=0;
 $("#pass_reply_trans").click(function(){
	 
   if(pass_reply_trans_flag==0){	
	   pass_reply_trans_flag=1;
	 var id = $.trim($("#pass_id").val().toLowerCase());
	 var email = $.trim($("#pass_email").val().toLowerCase());
	 
	 $.ajax({
		 type:"post",
		 url : "/pass_reply",
		 data : {id: id, email: email},
		 
		 success : function(date){
			 if($.trim(date)=="success"){
				 alert("메일이 발송 되었습니다.");
			 }
			 else if ($.trim(date)=="fail"){
				 alert("일치하는 아이디나 이메일 정보가 없습니다.");
				 pass_reply_trans_flag=0;
			 }
		 }
		 
	 });
   }
 });
 
 
 var email_reply_trans_flag=0;
 $("#email_reply_trans").click(function(){
	 
   if(email_reply_trans_flag==0){	
	   email_reply_trans_flag=1;
	 var id = $.trim($("#email_id").val().toLowerCase());
	 var email = $.trim($("#email").val().toLowerCase());
	 
	 $.ajax({
		 type:"post",
		 url : "/email_reply",
		 data : {id: id, email: email},
		 
		 success : function(data){
			 if($.trim(data.state)=="success"){
				 alert("메일이 재발송 되었습니다.");
			 }
			 else if ($.trim(data.state)=="fail"){
				 alert("이미 인증이 완료된 계정이거나 회원가입이 완료되지 않은 상태입니다.");
				 email_reply_trans_flag=0;
			 }
			 else if ($.trim(data.state)=="mail_overlap"){
				 alert("이미 재발송된 메일입니다.");
				
			 }
		 }
		 
	 });
   }
 });


	
</script>


</body>

</html>