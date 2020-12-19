<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%@ page import="java.util.*"%>
<%
	Random r_order_return_fail = new Random();
	int i_order_return_fail = r_order_return_fail.nextInt(1000);
%> 
	
	
<!-- 공통부분  include -->  
<%@include file="../../admin/include/header.jsp"%>
<%@include file="../../admin/include/menu.jsp"%>
<!-- 공통부분  include -->
	
<!DOCTYPE html>  
<html>
<head>
<meta charset="UTF-8">  
<title>셀비샵 공식 쇼핑몰</title>




<link href="/resources/css/admin/order/order_return_fail.css?i=<%=i_order_return_fail %>" rel="stylesheet" type="text/css" />
<link href="/resources/css/common/datatable.css?i=<%=i_order_return_fail %>" rel="stylesheet" type="text/css" />
<script src="/resources/js/common/datatable.js?i=<%=i_order_return_fail %>"></script>
</head>


<body>    

	


<!-- 홈 -->
<div id="customer_form">

    <!-- 관리자페이지에 해당하는 홈쇼핑 실제 링크 -->
	<div id="customer_title_line">
        <div class="title">환불 실패</div>
        
	</div>
	
	<table id="customer_table">
	   
	    <colgroup>
	        <col width="8%">
	        <col width="15%">
	        <col width="5%">
	        <col width="10%">
	        <col width="10%">
	        <col width="10%">
	        <col width="10%">
	        <col width="10%">
	    </colgroup>
	 
	    <thead>
	        <th><input type='radio' /></th>
	        <th>상품</th>
	        <th>구매자</th>
	        <th>상품 금액</th>
	        <th>상품 개수</th>
	        <th>적립금</th>
	        <th>고유코드</th>
	        <th>구매일</th>
	    </thead>
	    
	    <tbody>
	        <%for(int i=0; i<100; i++){ %>
	            <tr>
	        	    <td><input type='radio' /></td>
	        	    <td><img style="width:125px;" src="//m.selvishop.kr/web/product/big/201901/a19fc8a525b36db0f9619ea8690b3a20.jpg" /></td>
	        	    <td>김근호</td>
	        	    <td>34000원</td>
	        	    <td>4</td>
	        	    <td>2300원</td>
	        	    <td>alq01293</td>
	        	    <td>2019, 03, 03</td>
	        	</tr>
	        <%} %>
	    </tbody>
	
	</table>
</div>
<!-- 홈 -->





<!-- 환불실패 - 클릭시 고객정보 띄워주는 창 -->
<div id="customer_info_window">
    <div class="customer_info_window_child">
    
        <!-- 환불실패 창 헤더 -->
        <div class="refund_fail_certain">
            <span>환불실패 주문확인</span>
            <span><img src="/resources/img/customer_close.png" /></span>
        </div>
        <!-- 환불실패 창 헤더 -->
        
        
        <!-- 환불실패 창 고객정보, 주문정보 -->
        <div class="refund_fail_product_info">
            
            <div class="captain">주문정보</div>
        
            <div class="info">
                <span>TID</span>
                <span>ddshop001m01011711232222372397</span>
            </div>        
            
            <div class="info">
                <span>주문번호</span>
                <span>20171123IZWP4</span>
            </div>
            
            <div class="info">
                <span>주문일자</span>
                <span>2017.11.23 22:21:29</span>
            </div>
            
            <div class="info">
                <span>환불종류</span>
                <span>취소 요청에 대한 수동 환불</span>
            </div>
            
            <div class="info">
                <span>실패원인</span>
                <span>거래 취소 비밀번호가 일치하지 않습니다.</span>
            </div>
        </div>
        
        
        
        <div class="refund_fail_recipient">
           
             <div class="captain">수령인</div>
        
             <div class="info">
                <span>이름</span>
                <span>김근호</span>
            </div>       
            
            <div class="info">
                <span>휴대폰번호</span>
                <span>070-7933-3374</span>
            </div> 
        </div>
        
        <div class="refund_fail_customer_pay">
           
            <div class="captain">주문자</div>
        
            <div class="info">
                <span>이름</span>
                <span>Kim Kyoung-Lim</span>
            </div>
            
            <div class="info">
                <span>휴대폰 번호</span>
                <span> 010-4374-0014</span>
            </div>
            
            <div class="info">
                <span>이메일</span>
                <span> rudfla199465@naver.com</span>
            </div>    
        </div>
        
        
        
        <div class="refund_fail_pay_info">
           
            <div class="captain">결제 정보</div>
        
            <div class="info">
                <span>결제금액</span>
                <span>18,650원</span>
            </div>
            
            <div class="info">
                <span>결제 방법</span>
                <span> 신용 / 체크카드</span>
            </div>
        
        </div>
        
        <!-- 환불실패 창 고객정보, 주문정보 -->
    </div>
</div>
<!-- 환불실패 - 클릭시 고객정보 띄워주는 창 -->


<script src="/resources/js/admin/order/order_return_fail.js?i=<%=i_order_return_fail %>"></script>

	
</body>
</html>