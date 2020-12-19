<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="java.util.*"%>
<%
	Random r_order_list = new Random();
	int i_order_list = r_order_list.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_order_list %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/order_list.css?i=<%=i_order_list %>"
	rel="stylesheet" type="text/css"/>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
	
  <script src="/resources/js/jquery.js"></script>
  <script src="/resources/js/sweetalert/sweetalert.js"></script>  
  
  
</head>
<body>

    <%
           List<Map<String,Object>> list =  (List<Map<String,Object>>) request.getAttribute("list"); 
   
    %>
    
    <SCRIPT>
       // 변수 선언 
       var order_courier = [];
       var order_invoice_num = [];    
    </SCRIPT>




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
        
    <c:choose>   
        <c:when test="${fn:length(list)>0}">
            <c:forEach var="row" items="${list}" varStatus="g">
         
         
         <script>
             order_courier[${g.index}] = '${row.order_courier}';
             order_invoice_num[${g.index}] = '${row.order_invoice_num}';
         </script>  
         
         <c:set var="thumbnail_arr" value="${fn:split(row.order_prdt_thumbnail,'§')}" />
         
        
        <div class="product_order">
            <div class="order_header">
                <div>주문번호:20190410UJ32D83700</div>
                <div><a href="/mypage/order_list_detail">상세보기 ></a></div>
            </div>
            
            <div class="order_info">
            
                <c:forEach var="thumbnail" items="${thumbnail_arr}" varStatus="g" >
                
                    <c:if test="${g.index eq 0}">
                        <div class="order_info_img"><img src="/resources/img/admin/product/${thumbnail}" /></div>
                    </c:if>
                    
                </c:forEach>
                
                <div class="order_info_explain">
                    <div>${row.order_prdt_name }</div>
                    <div>옵션 : 03.[올즙] 정성담은 석류즙 100ml*30포 | 선택수량 : 1개</div>
                </div>  
                
                <div class="delivery_state">배송추적</div>
            </div>
            
            
            <div class="delivery_info">
                <table>
                
                    <colgroup>
                        <col width="15%" />
                        <col width="15%" />
                        <col width="15%" />
                        <col width="55%" />
                    </colgroup>
                
                    <thead>
                        <th>일시</th>
                        <th>상태</th>
                        <th>위치</th>
                        <th>메모</th>
                    </thead>
                    
                    <tbody>
                      
                    </tbody>
                </table>
            
            </div>

        
        </div>
     </c:forEach>
     </c:when>
     </c:choose> 
        
        
        
        
        
        
        <div class="order_cert">
              <div>구매완료</div>
              <div></div>
        </div>
        <!-- 배송조회 기능 -->
        
  
      </div>
	  <!-- 내용 전체 -->
	  
	  
	<%@include file="../include/footer.jsp"%>
		
		<script src="/resources/js/mypage/order_list.js?i=<%=i_order_list%>"></script>
</body>
</html>