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
	href="${pageContext.request.contextPath}/resources/css/member/login.css?i=<%=i_login %>"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<script src="/resources/js/sweetalert/sweetalert.js"></script>

	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">

		<!-- 로그인 / 비회원 주문-->
		<div class="loginArea">
			<!-- 로그인 -->
		
				<div class="memLogin">
					<h2>로그인</h2>    
					<div class="inputBox">  
					
						<div class="email_div">
							<input type="text" name="email" id="email" />
							<div class="email_title">아이디</div>
					    </div>
					    
					    <div class="password_div">
							<input type="password" name="password" id="password" />
							<div class="password_title">비밀번호</div>
						</div>
						
					</div>
					
					     
					<!-- 자동로그인
					<div class="saveBtnBox">
						<input type="hidden" name="remember" value="false">
						<button type="button" class="">자동로그인</button>
					</div>
					 -->
					
					<div class="login_button">
						<button type="submit" class="btnLogin">LOGIN</button>
					</div>
					
					<div class="no_mem_login_button">
						<a href="/member/nomem_login"><button type="submit" class="no_mem_btnLogin">비회원 주문조회</button></a>
					</div>
					   
					<div class="snsBtnBox">
						<a href=""> <img
							src="/resources/img/shoppingmall/member/login/kakao_login_img.png"
							alt="카카오톡">
						</a> <a href=""> <img
							src="/resources/img/shoppingmall/member/login/facebook_login_img.png"
							alt="페이스북">
						</a> <a href=""> <img
							src="/resources/img/shoppingmall/member/login/naver_login_img.png"
							alt="네이버">
						</a> <a href=""> <img
							src="/resources/img/shoppingmall/member/login/google_login_img.png"
							alt="구글">
						</a>
					</div>

					<div class="helpBtnBox">
						<p>
							<a href="/member/find_account">아이디 찾기</a>
						</p>
						<p>
							<a href="/member/find_account">비밀번호 찾기</a>
						</p>
						<p>
							<a href="/member/join" class="btnJoin">회원가입 </a>
						</p>
					</div>
				</div>

		</div>
	</div>
    
    
    
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/member/login.js?<%=i_login%>"></script>

	<%@include file="../include/footer.jsp"%>