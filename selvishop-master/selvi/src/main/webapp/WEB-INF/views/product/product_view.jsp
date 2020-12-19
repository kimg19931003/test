<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_product_view = new Random();
	int i_product_view = r_product_view.nextInt(1000);
%> 





<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_product_view%>" rel="stylesheet">
<link href="/resources/css/product/product_view.css?i=<%=i_product_view%>" rel="stylesheet">
<script src="/resources/js/common/jquery-3.3.1.js"></script>
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<!-- <div id="wrap">   -->
<%@include file="../include/header.jsp"%>

<div id="main_wrap">

  
    
 <c:choose>
     <c:when test="${fn:length(list) > 0}">
            <c:forEach items="${list}" var="row">
               
    



      <!-- 제이슨 어레이 선언 -->
      <script> 
      
          // 상품 이름
          var prdt_name = "${row.prdt_name}";
      
      
          // 옵션 이름
          var arr_option_1 = new Array();
          var arr_option_2 = new Array();
          var arr_option_3 = new Array();
          
          // 상품 하나당 1,2,3 옵션 통합해서 집어넣은 배열
          
          var arr_option = new Array();
          
          // 옵션 추가가격 
          var arr_option_add_price_1 = new Array();
          var arr_option_add_price_2 = new Array();
          var arr_option_add_price_3 = new Array();
          
          
          // 상품 초기가격 저장해서 배열로 전체가격 구할떄 씀
          var option_total_price_arr = new Array();
          
          // 상품 갯수 저장하는 배열
          var option_total_num_arr = new Array();
       
          
          // 섬네일 주문완료시 prdt_order 테이블에 넣는기능
          var db_session_save_thumnail_image = "${row.prdt_thumbnail}";
   
          
          
         
          
          // 정가격, 할인가격
          var prdt_price = ${row.prdt_price};
          var prdt_sale_price = ${row.prdt_sale_price};
      </script>    
  




    <!-- 상품 소개 란 -->
    <div id="product_view_form">
    
    
       <div id="thumbnail_img_div">
           <c:set var="thumbnail_img" value="${fn:split(row.prdt_thumbnail,'§')}" />
           <c:set var="thumbnail_sub_img" value="${fn:split(row.prdt_thumbnail,'§')}" />
           
           <c:forEach items="${thumbnail_img}" varStatus="g" var="src">
               <c:if test="${g.index eq 0}">
                    <div class="thumbnail_img_div"><img src="/resources/img/${src}" class="thumbnail_img" alt="product Image"></div>
               </c:if>
           </c:forEach>
           
           
           <c:if test="${fn: length(thumbnail_img) > 1}">
           
           		<div class="arrow_div"> 
               	 	<img src="/resources/img/arrow_left.png" class="arrow_left"/>
              	 	<img src="/resources/img/arrow_right.png" class="arrow_right"/>
          		</div> 	   
          		  
           		<div class="thumbnail_img_view_div" >
           			<c:forEach items="${thumbnail_sub_img}" varStatus="g" var="src">
               		
                    		<div class="inline_div" style="left:${(g.index)*70}px" ><img src="/resources/img/${src}" class="thumbnail_img_view" alt="product Image"></div>
               			
          			</c:forEach>
          		 </div>
          		 
           </c:if>		 
           
       </div>
          
       
        
       <div id="product_explain_form">

						<table id="product_explain_form_table">

							<tbody>

								<tr>
									<td>스마트폰 삼각대</td>
									<td></td>
								</tr>


								<tr>
									<td>소비자가</td>
									<td>10,000원</td>
								</tr>

								<tr>
									<td>판매가</td>
									<td>9,000원</td>
								</tr>

								<tr>
									<td>적립금</td>
									<td>180원 (2%)</td>
								</tr>

								<tr>
									<td>배송비</td>
									<td>2,500원</td>
								</tr>

								<tr>
									<td colspan="2">
										<!-- 하단 고정바 옵션변환 -->
										<div class="product_footer_option">

											<img src="/resources/img/btn_down.png" class="btn_down" />

											<c:if test="${not empty row.prdt_option1_name}">


												<faketag id="option1">
												<div class="option1 opt_num">(필수) 옵션선택</div>
												<div class="option1_scroll">


													<c:choose>
														<c:when test="${fn:length(option_list_1) > 0}">



															<!-- 자바스크립트에 옵션 값 집어넣는 과정 -->
															<script> 
    		    <c:forEach items="${option_list_1}" var="option_row" varStatus="g">
    		    
    		    <c:if test="${g.index >0 }" >
    		        var json = new Object();
    		        json.prdt_name1_option = "${option_row.prdt_name1_option}";
    		        arr_option_1.push(json);
    		        
    		        
    		        var json = new Object();
    		        json.prdt_option_add_price_1 = "${option_row.prdt_option_add_price_1}";
    		        arr_option_add_price_1.push(json);
    		        
    		    </c:if>
    		    
    		    </c:forEach>
    		    
    		    
    		    
    		    sessionStorage.setItem("arr_option_1",JSON.stringify(arr_option_1));
    		    sessionStorage.setItem("arr_option_add_price_1",JSON.stringify(arr_option_add_price_1));
    		    </script>
															<!-- 자바스크립트에 옵션 값 집어넣는 과정 -->




															<c:forEach items="${option_list_1}" var="option_row"
																varStatus="g">

																<c:if test="${g.index >0 }">

																	<div data-index="${g.index}">
																		${option_row.prdt_name1_option} (추가금액 +
																		${option_row.prdt_option_add_price_1}원 )</div>

																</c:if>

															</c:forEach>



														</c:when>
													</c:choose>

												</div>
												</faketag>



											</c:if>


											<c:if test="${not empty row.prdt_option2_name}">



												<faketag id="option2">
												<div class="option2 opt_num option_blind">(필수) 옵션선택2</div>
												<div class="option2_scroll">



													<c:choose>
														<c:when test="${fn:length(option_list_2) > 0}">



															<script> 
    		    <c:forEach items="${option_list_2}" var="option_row" varStatus="g">
    		       
    		        <c:if test="${g.index >0 }" >
    		    
    		        var json = new Object();
    		        json.prdt_name2_option = "${option_row.prdt_name2_option}";
    		        arr_option_2.push(json);
    		        
    		        var json = new Object();
    		        json.prdt_option_add_price_2 = "${option_row.prdt_option_add_price_2}";
    		        arr_option_add_price_2.push(json);
    		        
    		        </c:if>
    		        
    		    </c:forEach>
    		    
    		    sessionStorage.setItem("arr_option_2",JSON.stringify(arr_option_2));
    		    sessionStorage.setItem("arr_option_add_price_2",JSON.stringify(arr_option_add_price_2));
    		    </script>



															<c:forEach items="${option_list_2}" var="option_row"
																varStatus="g">

																<c:if test="${g.index >0 }">

																	<div data-index="${g.index}">
																		${option_row.prdt_name2_option} (추가금액 +
																		${option_row.prdt_option_add_price_2}원 )</div>

																</c:if>

															</c:forEach>
														</c:when>
													</c:choose>



												</div>
												</faketag>




											</c:if>

											<c:if test="${not empty row.prdt_option3_name}">


												<c:set var="option_3"
													value="${fn:split(row.prdt_option3_name,'§')}" />
												<c:set var="add_price_3"
													value="${fn:split(row.prdt_option_add_price_3,'§')}" />

												<faketag id="option3">
												<div class="option3 opt_num option_blind">(필수) 옵션선택3</div>
												<div class="option3_scroll">


													<c:choose>
														<c:when test="${fn:length(option_list_3) > 0}">


															<script> 
    		    <c:forEach items="${option_list_3}" var="option_row" varStatus="g">
    		    
    		        <c:if test="${g.index >0 }" >
    		    
    		        var json = new Object();
    		        json.prdt_name3_option = "${option_row.prdt_name3_option}";
    		        arr_option_3.push(json);
    		        
    		        var json = new Object();
    		        json.prdt_option_add_price_3 = "${option_row.prdt_option_add_price_3}";
    		        arr_option_add_price_3.push(json);
    		        
    		        </c:if>
    		        
    		    </c:forEach>
    		    
    		    sessionStorage.setItem("arr_option_3",JSON.stringify(arr_option_3));
    		    sessionStorage.setItem("arr_option_add_price_3",JSON.stringify(arr_option_add_price_3));
    		    </script>


															<c:forEach items="${option_list_3}" var="option_row"
																varStatus="g">

																<c:if test="${g.index >0 }">

																	<div data-index="${g.index}">
																		${option_row.prdt_name3_option} (추가금액 +
																		${option_row.prdt_option_add_price_3}원 )</div>

																</c:if>

															</c:forEach>


														</c:when>
													</c:choose>


												</div>
												</faketag>

											</c:if>



											<div class="option_space"></div>

											<div class="total_price">
												총 상품 금액 : <span class="total_price_val">19000원</span>
											</div>

											<div class="product_footer_option_basket">장바구니</div>
											<div class="product_footer_option_buy">구매하기</div>
										</div> <!-- 하단 고정바 옵션변환 -->

									</td>

								</tr>

							</tbody>
						</table>


					</div>
        
        
        
        <div id="product_sns">
        
            <div class="face">
                <img src="https://img.womanstalk.co.kr/upload/images/view/btn_sns_fb.png" alt="페이스북 공유하기">
            </div>
            
            <div class="twitter">
               <img src="https://img.womanstalk.co.kr/upload/images/view/btn_sns_tw.png" alt="트위터 공유하기">
            </div>
            
            <div class="url">
               <img src="https://img.womanstalk.co.kr/upload/images/event/sns/btn_url.png" alt="URL 복사하기">
            </div>
            
            <div class="close">닫기</div>
        </div>

    </div>    
    <!-- 상품 소개 란 -->    
    
    
    <!-- 단일상품 광고란 -->
    <div id="single_ads">
    단일상품 광고란
       
    </div>
    <!-- 단일상품 광고란 -->

    <!-- 상품 정보 소개 이미지란-->    
    <div id="product_introduce_img">
    
        <div class="product_introduce_or_review">
            <div class="introduce_button">상세설명</div>
            <div class="review_button">고객후기</div>
        </div>
     
    	<div class="product_introduce_img" >
            
            
                  ${row.prdt_content}
                
             
            
        </div>   
        
        
        <div class="product_review_list">
           
            <div class="product_review_top" >
                <div style="margin-top: 36px;">상품 구매 후기</div>
                <div class="total_eval">
                    <span class="total_eval_star"><img src="https://img.womanstalk.co.kr/upload/images/main/ico_star5.png" /></span>
                    <span class="total_eval"><strong>4.8</strong></span>
                    <span class="review_edit_button">후기작성</span>
                </div>
            </div>
        
            <ul class="product_review_ul">
            
                <%for(int b=0; b<20; b++){ %>
                <li>
                    <div class="star_time">
                        <div class="star"><img src="https://img.womanstalk.co.kr/upload/images/main/ico_star5.png" /></div>
                        <div class="time">bwg**** | 2018-02-15</div>
                    </div>
                    
                    <div class="review_text">
                                                                다이어트용으로 천천히 음미하면서 먹을 수 있는 양으로 딱! 포만감 느낄 수 있을 정도고 건강한 맛 볶음밥이라고 보면 될거 같아용
                    </div>
                    
                    <div class="review_product_name">
                        06_부드러운 렌틸콩 현미잡곡밥 200g
                    </div>
                </li>
                <%} %>
                
            </ul>
        </div>
    </div>
    <!-- 상품 정보 소개 이미지란--> 
    
    
  		 </c:forEach>
      </c:when>
  </c:choose>
   
    
   </div> 
   
   
  
    
    <!-- 구매하기 버튼 눌렀을때 보내주는 폼 -->

    <form method="post" action="order" id="order_info">
        <input type='hidden' name="prdt_name_input" class="prdt_name_input" />
        <input type='hidden' name="arr_option_input" class="arr_option_input" />
        <input type='hidden' name="option_total_price_arr_input" class="option_total_price_arr_input" />
        <input type='hidden' name="option_total_num_arr_input" class="option_total_num_arr_input" />
        <input type='hidden' name="db_session_save_thumnail_image" class="db_session_save_thumnail_image" />
    </form>

     

<%@include file="../include/footer.jsp"%>

<script src="/resources/js/product/product_view.js?i=<%=i_product_view%>"></script>
