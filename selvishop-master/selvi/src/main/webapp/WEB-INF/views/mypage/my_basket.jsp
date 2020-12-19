<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="java.util.*"%>
<%
	Random r_my_basket = new Random();
	int i_my_basket = r_my_basket.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_my_basket %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/my_basket.css?i=<%=i_my_basket %>"
	rel="stylesheet" type="text/css"/>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
	
  <script src="/resources/js/sweetalert/sweetalert.js"></script>  
</head>
<body>
	<!-- 내용 전체 -->
	<!-- <div id="wrap"> -->
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
	
		<!-- 로그인 / 메인 -->
		<!-- <div class="titleTopArea">
			<div>
					<span class="top_bar_img">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기">
					</span>
		    </div>
		    
			<div>
				<span class="top_bar_text">장바구니</span>    
			</div>
			
			<div>
					<span class="top_bar_home">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="메인">
					</span>
			</div>
		</div> -->
        <!-- 로그인 / 메인 -->
        
        
        
        <!-- 장바구니 선택 상품 리스트 -->
        <div class="product_basket">
        
        
            <div class="all_choice">
                <div>  
                    <input id="product_checkbox_all" type='checkbox'/>
                    <label for="product_checkbox_all" class=""></label>
                </div>
                <div>전체선택</div>  
            </div>
            
           
           
           <%int total_price=0; %>
           
           <%for(int j=0; j<10; j++){    
           
           
               total_price =  total_price+j*2000;
              
           
           %>
           
             
           
           <!-- 상품 인포 --> 
            <div class="product_info">
            
                <div class="product_check">
                    <input id="product_checkbox1" type='checkbox'/>
                    <label for="product_checkbox1" class=""></label>
                </div>
                
                <div class="product_img">
                    <img src="https://img.womanstalk.co.kr/upload/product/20190107/prodImg3/2019010700057_view_mobile_1546929191.jpg" />
                </div>


                <!-- 상품 리스트 칸 -->
				<div class="product_name_num">
					<div class="product_name">[아임닭] 부드러운 닭가슴살 계란말이 5팩</div>
					<div class="product_num_div">
					
						<div class="minus_div" data-id="<%=i%>">
							<button class="minus">
							    <img src="https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_down.png" alt="down">
							</button>
						</div>
						
						<div>
							<input class="product_num" type='text' value="1" readonly />
						</div>     
						
						<div class="plus_div" data-id="<%=i%>">
							<button class="plus">
							    <img src="https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_up.png" alt="up">
							</button>
						</div>
						
						
					</div>
					
					
				    <div class="product_price"><%=i*2000 %>원</div>
				</div>
				<!-- 상품 리스트 칸 -->

			</div>
			<!-- 상품 인포 -->
			
			<%} %>
			

			<!-- 배송비 칸 -->
			<div class="delivery">
				<span>일반배송 : 배송비 3,000원(30,000원 이상 무료배송)</span>
			</div>

			<!-- 배송비 칸 -->
		</div>
        <!-- 장바구니 선택 상품 리스트 -->
        
        
        
        <!-- 결제 예정금액 칸 -->
        <div class="pay_price">
        
            <!-- 총 결제 예정금액 -->
            <div class="total_price">
                <div class="inline-block">총 결제 예정 금액</div>
                <div class="inline-block total_price_val"><%=total_price %>원</div>
            </div>
            <!-- 총 결제 예정금액 -->
            
            
            <!-- 상품 전체 금액 -->
            <div class="price_info">
                <div>
                    <div class="inline-block">상품 전체 금액</div>
                    <div class="inline-block">14,700원</div>
                </div>
                
                <div>
                    <div class="inline-block">- 할인쿠폰</div>
                    <div class="inline-block">주문시 적용 가능</div>
                </div>
                
                <div>
                    <div class="inline-block">- 뷰티 머니</div>
                    <div class="inline-block">주문시 적용 가능</div>
                </div>
                
                <div>
                    <div class="inline-block">- 배송비</div>
                    <div class="inline-block">3000원</div>
                </div>
            </div>
            <!-- 상품 전체 금액 -->
            
            
            <!-- 상품 전체 합계 -->
            <div class="total_price2">
                <div class="inline-block">합계</div>
                <div class="inline-block">17,700원</div>
            </div>
            <!-- 상품 전체 합계 -->
            
            
            <!-- 상품 선택해제, 결제하기 버튼 칸 -->
            <div class="product_select">
            
            
                <div class="product_select_div inline-block">
                    <div class="inline-block">선택해제</div>
                    <div class="inline-block">선택삭제</div>
                </div>
                
                
                <div class="product_select_order inline-block">주문하기</div>
              
            </div>
            <!-- 상품 전체 합계 -->
            
            
        </div>
        <!-- 결제 예정금액 칸 -->
        
        
        
        <!-- 로그인 / 메인 -->
        
      </div>
	
	<%@include file="../include/footer.jsp"%>
		<script src="/resources/js/jquery.js"></script>
		<script src="/resources/js/mypage/my_basket.js?i=<%=i_my_basket%>"></script>
</body>
</html>