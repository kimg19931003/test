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
<link href="/resources/css/cs/counselor_faq_view.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">


		<div class="cs_menu_div">
  
			<div class="notice_faq_div">
			
			<a>
				<div class="notice_div">
					<img src="/resources/img/shoppingmall/cs/counselor/notice.png"
						class="notice_img background_f4f4f4" /> 
					<div class="cs_text background_f4f4f4 bold">공지사항</div>
					<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
						class="arrow_img background_f4f4f4" /> 
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
		







	
		
		<c:choose>
		    <c:when test="${fn:length(list)>0 }">
		        <c:forEach var="row" items="${list}" varStatus="g">
		
		
		
	<div class="table_list_div">	
		
		<table class="notice_view">
				
			<tbody>
			
			     <tr class="notice_title_tr">
		         	<td><div class="notice_title_name">제목</div></td>
		         	<td ><div class="notice_title">${row.board_title}</div></td>
		         </tr>
		    
		     	 
		     	 <tr class="notice_date_writer_hit_tr">
		     	 
		     	 
		         	<td colspan="2">
		         	
		         		<div class="notice_title_name">작성일</div>
		         		<div class="notice_date">${fn: substring(row.board_reg_date, 0, 10) }</div>
		         	
		         		<div class="notice_title_name">작성자</div>
		         		<div class="notice_writer">${row.board_writer }</div>
		         	
		         		<div class="notice_title_name">조회수</div>
		         		<div class="notice_hit">${row.board_hit}</div>
		         	
		         	</td>
		         	
		     	 </tr>
		
		
		         <tr class="notice_content_tr">
		          
		             <td colspan="2">
		     	 		<div class="notice_content_div">
		     
		         			${row.board_content }
		     
		     	 		</div>
		     	 	 </td>
		     	 	
		     	 </tr>	

			</tbody>	

		</table>
		
		
		
		<div class="move_list_button_div">
			<span class="move_list_button">목록</span>
		</div>
	</div>		
		
		
		</c:forEach>
			</c:when>
				</c:choose>
		   
		   
		   
		<!-- 댓글기능 -->
		<div class="review_div">
		
		
		<c:choose>
		    <c:when test="${fn:length(review_list)>0 }">
		        <c:forEach var="row" items="${review_list}" varStatus="g">
		
		    <div class="review_display_div">
		    
		        <div class="review_display_id">작성자 : ${row.review_user_id }</div>
		        
		        <div class="review_display_reg_date"> 작성일 : ${fn:substring(row.review_reg_date,0,10) }</div>
		        
		        <div class="review_display_content">
		                    ${row.review_content }
		        
		        </div>
		    </div>
		    
		  </c:forEach>
		      </c:when>
		           </c:choose>
		    
		    <div class="review_textarea_div"> 
		        <div class="textarea"><textarea class="review_textarea"></textarea></div>
		        <div class="review_reg_button">댓글등록</div>
		       
		    </div>
		    
		    
		</div>
		<!-- 댓글기능 -->
	
	
	
		  
		

	</div>




	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>


    <script>
       
            var user_id = $.trim(<%=session.getAttribute("mem_id")%>); 
            var id_empty = false;
            if(user_id == "" || user_id == null){
            	id_empty = true;
            }
    </script>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/cs/counselor_faq_view.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>