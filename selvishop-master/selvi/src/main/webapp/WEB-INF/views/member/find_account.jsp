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
<title>계정찾기</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/member/find_account.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
	
	    <div id="find_account">
	    
	    
	         <div class="find_account_title">아이디/비밀번호 찾기</div>
	    
	         <div class="tab">
	             <div class="tab_id" data-state="choose">아이디 찾기</div>
	             <div class="tab_pass">비밀번호 찾기</div>
	         </div>
	         
	         
	         <div class="email_phone_div">
	             <div>
	                 <label for="email_checkbox">이메일로 찾기</label>
	                 <input type='checkbox' id="email_checkbox" checked="checked"  data-state="choose" />
	                 <label class="customer_radio" for="email_checkbox"></label>
	             </div>
	             
	             <div>
	                 <label for="phone_checkbox">휴대폰번호로 찾기</label>
	                 <input type='checkbox' id="phone_checkbox"/>
	                 <label class="customer_radio" for="phone_checkbox"></label>
	             </div>
	         </div>
	         
	         
	         
	         <div class="find_account_id">
	             <div class="input_title">아이디</div>
	             <div><input type='text' id="id"/></div>
	         </div>
	         
	         
	         <div class="find_account_name">
	             <div class="input_title">이름</div>
	             <div><input type='text' id="name"/></div>
	         </div>
	         
	         <div class="find_account_email">
	             <div class="input_title">이메일</div>
	             <div><input type='text' id="email"/></div>	         
	         
	         </div>
	         
	         
	         <div class="find_account_phone">
	             <div class="input_title">휴대폰번호로 찾기</div>
	             <div>
	                <select class="select_call" >
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
               		 </select>
	                 <span>-</span>
	                 <input type='text' id="phone2"/>
	                 <span>-</span>
	                 <input type='text' id="phone3"/>
	             </div>	         
	         
	         </div>
	         
	         
	         <div class="find_account_button">확인</div>
	    
	    </div>
		
		
	</div>


	

	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/member/find_account.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>