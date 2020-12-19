<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_plan = new Random();
	int i_plan = r_plan.nextInt(1000);
%> 

   


<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_plan%>" rel="stylesheet">
<link href="/resources/css/menu/plan.css?i=<%=i_plan%>" rel="stylesheet">

<%@include file="../include/header.jsp"%>


    <div id="plan_form">
    
       <div><a> <img src="https://img.womanstalk.co.kr/upload/banner/201903041841114F954.png" alt=""></a></div>
       <div><a> <img src="https://img.womanstalk.co.kr/upload/banner/20190218174440C0835.png" alt=""></a></div>
       <div><a> <img src="https://img.womanstalk.co.kr/upload/banner/20190212144849041B6.png" alt=""></a></div>

    </div>
    
    
 


<%@include file="../include/footer.jsp"%>

<script>
	
</script>