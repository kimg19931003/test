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
<title>고객센터</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/cs/counselor/counselor_home.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">


		<div class="cs_menu_div">

			<div class="notice_faq_div">
			
			  <a href="/cs/counselor_notice">
				<div class="notice_div">
					<img src="/resources/img/shoppingmall/cs/counselor/notice.png"
						class="notice_img" /> 
					<div class="cs_text">공지사항</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img" /> 
				</div>
              </a>
              
              
              <a href="/cs/counselor_faq">
				<div class="faq_div">
					<img src="/resources/img/shoppingmall/cs/counselor/faq.png"
						class="faq_img" /> 
					<div class="cs_text">문의/안내</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img" /> 
				</div>
			  </a>	
			
			</div>
  

			<div class="prdtreview_event_div">
			
			<a href="/cs/counselor_prdt_review">
				<div class="prdtreview_div">
					<img src="/resources/img/shoppingmall/cs/counselor/review.png"
						class="review_img" /> 
					<div class="cs_text">상품리뷰</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img" /> 
				</div>
             </a>
 
             <a href="/cs/counselor_event">
				<div class="event_div">
					<img src="/resources/img/shoppingmall/cs/counselor/event.png"
						class="event_img" /> 
					<div class="cs_text">이벤트</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img" /> 
				</div>
			 </a>
			 
			</div>

		</div>
		
		
		
		<div class="company_info_div">
		
		
		    <div class="worktime_bankinfo_div">
		    
				<div class="worktime_div">
					<div>070-4655-1365</div>
					<div>상담가능 : 10:00 ~ 18:00</div>
					<div>점심시간 : 12:30 ~ 13:30</div>
					<div>토 / 일 / 공휴일 휴무</div>
				</div>

				<div class="bankinfo_div">
				    <div>BANK INFO</div>
				    <div>기업은행</div>
				    <div>465-012590-04-011</div>
				    <div>예금주 : (주)슈퍼셀</div>
				
				</div>
			</div>


			<div class="addr_individual_div">
				<div class="addr_div">
				    <div>RETURN ADDRESS</div>
				    
				    <div>부산시 사상구 장인로 77번길 69</div>
				    <div>CJ대한통운 리턴박스</div>
				    <div>지정택배사 : CJ대한통운</div>
				
				</div>

				<div class="individual_div">
					<div>1:1 상담</div>
					<div>카카오톡 플러스친구 @ 셀비</div>
					<div>네이버톡톡 상담 @????</div>
					<div></div>
				</div>
			</div>
		    
		</div>
		
		
		
		<div class="kakao_navertok_div">
		    <div class="kakao_div">
		        카카오톡 상담 바로가기
		    </div>
		    
		    
		    <div class="navertok_div">
		        네이버톡톡 바로가기
		    </div>
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
	<script src="/resources/js/cs/counselor/counselor_home.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>