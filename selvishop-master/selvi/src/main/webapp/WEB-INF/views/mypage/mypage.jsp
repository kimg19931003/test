<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_mypage = new Random();
	int i_mypage = r_mypage.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>셀비샵 공식 쇼핑몰</title>

<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_mypage %>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/mypage/common.css?i=<%=i_mypage %>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage.css?i=<%=i_mypage %>"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<script src="/resources/js/sweetalert/sweetalert.js"></script>
</head>
<body>
	<!-- 내용 전체 -->
	<!-- <div id="wrap"> -->
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
		<!-- 로그인 / 메인 -->
		<!-- <div class="titleTopArea">
		
			<div>
					<span class="top_bar_img">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기">
					</span>
		    </div>
		    
			<div>
				<span class="top_bar_text">마이페이지</span>    
			</div>
			
			<div>
					<span class="top_bar_home">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="메인">
					</span>
			</div>
		</div> -->
		<!-- 로그인 / 메인 -->


		<!-- 구매이력 -->
		<table class="order_history">


			<colgroup>
				<col width="33%">
				<col width="33%">
				<col width="33%">
			</colgroup>


			<thead>
				<th>구매횟수</th>
				<th>구매금액</th>
				<th>적립금</th>
			</thead>

			<tbody>
				<tr>
					<td>0번</td>
					<td>0원</td>
					<td>0원</td>
				</tr>
			</tbody>

		</table>

		<!-- 구매이력 -->


		<!-- 주문 배송 조회 -->
		<div class="order_delivery_see">

			<div class="order_product_title">주문/배송 조회</div>

			<div class="order_product_state">
				<div>
					<div class="inline-block">0</div>
					<div class="arrow inline-block">></div>
					<div class="order_product_state_word">주문접수</div>
				</div>

				<div>
					<div class="inline-block">0</div>
					<div class="arrow inline-block">></div>
					<div class="order_product_state_word">입금확인</div>
				</div>

				<div>
					<div class="inline-block">0</div>
					<div class="arrow inline-block">></div>
					<div class="order_product_state_word">상품준비중</div>
				</div>

				<div>
					<div class="inline-block">0</div>
					<div class="arrow inline-block">></div>
					<div class="order_product_state_word">배송중</div>
				</div>

				<div>
					<div class="inline-block">0</div>
					<div class="arrow inline-block">></div>
					<div class="order_product_state_word">배송완료</div>
				</div>

				<div>
					<div class="inline-block">0</div>
					<div class="order_product_state_word">구매확정</div>
				</div>
			</div>

		</div>
		<!-- 주문 배송 조회 -->


		<!-- 로그인 회원 메뉴 -->
		<div class="member_menu">
			<a href="/mypage/order_list">
				<div>
					<span>주문 배송조회</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a> <a href="/mypage/myinfo">
				<div>
					<span>개인정보 수정</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a> <a href="/mypage/my_basket">
				<div>
					<span>장바구니</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a> <a href="">
				<div>
					<span>카톡플친 카톡하기</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a> <a href="/mypage/my_review">
				<div>
					<span>나의 후기</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a> <a href="/mypage/qna">
				<div>
					<span>고객센터</span> <span><img
						src="/resources/img/mypage_arrow.png" /></span>
				</div>
			</a>
		</div>
		<!-- 로그인 회원 메뉴 -->


		<div class="logout">로그아웃</div>

	</div>


	<%@include file="../include/footer.jsp"%>
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/mypage/mypage.js?i=<%=i_mypage%>"></script>
</body>
</html>