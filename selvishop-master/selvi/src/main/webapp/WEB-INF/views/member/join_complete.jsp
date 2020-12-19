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
<link href="/resources/css/member/join_complete.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
	
	
		<div id="join_complete">
		    <div class="join_complete_title">회원가입이 완료되었습니다.</div>
		    
		    <div class="join_complete_comment">
		        셀비샵을 이용해주셔서 감사합니다.<br>
		       
		        
		             <%if(session.getAttribute("mem_name") != null){ %>
		             
		                        <%=session.getAttribute("mem_name")  %>
		                                  
		                    <% } 
		                       else{
		                    
		                    %>
		                    
		                                         전영은
		                    
		                    <%} %>
		                                  
		                                  님은 [ 일반 ] 회원입니다.
		        
		    
		    </div>
		    
		    <a class="move_home" href="/"><div class="join_complete_move_home">셀비샵 홈으로 이동</div></a>
		    <a class="move_mypage" href="/mypage"><div class="join_complete_move_mypage">마이페이지 바로가기</div></a>
		</div>
		
		
	</div>


	

	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/member/join_complete.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>