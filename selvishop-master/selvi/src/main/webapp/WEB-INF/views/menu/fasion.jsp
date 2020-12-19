<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_fasion = new Random();
	int i_fasion = r_fasion.nextInt(1000);
%> 




<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_fasion%>" rel="stylesheet">
<link href="/resources/css/menu/fasion.css?i=<%=i_fasion%>" rel="stylesheet">

<%@include file="../include/header.jsp"%>


   <!-- 상단 메뉴 리스트 -->
   <div id="fasion_form">
       <ul>
            <li class="cate1"><a href=""><span>아우터</span></a></li>
            <li class="cate2"><a href=""><span>티셔츠</span></a></li>
            <li class="cate3"><a href="" ><span>셔츠/블라우스</span></a></li>
            <li class="cate4"><a href="" ><span>원피스/스커트</span></a></li>
            <li class="cate5"><a href="" ><span>가디건/니트</span></a></li>
            <li class="cate6"><a href=""><span>팬츠</span></a></li>
            <li class="cate7"><a href=""><span>가방/지갑</span></a></li>
            <li class="cate8"><a href=""><span>양말/스타킹</span></a></li>
            <li class="cate9"><a href=""><span>주얼리/시계</span></a></li>
            <li class="cate10"><a href=""><span>언더웨어</span></a></li>
            <li class="cate11"><a href="" ><span>슈즈</span></a></li>
            <li class="cate12"><a href=""><span>모자/패션소품</span></a></li>
            <li class="cate13"><a href=""><span>디지털</span></a></li>
            <li class="cate14"><a href=""><span>시즌웨어</span></a></li>
            <li class="cate15"><a href=""><span>액티브웨어</span></a></li>
        </ul>
   </div>
   <!-- 상단 메뉴 리스트 -->
   
   
   <!-- 단일상품 광고 슬라이드 -->
     <div id="single_ad_slide">
         <div>
             <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20180126182219_u781d553e798b5f60905aa2801.jpg" alt="배너 타이틀">
         </div>
         
        <div class="bxslider" >
	     	<div>
		    	<img src="https://selvishop.kr/_wg/img/selvipic/05.jpg" />
	    	 </div>
	     	<div>
		    	<img src="https://selvishop.kr/_wg/img/selvipic/01.jpg" />
	     	</div>
	     	<div>
		    	<img src="https://selvishop.kr/_wg/img/selvipic/02.jpg" />
	     	</div>
	     	<div>
		        <img src="https://selvishop.kr/_wg/img/selvipic/03.jpg" />
	         </div>
	         <div>
		        <img src="https://selvishop.kr/_wg/img/selvipic/04.jpg" />
	         </div>

         </div>      
     </div>
   
     
   
   
   <!-- 단일상품 광고 슬라이드 -->

   
   <!-- 단일 상품에 왼쪽 큰사진, 오른쪽 작은사진 두개 -->
   <div id="single_left_big_photo">
       <div><img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20181017110438_c87b7f538811ab89470a072cfc.jpg" alt="배너 타이틀"></div>
       <div class="left_photo">
           <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104437_wc984f6c65532a454907080b6e.jpg" alt="브랜드 배너 좌측">
       </div>
       
       <div class="right_photo_div">
           <div class="right_photo">
               <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104437_sc984f6c65532a454907080b6e.jpg" alt="브랜드 배너 우측 상단">
           </div>
           <div class="right_photo">
               <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104437_zc984f6c65532a454907080b6e.jpg" alt="브랜드 배너 우측 하단">
           </div>
       </div>
   </div>
   <!-- 단일 상품에 왼쪽 큰사진, 오른쪽 작은사진 두개 -->
   
   
   
   <!-- 단일 상품에 오른쪽 큰사진, 왼쪽 작은사진 두개 -->
   <div id="single_left_big_photo">
   
       <div><img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20181017110438_c87b7f538811ab89470a072cfc.jpg" alt="배너 타이틀"></div>
   
       <div class="right_photo_div">
           <div class="right_photo">
               <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104516_e5d557071672c1114fc47eb5e8.jpg" alt="브랜드 배너 우측 상단">
           </div>
           <div class="right_photo">
               <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104516_c5d557071672c1114fc47eb5e8.jpg" alt="브랜드 배너 우측 하단">
           </div>
       </div>
   
   
       
       <div class="left_photo">
           <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190319104516_l5d557071672c1114fc47eb5e8.jpg" alt="브랜드 배너 좌측">
       </div>
   </div>
   <!-- 단일 상품에 오른쪽 큰사진, 왼쪽 작은사진 두개 -->
   
   
    <!-- 위쪽 큰 사진 하나,  밑쪽 작은사진 3개 -->
    <div id="multi_top_photo">
        <div class="top_photo">
            <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190315101548_a13e936a891e3bc39ebfc9af6c.jpg" alt="배너 대표 이미지">
        </div>
        
        <div class="bottom_photo">
            <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190315101647_pea86f7e00793da7aac1f93809.jpg" alt="상품 리스트 이미지">
            <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190315101647_fea86f7e00793da7aac1f93809.jpg" alt="상품 리스트 이미지">
            <img src="https://img.womanstalk.co.kr/upload/store_main/fashion/20190315101647_bea86f7e00793da7aac1f93809.jpg" alt="상품 리스트 이미지">
        </div>
    
    </div>
   
   
    <!-- 위쪽 큰 사진 하나,  밑쪽 작은사진 3개 -->
   
   
   <!-- 판매인기상품 메뉴, 최신순, 판매순, 최저가순 -->
   <div class="sortBtnBox">
       <h4 style="padding:15px 20px;">판매인기상품</h4>

       <div class="sortBox">
           <ul>
            	<li>
                	<a href="">최신순</a>
            	</li>
            	<li>
                	<a href="" class="on">판매순</a>
            	</li>
            	<li style="border-right:0px;">
                	<a href="">최저가순</a>
            	</li>
            </ul>
       </div>

   </div>
   <!-- 판매인기상품 메뉴, 최신순, 판매순, 최저가순 -->
   
   

   <!-- 패션 상품 리스트 -->
   <div id="fasion_product">
   
      <%for(int a=0; a<9; a++){ %>
          <div class="fasion_product_form">
              
               <img src="https://img.womanstalk.co.kr/upload/product/20190304/prodImg3/2019030400200_view_mobile_1551769463.png" />
           	   <div class="text_small">내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1 구성 </div>
               <div class="fasion_price_sale_text">40%</div>
               <div class="fasion_price_form">
           	       <div class="product_price_initial">1,500원</div>
                   <div class="product_price_sale">290원</div>
               </div>
               <div class="fasion_bottom_info">무료배송</div>
          </div>
      <% }%>
   </div>
    <!-- 패션 상품 리스트 -->
 

<%@include file="../include/footer.jsp"%>

<script>
//자바스크립트 테스트
$('.bxslider').bxSlider( {
	auto : true,
	autoControls : true,
	controls : true,
	stopAutoOnClick : true,
	pager : true,
	slideWidth : 850
});
</script>