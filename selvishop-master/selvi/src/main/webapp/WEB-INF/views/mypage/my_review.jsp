<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_my_review = new Random();
	int i_my_review = r_my_review.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_my_review %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/common.css?i=<%=i_my_review %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/my_review.css?i=<%=i_my_review %>"
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
				<span class="top_bar_text">작성가능 리뷰</span>    
			</div>
			
			<div>
					<span class="top_bar_home">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="메인">
					</span>
			</div>
		</div>
        <!-- 로그인 / 메인 -->
        
        
        <!-- 작성 가능한 후기 -->
        <div class="review">
            <div class="product_list">작성 가능한 후기</div>
            <div class="product_complete_list">작성한 후기</div>
        </div>
        <!-- 작성 가능한 후기 -->
        
        
        
        <!-- 작성 가능한 상품 리스트 -->
         <table class="product_review_list">

            <colgroup>
                <col width="35%">
                <col width="30%">
                <col width="15%">
                <col width="20%">
            </colgroup>

            <tbody>
				<tr>
					<td><img src="https://img.womanstalk.co.kr/upload/product/20181204/prodImg3/2018120400082_view_mobile_1543908968.jpg" /></td>
					<td>건강식품 다디어트</td>
					<td>413413개</td>
					<td>2413413413, 04</td>
				</tr>
						
			</tbody>
        </table>
        <!-- 작성 가능한 상품 리스트 -->
        
        
        
         <!-- 작성한 상품 리스트 -->
         <table class="product_review_complete_list">

            <colgroup>
                <col width="35%">
                <col width="30%">
                <col width="15%">
                <col width="20%">
            </colgroup>

            <tbody>
				<tr>
					<td><img src="https://img.womanstalk.co.kr/upload/product/20181204/prodImg3/2018120400082_view_mobile_1543908968.jpg" /></td>
					<td>올바른 석류즙</td>
					<td>4개</td>
					<td>2019, 04, 04</td>
				</tr>
						
			</tbody>
        </table>
        <!-- 작성한 상품 리스트 -->
        
        


		<!-- 작성가능 후기 주의사항 -->
		<div class="reviewInfoTxt">
			<p>* 배송완료 이후 부터 후기 작성이 가능합니다.</p>
			<p>* 후기는 배송완료일로부터 90일까지 작성이 가능하며, 한 개의 상품 당 하나의 후기만 작성이 가능합니다.</p>
			<p>* 이미 작성된 후기를 수정하거나 삭제 후 재작성은 가능하나, 포인트는 재적립 되지 않습니다.</p>
			<p>* 광고 / 비방 / 도배성 / 욕설 / 상관없는 내용등이 포함되어 있을 경우 삭제될 수 있으며, 이 경우 적립된
				포인트는 반환됩니다.</p>
		</div>

		<!-- 작성가능 후기 주의사항 -->



	</div>	
	
	
	<%@include file="../include/footer.jsp"%>
		<script src="/resources/js/jquery.js"></script>
		<script src="/resources/js/mypage/my_review.js?i=<%=i_my_review%>"></script>
</body>
</html>