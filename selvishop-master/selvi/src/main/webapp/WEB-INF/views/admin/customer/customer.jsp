<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	
<%@ page import="java.util.*"%>
<%
	Random r_customer = new Random();
	int i_customer = r_customer.nextInt(1000);
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




<link href="/resources/css/admin/customer/customer.css?i=<%=i_customer %>" rel="stylesheet" type="text/css" />
<link href="/resources/css/common/datatable.css?i=<%=i_customer %>" rel="stylesheet" type="text/css" />
<script src="/resources/js/common/datatable.js?i=<%=i_customer %>"></script>
</head>


<body>    

	


<!-- 홈 -->
<div id="customer_form">

    <!-- 관리자페이지에 해당하는 홈쇼핑 실제 링크 -->
	<div id="customer_title_line">
        <div class="title">CUSTOMER</div>
        
	</div>
	
	<table id="customer_table">
	   
	    <colgroup>
	        <col width="5%">
	        <col width="9%">
	        <col width="10%">
	        <col width="20%">
	        <col width="15%">
	        <col width="10%">
	        <col width="10%">
	        <col width="10%">
	    </colgroup>
	 
	    <thead>
	        <th><input type='radio' /></th>
	        <th>이름</th>
	        <th>아이디</th>
	        <th>이메일</th>
	        <th>휴대폰 번호</th>
	        <th>적립금</th>
	        <th>구매 횟수</th>
	        <th>구매 금액</th>
	    </thead>
	    
	    <tbody>
	      
	      
<c:choose>
     <c:when test="${fn:length(list) > 0}">
          <c:forEach items="${list}" var="row">
          
          
	            <tr data-id="${row.mem_idx_pk }">
	        	    <td><input type='radio' /></td>
	        	    <td>${row.mem_name }</td>
	        	    <td>${row.mem_id }</td>
	        	    <td>${row.mem_email }</td>
	        	    <td>${row.mem_phone }</td>
	        	    <td>미구현</td>
	        	    <td>미구현</td>
	        	    <td>미구현</td>
	        	</tr>
	        	
	        	
           </c:forEach>
      </c:when>
</c:choose>
	    
	    
	    </tbody>
	
	</table>
</div>
<!-- 홈 -->


<c:choose>
     <c:when test="${fn:length(list) > 0}">
          <c:forEach items="${list}" var="row">

<!-- 고객 칸 클릭했을때 고객정보 전체 창 띄워주는 폼 -->
<div id="customer_info_form">


    <!-- 고객정보 고정 헤더 -->
	<div id="customer_info_header">
	    <div class="customer_info_header_form">
        	<div class="customer_back_img"><img src="/resources/img/customer_back.png" /></div>
        	<div class="customer_back">뒤로 돌아가기</div>
        	<div class="customer_info"><%=session.getAttribute("admin_mem_id") %> 님의 고객 상세정보</div>
        </div>	
	</div>
	<!-- 고객정보 고정 헤더 -->


    <!-- 고객정보 디스플레이  -->
    <div class="customer_info_form">
    
    
        <!-- 고객 기본정보  -->
        <div class="customer_initial_info">
            <div class="customer_info_title">기본 정보</div>
            
            <div class="initial_date">
                <span>가입일</span>
                <input type='text' class="mem_join_date" value="${row.mem_join_date }" />
            </div>
            
            <div class="initial_id">
                <span>아이디</span>
                <input type='text' class="mem_id" value="${row.mem_id }" />
            </div>
            
            <div class="initial_email">
                <span>이메일</span>
                <input type='text' class="mem_email" value="${row.mem_email }" />
            </div>
            
            <div class="initial_name">
                <span>이름</span>
                <span><input type='text' class="mem_name" value="${row.mem_name}"/></span>
            </div>
            
            <div class="initial_phone">
                <span>휴대폰 번호</span>
                <span>
                     <input type='text' class="mem_phone_1" value="${fn:substring(row.mem_phone,0,3) }"/> -
                     <input type='text' class="mem_phone_2" value="${fn:substring(row.mem_phone,3,7) }"/> -
                     <input type='text' class="mem_phone_3" value="${fn:substring(row.mem_phone,7,11) }"/>
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
                <span style="text-align: center;">
                    <input type='text' class="mem_addr" value="" readonly/>
                    <input type='text' value="" class="mem_addr_detail"/>
                    <div class="addr_button">주소찾기</div>
                </span>
            </div>
            
            <div class="initial_birth">
                <span>생년월일</span>
                <span>
                    <input type='text' value="${fn:substring(row.mem_birth,0,4) }" class="mem_birth_1" placeholder="YYYY"/>
                    <input type='text' value="${fn:substring(row.mem_birth,4,6) }" class="mem_birth_1" placeholder="MM" class=""/>
                    <input type='text' value="${fn:substring(row.mem_birth,6,8) }" class="mem_birth_1" placeholder="DD" class="day"/>
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
                <span>${row.mem_last_login }</span>
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

         </c:forEach>
     </c:when>
</c:choose>

<script src="/resources/js/admin/customer/customer.js?i=<%=i_customer %>"></script>

	
</body>
</html>