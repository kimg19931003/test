<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	Random r_home = new Random();
	int i_home = r_home.nextInt(1000);
%> 
	
<link href="/resources/css/admin/home.css?i=<%=i_home %>" rel="stylesheet" type="text/css" />

<%@include file="../admin/include/header.jsp"%>
<%@include file="../admin/include/menu.jsp"%>

<!-- 홈 -->
<div id="home_form">

    <!-- 관리자페이지에 해당하는 홈쇼핑 실제 링크 -->
	<div id="home_title_line">
        <div class="title">DD SHOP</div>

	</div>

  <!-- 주문영역  -->
 
    <div class="home_status order">
      
        <div class="order_img">
            <img src="/resources/img/admin_order.png" />
        </div>
    
        <div class="order_title">주문</div>  
    
        <div class="order_info">
            <span>입금 대기</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>결제완료</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>배송준비</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>배송 중</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>취소 요청</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>반품 요청</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="order_info">
            <span>환불 실패</span>
            <span><span>0</span> 개</span>
        </div>
    </div>
    
    <!-- 주문영역  -->  
    
    
    <!-- 상품영역  -->
    
    <div class="home_status product">   
        <div class="product_img">
            <img src="/resources/img/admin_product.png" />
        </div>
    
        <div class="product_title">상품</div>  
    
        <div class="product_info">
            <span>판매 중</span>
            <span><span>0</span> 개</span>
        </div>
        <div class="product_info">
            <span>판매 중지</span>
            <span><span>0</span> 개</span>
        </div>
  
    </div>

    <!-- 상품영역  -->
    
      
    
    <!-- 게시판 영역  -->
    
    <div class="home_status board">
    
        <div class="board_img">
            <img src="/resources/img/admin_board.png" />
        </div>
    
        <div class="board_title">게시판</div>  
    
        <div class="board_info">
            <span>새로 올라온 글</span>
            <span><span>0</span> 개</span>
        </div>
     
        
    </div>
    
    <!-- 게시판 영역  -->

</div>
	
</body>
</html>