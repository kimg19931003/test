<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_best = new Random();
	int i_best = r_best.nextInt(1000);
%> 




<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_best%>" rel="stylesheet">
<link href="/resources/css/menu/best.css?i=<%=i_best%>" rel="stylesheet">

<%@include file="../include/header.jsp"%>


   <!-- 상단 폼 -->
   <div id="best_form">
       <div class="form">
           <img src="https://img.womanstalk.co.kr/upload/product/20180914/prodImg3/2018091400067.jpg" />
           <div class="text_small">[9700원이상 무배]신상 양말 100종이상 모음전 / 무지/프린트/골지/캐릭터 등 다양한 디자인  , 비디오 쇼핑이니까 최저가 , 290원  , 81% 할인 | 우먼스톡 .</div>
           <div class="product_price_initial">1,500원</div>
           <div class="product_price_sale">290원</div>
       </div>
       
       <div class="form">
           <img src="https://img.womanstalk.co.kr/upload/product/20180214/prodImg3/2018021400013_view_mobile_1552899870.jpg" />
           <div class="text_small">[아임웰/무료배송]★신제품 출시★곤약밥/도시락/닭가슴살 BEST 62종 골라담기 , 비디오 쇼핑이니까 최저가 , 1,900원  , 44% 할인 | 우먼스톡 .</div>
           <div class="product_price_initial">1,500원</div>
           <div class="product_price_sale">290원</div>
       </div>
       
       <div class="form">
           <img src="https://img.womanstalk.co.kr/upload/product/20180213/prodImg3/2018021300080_view_mobile_1551688222.jpg" />
           <div class="text_small">[아임닭]★신제품 출시★닭가슴살/소시지/만두 best 50종 골라담기! , 비디오 쇼핑이니까 최저가 , 1,700원  , 19% 할인 | 우먼스톡 .</div>
           <div class="product_price_initial">1,500원</div>
           <div class="product_price_sale">290원</div>
       </div>
   </div>
   <!-- 상단 폼 -->
   
   
   
   <!-- 베스트 상품이 무엇인지 설명해주는곳  -->
   <div id="best_explain">
                      셀비 베스트란?<br>
                     판매실적과 가중치를 주된 기준으로 하여 선정된 인기상품입니다.
   
   </div>
   <!-- 베스트 상품이 무엇인지 설명해주는곳 -->
   
   

   <!-- 베스트 상품 리스트 -->
   <div id="best_product">
   
      <%for(int a=0; a<9; a++){ %>
          <div class="best_product_form">
               <div class="rank_num">
                   <div class="rank_text">
                       
                            <%=a+1 %>
                       
                   
                   </div>
               </div>
               <img src="https://img.womanstalk.co.kr/upload/product/20190304/prodImg3/2019030400200_view_mobile_1551769463.png" />
           	   <div class="text_small">내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1 구성 </div>
               <div class="best_price_sale_text">할인가</div>
               <div class="best_price_form">
           	       <div class="product_price_initial">1,500원</div>
                   <div class="product_price_sale">290원</div>
               </div>
               <div class="best_bottom_info">무료배송</div>
          </div>
      <% }%>
   </div>
    <!-- 베스트 상품 리스트 -->
 

<%@include file="../include/footer.jsp"%>

<script>
	
</script>