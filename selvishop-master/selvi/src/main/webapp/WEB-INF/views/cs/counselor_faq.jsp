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
<link href="/resources/css/cs/counselor_faq.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">


		<div class="cs_menu_div">
      
         <a href="/cs/counselor_notice">
			<div class="notice_faq_div">
				<div class="notice_div">
					<img src="/resources/img/shoppingmall/cs/counselor/notice.png"
						class="notice_img" /> 
					<div class="cs_text">공지사항</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img" /> 
				</div>

         </a>

         <a>
				<div class="faq_div">
					<img src="/resources/img/shoppingmall/cs/counselor/faq.png"
						class="faq_img background_f4f4f4" /> 
					<div class="cs_text background_f4f4f4 bold">문의/안내</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img background_f4f4f4" /> 
				</div>
			</div>
         </a>  

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
		
		
		<div class="table_title">문의/안내</div>
		
		
		
		
		<div class="notice_faq_reg_button_div">
		
		    <table id="notice_table">
		      
		     
		        <thead>
		            <th></th>
		            <th></th>
		            <th></th>
		        </thead>
		     
		    
		        <tbody>
		        
		        
		        <c:set var="length" value="${fn:length(list) }" />
		        
		        <c:choose>
		            <c:when test="${fn:length(list)>0 }">
		                <c:forEach var="row" items="${list}" varStatus="g">
		                
		           			<tr>   
		                         <td>
		                             ${length - g.index }
		                         </td>
		                         
		                         <td>
		                             <div class="notice_date">${fn:substring(row.board_reg_date,2,16)}</div>
		                             <div class="notice_writer">셀비샵</div>
		                             <div class="notice_title">${row.board_title }</div>
		                         </td>
		                         
		                         <td data-boardidxpk = "${row.board_idx_pk }">
		                             <img src="/resources/img/shoppingmall/cs/counselor_notice/1.png" class="notice_move"/>
		                         </td>
		                         
		           			</tr>
		           	
		           		</c:forEach>
		             </c:when>
		         </c:choose>
		           
		           
		        </tbody>
		    </table>
		    
		    
		    
		    
		    <!-- 이용안내 글쓰기버튼 -->
		    <div class="faq_reg_button">글쓰기</div>
		    
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
	<script src="/resources/js/cs/counselor_faq.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>