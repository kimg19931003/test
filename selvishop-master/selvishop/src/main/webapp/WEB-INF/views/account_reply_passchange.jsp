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
     
     
     
       .img_grid{text-align: center;margin-top: 8%;}
       .img_grid img{width:15%;padding-left: 2%;}
       .grid h4{font-weight: 100;}
       
       ::-webkit-scrollbar {
    width: 0px;  /* remove scrollbar space */
    background: transparent;  /* optional: just make scrollbar invisible */
}


h4{font-weight:100;}

#id_reply_trans, #login_back{cursor:pointer; transition:all linear 0.6s;font-weight:bold; font-style:arial; padding:5px; width:60%;background:#e40069; border-radius:7px;text-align:center; color:white;  height:24px;line-height: 23px;margin:23% auto 0px auto;}
#pass_reply_passchange{cursor:pointer; transition:all linear 0.6s;font-weight:bold; font-style:arial; padding:5px; width:60%;background:#e40069; border-radius:7px;text-align:center; color:white;  height:24px;line-height: 23px;margin:23% auto 0px auto;}
  
  
  
</style>
</head>

<body>


 <%if(session.getAttribute("pass_change_state") =="y") {%>
   
   

<div style="width:100%; height:100%;text-align: center;">

 
  <div id="tab_form" style="margin-top:25%;">      
        <span id="pass_tab" style="font-size: 4vw;padding-right: 0%;color: black;">비밀번호 변경</span>
  </div>

<div id="reply_form" style="/* border:2px solid #e0e0e0; */">
 
 

  <div id="pass_reply" style="  margin-top:10%; ">
   <input type="text" id="temp_pass" placeholder="현재 비밀번호" style="height: 60px;text-align: center;">
   <input type="password" id="pass" placeholder="변경 할 비밀번호" style="height: 60px;text-align: center;">
   <input type="password" id="pass_cert" placeholder="비밀번호 확인" style="height: 60px;/* font-size: 3vw; */text-align: center;">

<div style=" font-size: 3vw; margin-top: 3%;">비밀번호 변경을 위하여 비밀번호를 입력하여 주십시오.</div>

<div id="pass_reply_passchange" style="margin-top: 10%;    font-size: 3vw;">변경 완료</div>
<a href="m_login" class="login_back"><div  style="margin-top: 10%;    font-size: 3vw;text-decoration:none;">로그인 하러 가기</div></a>
  </div>
  
 </div> 
  
   <h5 class="hello" style="position:static;"></h5>
    <div id="right_waku"><div class="selvi_right">Copyright 2018. SELVI. All rights reserved</div></div>
  
    
    
</div>
  
  <%}
 
 
 else{
 %>
 <script>
 
    alert("잘못된 접근입니다.");
    location.href="m_login";
 
 </script>    
 <%
 } 
 %>
  
   
<script type="text/javascript">




 $("#id_tab").click(function(){
	 $(this).css("color","black");
	 $("#pass_tab").css("color","#d0d0d0");
	 $("#id_reply").css("display","block");
	 $("#pass_reply").css("display","none");
 });
	
 $("#pass_tab").click(function(){
	 $(this).css("color","black");
	 $("#id_tab").css("color","#d0d0d0");
	 $("#pass_reply").css("display","block");
	 $("#id_reply").css("display","none");
 });

 
 $("#id_reply_trans").click(function(){
	
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
			 }
		 }
		 
	 });
 });
 
 
 
 $("#pass_reply_passchange").click(function(){
	 var temp_pass = $.trim($("#temp_pass").val().toLowerCase());
	 var pass = $.trim($("#pass").val().toLowerCase());
	 var pass_cert = $.trim($("#pass_cert").val().toLowerCase());
	 
	 if(pass!=pass_cert){
		 alert("비밀번호가 일치하지 않습니다.");
		 return;
	 }
	 else{
		 
	 }
	 
	 
	 $.ajax({
		 type:"post",
		 url : "/account_reply_passchange",
		 data : {pass: pass, pass_cert: pass_cert,temp_pass:temp_pass},
		 
		 success : function(date){
			 if($.trim(date)=="success"){
				 alert("비밀번호 변경이 완료되었습니다.");
				 location.href="m_login";
			 }
			 else if ($.trim(date)=="fail"){
				 alert("알수없는 오류로 인하여 비밀번호 변경이 실패하였습니다.");
			 }
		 }
		 
	 });
 });


	
</script>


</body>

</html>