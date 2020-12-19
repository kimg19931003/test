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
<link href="/resources/css/member/find_account_complete.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
	
	   
		<div id="join_complete">
		    <div class="join_complete_title">고객님의 아이디 찾기가 완료되었습니다.</div>
		      
		    <div class="join_complete_comment">
		    
		         <div>고객님의 아이디는<br>${mem_id}입니다</div>
		        
		       <div>항상 고객님의 즐겁고 편리한 쇼핑을 위해 최선을 다하는 </div>
		       <div>셀비샵이 되도록 하겠습니다.</div>
		    </div>
		    
		    <a class="move_login" href="/member/login"><div class="join_complete_move_login">로그인</div></a>
		    <a class="move_find_pass" href="/member/find_account_complete_pass"><div class="join_complete_move_find_pass">비밀번호 찾기</div></a>
		</div>
		
		  
	</div>


	

	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/member/find_account_complete.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>