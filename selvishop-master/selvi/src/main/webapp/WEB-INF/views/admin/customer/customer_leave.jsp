<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
	
<%@ page import="java.util.*"%>
<%
	Random r_customer_leave = new Random();
	int i_customer_leave = r_customer_leave.nextInt(1000);
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




<link href="/resources/css/admin/customer/customer_leave.css?i=<%=i_customer_leave %>" rel="stylesheet" type="text/css" />
<link href="/resources/css/common/datatable.css?i=<%=i_customer_leave %>" rel="stylesheet" type="text/css" />
<script src="/resources/js/common/datatable.js?i=<%=i_customer_leave %>"></script>
</head>


<body>    

	


<!-- 홈 -->
<div id="customer_form">

    <!-- 관리자페이지에 해당하는 홈쇼핑 실제 링크 -->
	<div id="customer_title_line">
        <div class="title">고객 관리</div>
        
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
          
          
	            <tr>
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






<script src="/resources/js/admin/customer/customer_leave.js?i=<%=i_customer_leave %>"></script>

	
</body>
</html>