<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%
	Random r_index = new Random();
	int i_index = r_index.nextInt(1000);
%> 


<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<%@include file="../include/header.jsp"%>



<!-- 모바일버전 메인 -->
<div style="position:fixed; top:0px; left:0px; font-size:40px; font-weight:bold; z-index:999999;">모바일버전</div>


<!-- 최상단, 최하단 이동 버튼 -->
<div id="up_down">
	<div class="up">
		<img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvi_shopping_mall_pc/%EC%9C%84%EB%A1%9C.png" />
	</div>
	<div class="down">
		<img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvi_shopping_mall_pc/%EC%95%84%EB%9E%98%EB%A1%9C.png" />
	</div>
</div>
<!-- 최상단, 최하단 이동 버튼 -->

<!-- 메인 슬라이드 -->
<div class="bxslider">   
	
	<div>
		<img class="img1" src="/resources/img/누뉴580.jpg" />
	</div>
	
	<div>
		<img class="img2"src="/resources/img/삼각대580.jpg" />
	</div>
	

</div>
<!-- 메인 슬라이드 -->

<!-- 카테고리 목록 -->
<div id="category">
	<div class="category">
		<div>
			<img style="width: 100px;"
				src="https://img.womanstalk.co.kr/upload/banner/20180412135644_b_file_kr.png" />
		</div>
		<div>일상용품</div>
	</div>
	<div class="category">
		<div>
			<img style="width: 100px;"
				src="https://img.womanstalk.co.kr/upload/banner/20180412135644_b_file_kr.png" />
		</div>
		<div>화장품</div>
	</div>
	<div class="category">
		<div>
			<img style="width: 100px;"
				src="https://img.womanstalk.co.kr/upload/banner/20180412135644_b_file_kr.png" />
		</div>
		<div>건강식품</div>
	</div>
	<div class="category">
		<div>
			<img style="width: 100px;"
				src="https://img.womanstalk.co.kr/upload/banner/20180412135644_b_file_kr.png" />
		</div>
		<div>다이어트 식품</div>
	</div>
	<div class="category">
		<div>
			<img style="width: 100px;"
				src="https://img.womanstalk.co.kr/upload/banner/20180412135644_b_file_kr.png" />
		</div>
		<div>베스트</div>
	</div>
</div>
<!-- 카테고리 목록 -->

<!-- 메인 페이지 상품 목록-->
<div id="main_wrap">
	<div class="list_title">추천하는 상품</div>
	<div id="main_product_list">
		<%
			for (int a = 0; a < 8; a++) {
		%>
		<div class="product_list">
			<div class="product_img"></div>
			<div class="product_price ">
				<span class="product_sale_price_percent"> 30% </span>
				<span class="product_price_initial"> 6600 </span>
				<span class="product_sale_price sale"> 9900 </span>
			</div>
			<div class="product_name">스마트폰 삼각대 세트</div>
		</div>
		<%
			}
		%>
	</div>
</div>
<!-- 메인 페이지 상품 목록-->

<!-- 단일 상품 강조 칸 -->
<div id="single_product_promotion">단일 상품 광고칸</div>
<!-- 단일 상품 강조 칸 -->

<!-- 이벤트 상품 목록-->
<div id="event_wrap">
	<div id="event_product_list">
		<%
			for (int a = 0; a < 8; a++) {
		%>
		<div class="event_product_list">
			<div class="product_img"></div>
			<div class="product_price ">
				<span class="product_sale_price_percent"> 30% </span>
				<span class="product_price_initial"> 6600 </span>
				<span class="product_sale_price sale"> 9900 </span>
			</div>
			<div class="product_name">스마트폰 삼각대 세트</div>
		</div>
		<%
			}
		%>
	</div>
</div>
<!-- 이벤트 상품 목록-->

<!-- 단일 상품 강조 칸 -->
<div id="single_product_promotion">단일 상품 광고칸</div>
<!-- 단일 상품 강조 칸 -->

<!-- 신상품 목록-->
<div id="new_wrap">
	<div id="new_product_list">
		<%
			for (int a = 0; a < 8; a++) {
		%>
		<div class="product_list">
			<div class="product_img"></div>
			<div class="product_price">9900</div>
			<div class="product_name">스마트폰 삼각대 세트</div>
		</div>
		<%
			}
		%>
	</div>
</div>
<!-- 신상품 목록-->

<!-- 단일 상품 강조 칸 -->
<%
	for (int a = 0; a < 2; a++) {
%>
<div id="single_product_promotion" style="margin: 20px auto">단일 상품 광고칸</div>
<%
	}
%>
<!-- 단일 상품 강조 칸 -->

<%@include file="../include/footer.jsp"%>

<script src="/resources/js/index/index.js?i=<%=i_index%>"></script>