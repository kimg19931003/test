<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_login = new Random();
	int i_login = r_login.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>
    
<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_login %>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/member/common.css?i=<%=i_login %>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/member/nomem_login.css?i=<%=i_login %>"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<script src="/resources/js/sweetalert/sweetalert.js"></script>
</head>
<body>
	

	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
   
		<!-- 로그인 / 비회원 주문-->
		<div class="loginArea">
			<!-- 로그인 -->
		
				<div class="memLogin">
					<h2>비회원 주문조회</h2>    
					<div class="inputBox">  
					
						<div class="nomem_name_div">
							<input type="text" name="nomem_name" id="nomem_name" />
							<div class="nomem_name_title">주문자 성명</div>
					    </div>
					    
					    <div class="nomem_order_num_div">
							<input type="password" name="nomem_order_num" id="nomem_order_num" />
							<div class="nomem_order_num_title">주문번호</div>
						</div>
						
						<div class="nomem_password_div">
							<input type="password" name="nomem_password" id="nomem_password" />
							<div class="nomem_password_title">비회원주문 비밀번호</div>
						</div>
						
					</div>
					
					     
					<!-- 자동로그인
					<div class="saveBtnBox">
						<input type="hidden" name="remember" value="false">
						<button type="button" class="">자동로그인</button>
					</div>
					 -->
					
					<div class="login_button">
						<button type="submit" class="btnLogin">비회원 주문조회</button>
					</div>
					
				
				

				</div>
	

			
		</div>
	</div>
    
    
    
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/member/nomem_login.js?<%=i_login%>"></script>
</body>
</html>