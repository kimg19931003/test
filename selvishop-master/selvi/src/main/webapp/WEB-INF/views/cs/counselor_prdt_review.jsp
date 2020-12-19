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
<title>문의</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/cs/counselor_prdt_review.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bxslider/src/css/jquery.bxslider.css" />
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

				<a>
					<div class="prdtreview_div">
						<img src="/resources/img/shoppingmall/cs/counselor/review.png"
							class="review_img background_f4f4f4" />
						<div class="cs_text background_f4f4f4 bold">상품리뷰</div>
						<img src="/resources/img/shoppingmall/cs/counselor/1406.png"
							class="arrow_img background_f4f4f4" />
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


		<div class="table_title">상품리뷰</div>



		<table id="notice_table">


			<thead>
				<th></th>
	
			</thead>


			<tbody>


				<c:set var="length" value="${fn:length(list) }" />

				<c:choose>
					<c:when test="${fn:length(list)>0 }">
						<c:forEach var="row" items="${list}" varStatus="g">

							<tr>
						

								<td>
								
								
								
								<div class="prdt_date_hosi_recom_name">
									<div class="prdt_date">${fn:substring(row.board_reg_date,2,16)}</div>
									
									
									<div class="id_hosi_recom_div">
									    <div class="prdt_user_id">supersell00</div>
									    <div class="hosi_area">
									        <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" class="hosi"/>
									        <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" class="hosi"/>
									        <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" class="hosi"/>
									        <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" class="hosi"/>
									        <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" class="hosi"/>
									    </div>
									    
									    <div class="prdt_recommend">추천 : 1</div>
									</div>
									
									
									<div class="prdt_name">스마트폰 삼각대 [ 옵션 : 실버 ]</div>
								</div>	
									
									
									
									
									
						       <div class="prdt_img_arrow_recom">	
								  <div class="prdt_img_div">	
									<img src="/resources/img/865c75e6-7d56-4d9a-9efa-ff230ea24cfd_5b6d548b2db04b0cb42c7f8c37547865 - ë³µì¬ë³¸ - ë³µì¬ë³¸.jpg" class="prdt_img" />
	              				  </div>
	
	                              <div class="recom_arrow_div">
										<div class="recom_button">추천</div>
										<div class="bottom_arrow_div"><img src="/resources/img/shoppingmall/cs/counselor_prdt_review/bottom_arrow.png" class="bottom_arrow" /></div>
								  </div>
							   </div>
									
									  
									
									
									
									
									<div class="prdt_mobile_img_div">	
										<img src="/resources/img/865c75e6-7d56-4d9a-9efa-ff230ea24cfd_5b6d548b2db04b0cb42c7f8c37547865 - ë³µì¬ë³¸ - ë³µì¬ë³¸.jpg" class="prdt_mobile_img" />
										<div class="prdt_img_cnt">3</div>
	              				 	</div>
	              				 	
									<div class='prdt_title'>${row.board_title }</div>
									
									<div class="prdt_slide_div">
									    
									    
									    
                                        <ul class="prdt_img_slide">
										<li><img
											src="/resources/img/865c75e6-7d56-4d9a-9efa-ff230ea24cfd_5b6d548b2db04b0cb42c7f8c37547865 - ë³µì¬ë³¸ - ë³µì¬ë³¸.jpg"
											class="slide_img" /></li>

										<li><img
											src="/resources/img/865c75e6-7d56-4d9a-9efa-ff230ea24cfd_5b6d548b2db04b0cb42c7f8c37547865 - ë³µì¬ë³¸ - ë³µì¬ë³¸.jpg"
											class="slide_img" /></li>

										<li><img
											src="/resources/img/865c75e6-7d56-4d9a-9efa-ff230ea24cfd_5b6d548b2db04b0cb42c7f8c37547865 - ë³µì¬ë³¸ - ë³µì¬ë³¸.jpg"
											class="slide_img" /></li>
										</ul>



									</div>
								
                                        <div class='prdt_title_mobile'>${row.board_title }</div>
                                        <div class="mobile_bottom_arrow">
                                        
                                            <div class="mobile_bottom_arrow_div">
                                            	<span class="mobile_bottom_arrow_text">펼치기</span>
                                            	<span><img src="/resources/img/shoppingmall/cs/counselor_prdt_review/s_bottom_arrow.png" class="s_open_arrow" /></span>
                                            </div>
                                            
                                        </div>

                           
								</td>

							</tr>
							
							
							
							
						

						</c:forEach>
					</c:when>
				</c:choose>


			</tbody>
		</table>







	</div>




	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>



<script
	src="${pageContext.request.contextPath}/resources/bxslider/src/js/jquery.bxslider.js"></script>


	<script src="/resources/js/cs/counselor_prdt_review.js?i=<%=i_join%>"></script>
	

</body>

</html>