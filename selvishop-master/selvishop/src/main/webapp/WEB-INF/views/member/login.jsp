<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 로그인 / 메인 -->
<div class="titleTopArea">
	<a href="" class="btnBox btnBack">
		<p>
			<span> <img
				src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
				alt="뒤로가기">
			</span>
		</p>
	</a>
	<h3>
		<span>로그인</span>
	</h3>
	<a href="/" class="btnBox btnHome">
		<p>
			<span> <img
				src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
				alt="메인">
			</span>
		</p>
	</a>
</div>

<!-- 로그인 / 비회원 주문-->
<div class="loginArea">
	<!-- 로그인 -->
	<form id="loginForm" action=""
		method="post">
		<div class="memLogin">
			<div class="inputBox">
				<p>
					<input type="text" name="email" placeholder="아이디">
				</p>
				<p>
					<input type="password" name="password" placeholder="비밀번호">
				</p>
			</div>
			<div class="saveBtnBox">
				<input type="hidden" name="remember" value="false">
				<button type="button" class="">자동로그인</button>
			</div>
			<button type="submit" class="btnLogin">LOGIN</button>
			<div class="snsBtnBox">
				<a href="">
					<img src="https://img.womanstalk.co.kr/upload/images/mobile/login/btn_kko.png"
						alt="카카오톡">
				</a>
				<a href="">
					<img src="https://img.womanstalk.co.kr/upload/images/mobile/login/btn_fb.png"
						alt="페이스북">
				</a>
				<a href="">
					<img src="https://img.womanstalk.co.kr/upload/images/mobile/login/btn_naver.png"
						alt="네이버">
				</a>
			</div>

			<div class="helpBtnBox">
				<p>
					<a href="">아이디 찾기</a>
				</p>
				<p>
					<a href="">비밀번호</a>
				</p>
				<p>
					<a href=""
						class="btnJoin">회원가입
					</a>
				</p>
			</div>
		</div>
	</form>
	
	<!-- 비회원 주문 -->
	<form id="orderSearch"
		action=""
		method="post">
		<div class="nonLogin">
			<h2>비회원 주문 조회</h2>
			<div class="inputBox">
				<p>
					<input type="text" name="nonmemberName" placeholder="이름">
				</p>
				<p>
					<input type="text" name="nonmemberHp" placeholder="주문번호">
					&nbsp;-&nbsp;
					<input type="text" name="nonmemberHp">
				</p>
				
				<p>
					<input type="text" name="nonmemberName" placeholder="비밀번호">
				</p>
			</div>

			<button type="submit" class="btnLogin">비회원 주문 조회</button>
		</div>
	</form>
</div>