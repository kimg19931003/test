<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link rel="shortcut icon" href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<title>회원가입</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/member/find_account_complete_pass.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
	
	   
		<div id="join_complete">
		    <div class="join_complete_title">임시 비밀번호 전송</div>
		      
		    <div class="join_complete_comment">
		    
		    
		        <div class="main_phone_checkbox">
		            <div class='email_div'>
		                <label class="label_title">이메일로 받기</label>
		                <input type='checkbox' id="email" checked="checked"/>
		                <label for="email" class="customer_radio"></label>
		            </div>
		            
		            <div class='phone_div'>
		                <label class="label_title">휴대폰 번호로 받기</label>
		                <input type='checkbox' id="phone" />
		                <label for="phone" class="customer_radio"></label>
		            </div>
		        </div>
		        
		        
		        <div class="email_display_div">
		              <%=session.getAttribute("find_mem_email")%>
		        </div>
		       
		    </div>
		      
		    <a class="move_send_pass" ><div class="join_complete_send_pass">임시비밀번호 전송</div></a>
		    <a class="move_cancel" onclick="javascript::history.back();"><div class="join_complete_cancel">취소</div></a>
		</div>
		
		  
	</div>


	

	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>


    <script>
    
        //임시아이디, 메일 등 세션 저장한것 꺼내옴
        var mem_id = '<%=session.getAttribute("find_mem_id")%>';
        var mem_email = '<%=session.getAttribute("find_mem_email")%>';
    </script>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/member/find_account_complete_pass.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>