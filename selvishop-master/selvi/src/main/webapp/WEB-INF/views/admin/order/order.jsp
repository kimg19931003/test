<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	
<%@ page import="java.util.*"%>
<%
	Random r_order_new = new Random();
	int i_order_new = r_order_new.nextInt(1000);
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




<link href="/resources/css/admin/order/order.css?i=<%=i_order_new %>" rel="stylesheet" type="text/css" />
<link href="/resources/css/common/datatable.css?i=<%=i_order_new %>" rel="stylesheet" type="text/css" />
<script src="/resources/js/common/datatable.js?i=<%=i_order_new %>"></script>
<script type="text/javascript" src="/resources/js/sweetalert/sweetalert.js?i=<%=i_order_new%>"></script>
</head>


<body>    

	


<!-- 홈 -->
<div id="customer_form">



    <!-- 상세 검색 파트  -->       
	<div class="detail_search">
	
  
	     
	     <div class="detail_search_form">
	     <input class="order_id" placeholder="주문번호" type="text"/>
         <p class="arrow_box">주문번호</p>
         </div>
		
			
		 <select data-placeholder="상품상태 선택" placeholder="상품상태 선택" class="state select" multiple tabindex="3">
            <option value="입금대기">입금대기</option>
            <option value="결제완료">결제완료</option>
            <option value="배송준비">배송준비</option>
            <option value="배송중">배송중</option>
            <option value="취소요청">취소요청</option>
            <option value="반품요청">반품요청</option>
            <option value="배송완료">배송완료</option>
            <option value="거래완료">거래완료</option>
            <option value="취소완료">취소완료</option>
            <option value="반품완료">반품완료</option>
         </select>
      

         <div class="detail_search_form">
		 <input class="product_name" placeholder="상품이름" type="text"/>
		 <p class="arrow_box">상품이름</p>	
		 </div>
			
			
			
		
	     <select data-placeholder="결제 방법" placeholder="상품상태 선택" class="pay_method select" multiple tabindex="3">
            <option value="신용 / 체크카드">신용 / 체크카드</option>
            <option value="계좌이체">계좌이체</option>
            <option value="휴대폰 결제">휴대폰 결제</option>
            <option value="가상계좌">가상계좌</option>
            <option value="무통장 입금">무통장 입금</option>
            <option value="카카오페이">카카오페이</option>
         </select>
      
         
	     
	     <div class="detail_search_form">
	     <input class="order_person" placeholder="주문자"  type="text"/>
	     <p class="arrow_box">주문자</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="recipient" placeholder="수령인"  type="text"/>    
	     <p class="arrow_box">수령인</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="deposit_person" placeholder="입금자" type="text"/>
	     <p class="arrow_box">입금자</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="phone" type="text" placeholder="휴대폰 번호" />
	     <p class="arrow_box">휴대폰 번호</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="id" type="text" placeholder="아이디" />
	     <p class="arrow_box">아이디</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="email" type="text" placeholder="이메일" />
	     <p class="arrow_box">이메일</p>
	     </div>
	     <!--<input class="memo" type="text" placeholder="메모" /> -->
	     
	    
	     <select data-placeholder="주문일" placeholder="상품상태 선택" class="order_date select">
            <option value="전체">전체</option>
            <option value="최근 7일">최근 7일</option>
            <option value="최근 14일">최근 14일</option>
            <option value="최근 1개월">최근 1개월</option>
            <option value="최근 3개월">최근 3개월</option>
            <option value="최근 6개월">최근 6개월</option>
            <option value="직접입력">직접입력</option>
         </select>
       
	     
	     <div class="detail_search_form">
	     <input class="date1" type="text" placeholder="" />
	     <p class="arrow_box">시작일</p>
	     </div>
	     
	     <div class="detail_search_form">
	     <input class="date2" type="text" placeholder="" />
	     <p class="arrow_box">종료일</p>
	     </div>
	     
	     <div class="detail_search_form">
	         <span class="search_button">검색</span>
	     </div>
	     
	     
	</div>
	<!-- 상세 검색 파트  -->

    <!-- 관리자페이지에 해당하는 홈쇼핑 실제 링크 -->
	<div id="customer_title_line">
	
	
        <div class="title">
        
             <c:out value="${state }" />
   
        
        </div>
        
        
           
        <div class="detail_search_button">상세검색</div>
        
        
        <!-- 엑셀 다운 / 전체 / 미확인 / 확인 완료 / 글쓰기 버튼 -->
		<div class="field_header_contents shop-boards">
			<div class="button-wrap hover-trans tooltip">
				<button class="btn excelExportButton btn-gray" id="downloadAllboardsBtn">
					<i class="icon icon-black icon-export no-opacity"></i>
				</button>
				<!-- 툴팁 -->
				<span class="tooltiptext tooltip-bottom">엑셀</span>
			</div>
		</div>
	<!-- // 엑셀 다운 / 전체 / 미확인 / 확인 완료 / 글쓰기 버튼 -->
        
	</div>
	
	
	
	
	
	
	
	
	<table id="customer_table">
	   
	    <colgroup>
	        <col width="8%">
	        <col width="15%">
	        <col width="15%">
	        <col width="10%">
	      
	        <col width="10%">
	     
	        <col width="10%">
	        <col width="10%">
	    </colgroup>
	 
	    <thead>
	        <th><input type='checkbox' id="order_radio"/><label for="order_radio" class="customer_radio"></th>
	        <th>상품</th>
	        <th>구매자</th>
	        <th>상품 금액</th>
	       
	        <th>적립금</th>
	      
	        <th>구매일</th>
	        
	        
	        <!-- 배송준비, 배송 중 일때만 나올 수 있도록 -->
	        <c:if test="${state_val eq 'delivery_proceed' }">
	        	<th>송장등록</th>
	        </c:if>
	        
	        <c:if test="${state_val eq 'delivery_ready' }">
	        	<th>송장등록</th>
	        </c:if>
	        <!-- 배송준비, 배송 중 일때만 나올 수 있도록 -->
	        
	        
	        <!-- 입금대기일때 -->
	        <c:if test="${state_val eq 'deposit_wait' }">
	        	<th>입금확인</th>
	        </c:if>	        
	        <!-- 입금대기일때 -->
	    </thead>
	    
	    <tbody>
	     
	<c:choose>
        <c:when test="${fn:length(list) > 0}">
             <c:forEach items="${list}" var="row" varStatus="g">
	     
	     
	         <c:set var="order_prdt_option" value="${row.order_prdt_option }" />
	         <c:set var="order_prdt_option_name" value="${row.order_prdt_option_name }" />
	     
	            <tr data-id="${row.order_idx_pk}">
	        	    <td><input type='checkbox' id="order_radio${g.index }"/><label for="order_radio${g.index }" class="customer_radio"></label></td>
	        	    
	        	    
	        	    <td>
	        	    
	        	        <c:set var="thumbnail_arr" value="${fn:split(row.order_prdt_thumbnail,'§')}" />
	        	    
	        	        <c:forEach var="thumbnail" items="${thumbnail_arr}" varStatus="g" >
	        	        
	        	            <c:if test="${g.index eq 0}">
	        	                 <img style="width:125px;" src="/resources/img/admin/product/${thumbnail}" />
	        	            </c:if> 
	        	             
	        	        </c:forEach>
	        	    </td>
	        	    
	        	    
	        	    <td>${row.order_prdt_name }</td>
	        	    <td>${row.order_prdt_price }</td>
	        	 
	        	    <td>2300원</td>
	        	 
	        	    <td>${fn:substring(row.order_buy_time,0,4)}년 ${fn:substring(row.order_buy_time,4,6)}월 ${fn:substring(row.order_buy_time,6,8)}일  ${fn:substring(row.order_buy_time,8,10)}:${fn:substring(row.order_buy_time,10,12)}</td>
	        	    
	        	    
	        	    
	        	    <!-- 배송 중, 배송준비중일때-->
	        	    <c:if test="${state_val eq 'delivery_proceed' }">
	        	    	<td><div class="invoice_button" data-id="${row.order_idx_pk }" data-invoicenum="${row.order_invoice_num }"  data-courier="${row.order_courier }">등록</div></td>
	        	    </c:if>
	        	    
	        	    <c:if test="${state_val eq 'delivery_ready' }">
	        	    	<td><div class="invoice_button" data-id="${row.order_idx_pk }" data-invoicenum="${row.order_invoice_num }"  data-courier="${row.order_courier }">등록</div></td>
	        	    </c:if>
	        	    
	        	    <!-- 배송 중, 배송준비중일때-->
	        	    
	        	    
	        	    
	        	    <!-- 입금대기일때 -->
	        	    
	        	     <c:if test="${state_val eq 'deposit_wait' }">
	        	    	<td><div class="deposit_wait_button" data-id="${row.order_idx_pk }" data-invoicenum="${row.order_invoice_num }"  data-courier="${row.order_courier }">입금확인</div></td>
	        	    </c:if>
	        	    
	        	    <!-- 입금대기일때 -->
	        	    
	        	</tr>
	  
	         </c:forEach>
	     </c:when>
	 </c:choose>
	  
	    </tbody>
	
	</table>
</div>
<!-- 홈 -->




<!-- 고객 칸 클릭했을때 고객정보 전체 창 띄워주는 폼 -->
<div id="customer_info_form">


    <!-- 고객정보 고정 헤더 -->
	<div id="customer_info_header">
	    <div class="customer_info_header_form">
        	<div class="customer_back_img"><img src="/resources/img/customer_back.png" /></div>
        	<div class="customer_back">뒤로 돌아가기</div>
        	<div class="customer_info">김근호 님의 고객 상세정보</div>
        </div>	
	</div>
	<!-- 고객정보 고정 헤더 -->
	
	
	
	
	
	


    <!-- 고객정보 디스플레이  -->
    <div class="customer_info_form">
    
    
        <!-- 상품 주문한 상품 정보 띄워주는 곳-->  
		<table class="customer_info_product"> 
		
		
		    <colgroup>
		        <col width="20%" />
		        <col width="20%" />
		        <col width="20%" />
		        <col width="20%" />
		        <col width="20%" />
		    </colgroup>
		
		
		    <thead>
		        <th>상품 이미지</th>
		        <th>상품 이름</th>
		        <th>상품 옵션</th>
		        <th>수량</th>
		        <th>가격</th>
		    </thead>
            <tbody>
            
       <!-- 상품 옵션 나누는 jsp -->
												
												
	 
													
                <tr>
	  	 			<td class='customer_info_product_img'>
	   	   	  			<img src='//m.selvishop.kr/web/product/big/201901/a19fc8a525b36db0f9619ea8690b3a20.jpg' />	    
	   				</td>
	   		
	   				<td class='customer_info_product_name'></td>
	   				<td class='customer_info_product_code'></td>
	   				<td class='customer_info_product_num'>개</td>
	   				<td class='customer_info_product_price'>원</td>
	   		    </tr>
	   		    
	
	    
	
	
             
	   	    </tbody>
		</table>			
		<!-- 상품 주문한 상품 정보 띄워주는 곳 -->
    
    
    
  
    
        <!-- 고객 기본정보  -->
        <div class="customer_initial_info">
            <div class="customer_info_title">기본 정보</div>
            
            <div class="initial_date">
                <span>가입일</span>
                <span class="order_buy_time"></span>
            </div>
            
            <div class="initial_id">
                <span>아이디</span>
                <span class="order_id">sasaa3865</span>
            </div>
            
            <div class="initial_email">
                <span>이메일</span>
                <span class="order_pay_email"></span>
            </div>
            
            <div class="initial_name">
                <span>이름</span>
                <span><input class="order_name" type='text' value="김근호"/></span>
            </div>
            
            <div class="initial_phone">
                <span>휴대폰 번호</span>
                <span>
                     <input type='text' value=""/> -
                     <input type='text' value=""/> -
                     <input type='text' value=""/>
                 </span>
            </div>
                       
            <div class="initial_post">
                <span>우편 번호</span>
                <span>
                    <input type='text' value="" readonly/>
                    <button>검색하기</button>
                </span>
            </div>
            
            <div class="initial_addr">
                <span>주소</span>
                <span>
                    <input type='text' value="" readonly/>
                    <input type='text' value=""/>
                </span>
            </div>
            
            <div class="initial_birth">
                <span>생년월일</span>
                <span>
                    <input type='text' value="" placeholder="YYYY"/>
                    <input type='text' value="" placeholder="MM" class=""/>
                    <input type='text' value="" placeholder="DD" class="day"/>
                </span>
            </div>
            
            <div class="initial_gender">
                <span>성별</span>
                <span>   
                    <span><input type='radio' />남자</span>
                    <span><input type='radio' />여자</span>
                </span>
            </div>
            
            <div class="initial_exit">
                <span>탈퇴여부</span>
                <span>
                  	  탈퇴시키기
                </span> 
            </div>
            
            
         
        </div>
        <!-- 고객 기본정보  -->
    
    
    
       
    
    
        <!-- 고객 활동정보 -->
        <div class="customer_activity_info">
            <div class="customer_info_title">활동 정보</div>
            
            <div class="activity_login_time">
                <span>최근 로그인</span>
                <span>2017.12.10 20:41:44</span>
            </div>
            
            <div class="activity_repair_time">
                <span>최근 수정일</span>
                <span>2017.12.10 20:41:44</span>
            </div>
            
            <div class="activity_rate">
                <span>등급</span>
                <span>
                    <input type='text' value="김근호"/>
                </span>
            </div>
            
            <div class="activity_saving">
                <span>적립금</span>
                <span>0원</span>
            </div>
            
            <div class="activity_coupon">
                <span>쿠폰</span>
                <span>0매</span>
            </div>
                       
            <div class="activity_buy_price">
                <span>구매 금액</span>
                <span>0원</span>
            </div>
            
            <div class="activity_buy_count">
                <span>구매 횟수</span>
                <span>0회</span>
            </div>
            
            <div class="activity_refund_account">
                <span>환불 계좌</span>
                <span>
                    <input type='text' value="" placeholder="은행"/>
                    <input type='text' value="" placeholder="예금주" class=""/>
                    <input type='text' value="" placeholder="계좌번호" class=""/>
                </span>
            </div>
            
            <div class="activity_memo">
                <span>메모</span>
                <span>   
                    <textarea></textarea>
                </span>
            </div>
            
      
            
        </div>
        <!-- 고객 활동정보  -->
        
     
        
        <!-- 변경사항 저장 버튼 -->
        <div class="save_button">
                                     변경사항 저장
        </div>
        <!-- 변경사항 젖저장 버튼 -->
    
    </div>
    <!-- 고객정보 디스플레이  -->




</div>
<!-- 고객 칸 클릭했을때 고객정보 전체 창 띄워주는 폼 -->




<!-- 송장번호 등록 하는 팝업창 -->

<div class="invoice_window">

   


    <div class="invoice_input"><input type='text' class="invoice_num" placeholder="송장번호"/></div>
    <img src="/resources/img/cross.png" class="invoice_close" /> 
    
    <div class="invoice_input"><input type='text' class="courier" placeholder="택배사" readonly/>
        <ul class="invoice_ul">
            <li data-code="cj">CJ 대한통운</li>
            <li data-code="cu">CU 편의점 택배</li>
            <li data-code="gs">GS Postbox</li>
            <li data-code="post_office">우체국 택배</li>
            <li data-code="hanzin">한진택배</li>
            <li data-code="rozen">로젠택배</li>
            <li data-code="lotte">롯데택배</li>
        </ul>
    </div>
    
    <div class="invoice_num_div"></div>
    <div class="courier_div"></div>
    
    
    <div class="invoice_save">송장번호 저장</div>
</div>



<script src="/resources/js/admin/order/order.js?i=<%=i_order_new %>"></script>

	
</body>
</html>