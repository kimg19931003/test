<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="java.util.*"%>
<%
	Random r_order_list_detail = new Random();
	int i_order_list_detail = r_order_list_detail.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_order_list_detail %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/order_list_detail.css?i=<%=i_order_list_detail %>"
	rel="stylesheet" type="text/css"/>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
	
  <script src="/resources/js/sweetalert/sweetalert.js"></script>  
</head>
<body>
	<!-- 내용 전체 -->
	<div id="wrap">
	
		<!-- 로그인 / 메인 -->
		<div class="titleTopArea">
			<div>
					<span class="top_bar_img">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기">
					</span>
		    </div>
		    
			<div>
				<span class="top_bar_text">주문 /배송조회</span>    
			</div>
			
			<div>
					<span class="top_bar_home">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="메인">
					</span>
			</div>
		</div>
        <!-- 로그인 / 메인 -->
        
        
        
        <!-- 배송조회 기능 -->
        <div class="product_order">
            <div class="order_header">
                <div>주문번호:20190410UJ32D83700</div>
            </div>
            
            <div class="order_info">
                <div class="order_info_img"><img src="https://img.womanstalk.co.kr/upload/product/20181204/prodImg3/2018120400082_view_mobile_1543908968.jpg" /></div>
                <div class="order_info_explain">
                    <div>[올즙]정성담은 건강즙 100ml 30포 5종/양배추즙,도라지즙,석류즙,호박즙,사과즙</div>
                    <div>옵션 : 03.[올즙] 정성담은 석류즙 100ml*30포 | 선택수량 : 1개</div>
                </div>            
            </div>

        </div>
        
        <!-- 배송조회 기능 -->



		<!-- 배송정보 -->
		<div class="delivery_info">
			<h4>배송정보</h4>
			<div class="font-small">※ 배송 준비중으로 넘어간 경우 배송지 변경이 불가합니다.</div>
			<div class="font-small">※ 부득이하게 배송지 변경이 필요하신 경우 고객센터(070-4655-1365)로 연락주시기 바랍니다.</div>
			
			<table class="delivery_info_table">

				<tbody>
					<tr>
						<td>받는분</td>
						<td>김근호</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>010-7933-3374</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>(46516)부산 북구 양달로 80-11 (화명동, 코오롱아파트) 산성 코오롱 아파트 102동 1401호</td>
					</tr>
					<tr>
						<td>배송 요청사항</td>
						<td>
						    <div class="addr_request_div">
						        <input type='text' class="addr_request" value="부재시 경비실에 맡겨주세요"/>
						    </div>
						    <div class="repair">수정</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 배송정보 -->
		
		
		<!-- 결제정보 -->
		<div class="delivery_info">
			<h4>결제정보</h4>
			
			<table class="delivery_info_table">

                <colgroup>
			        <col width="50%" />
			        <col width="50%" />
			    </colgroup>
  
				<tbody>
					<tr>
						<td>총 판매가</td>
						<td>17,900원</td>
					</tr>
					<tr>
						<td>총 배송비</td>
						<td>0원</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 결제정보 -->
		
		
		
		<!-- 할인정보 -->
		<div class="delivery_info">
			<h4>할인정보</h4>
			
			
			<table class="delivery_info_table">
			
			    <colgroup>
			        <col width="50%" />
			        <col width="50%" />
			    </colgroup>

				<tbody>
					<tr>
						<td>총 할인금액</td>
						<td>1,000원</td>
					</tr>
					<tr>
						<td>쿠폰</td>
						<td>0원</td>
					</tr>
					<tr>
						<td>뷰티머니</td>
						<td>1,000원</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 할인정보 -->
		
		
		  
		<!-- 최종 결제 금액 -->
		<div class="last_pay_money">최종 결제 금액 <span class="pink">16,900</span>원</div>
		<div class="last_pay_money">신용카드[구매완료]</div>
		<!-- 최종 결제 금액 -->
		

	</div>
	  <!-- 내용 전체 -->
	  
	  
	<%@include file="../include/footer.jsp"%>
		<script src="/resources/js/jquery.js"></script>
		<script src="/resources/js/mypage/order_list_detail.js?i=<%=i_order_list_detail%>"></script>
</body>
</html>