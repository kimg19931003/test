<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_mybody = new Random();
	int i_mybody = r_mybody.nextInt(1000);
%> 




<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_mybody%>" rel="stylesheet">
<link href="/resources/css/menu/today_bigdeal.css?i=<%=i_mybody%>" rel="stylesheet">

<%@include file="../include/header.jsp"%>


    <!-- 시간 타임존 -->
    <div id="today_form">
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/Img_bigdeal_bg.png" alt="투데이빅딜 배경"></div>
        
        <div class="titleBox">
                  <div class="title">TODAY BIG DEAL</div>
                  <div class="time">
                        <span class="hour">10</span>:<span class="min">55</span>:<span class="sec">40</span>
                  </div>
             <div class="txt">단 하루만! 최저가에서 더 할인!</div>
        </div>
    </div>
     <!-- 시간 타임존 -->
    
    
    
    <!-- 메뉴 폼 -->
    <div id="menu_form">
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/btn_bigdeal_all_off.png" /></div>
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/btn_bigdeal_beauty_off.png" /></div>
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/btn_bigdeal_fashion_off.png" /></div>
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/btn_bigdeal_foodhealth_off.png" /></div>
        <div><img src="https://img.womanstalk.co.kr/upload/images/event/todayBigDeal/btn_bigdeal_life_off.png" /></div>
    
    </div>
    <!-- 메뉴 폼 -->
    

    <!-- 투데이 상품 리스트 -->
     <%for(int b=0; b<10; b++){ %>
    <div id="product_form" class="product_form">
    
        	<div class="product_today_img"><img src="https://img.womanstalk.co.kr/upload/product/20190304/prodImg2/2019030400200_list_mobile_1551768539.png" /></div>       
        	<div class="product_title">내몸을 부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1 구성</div>
        	<div class="product_price_form">
            	<span class="product_price_percent">32%</span>
            	<span class="product_price_sale">39,000원</span>  
            	<span class="product_price_initial">57,000원</span>
        	</div>
        
    </div>
    <%} %>
    <!-- 투데이 상품 리스트 -->



<%@include file="../include/footer.jsp"%>

<script>
	
</script>