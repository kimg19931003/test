<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_customer_service = new Random();
	int i_customer_service = r_customer_service.nextInt(1000);
%>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<link
	href="/resources/css/menu/customer_service.css?i=<%=i_customer_service%>"
	rel="stylesheet">

<%@include file="../include/header.jsp"%>

<div class="title">고객 센터</div>

<!-- 메인 페이지 상품 목록-->
<div id="main_wrap">
	
	<!-- 회사정보 디스플레이 -->
	<div class="company_info">

		<ul class="service_time">
			<li>070-4655-1365</li>
			<li>상담가능 : 10:00 ~ 18:00</li>
			<li>점심시간 : 12:30 ~ 13:30</li>
			<li>토 / 일 / 공휴일 휴무</li>
		</ul>

		<ul class="bank_info">
			<li>BANK INFO</li>
			<li>기업은행</li>
			<li>465-012590-04-011</li>
			<li>예금주 : (주)슈퍼셀</li>
		</ul>

		<ul class="return_addr">
			<li>RETURN ADDRESS</li>
			<li>부산시 사상구 장인로 77번길 69</li>
			<li>CJ 대한통운 리턴박스</li>
			<li>지정택배사 : CJ대한통운</li>
		</ul>

	</div>
	<!-- 회사정보 디스플레이 -->

	<!-- 공지사항, 이벤트 등.. -->
	<div class="menu_display">
		<ul class="notice_display">
			<li>
				<span>공지사항</span>
				<span>more ></span>
			</li>
			<!--
				c:set 변수 선언
				c:remove 변수 제거
				c:out 변수 내용 출력
				c:if if문
				c:choose c:when c:otherwise if-else문, switch문 같은 다수의 조건문
				c:forEach 반복문 - items 리스트가 받아올 배열 이름 var for문 내부에서 사용할 변수 varStatus 상태용 변수
				c:forTokens 특정문자열에서 구분자를 이용하여 글자를 자르는 기능
				fmt:formatDate 날짜
				fmt:formatNumber 숫자
			-->
			<c:forEach var="list_notice" items="${list_notice}" begin="0" end="3" step="1" varStatus="list_notice_status">
				<li>
					<span>${list_notice_status.board_title}</span>
					<span>${list_notice_status.board_reg_date}</span>
				</li>
			</c:forEach>
			<!-- <li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li> -->
		</ul>
		
		<ul class="event_display">
			<li><span>EVENT</span> <span>more ></span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
		</ul>

		<ul class="QnA_display">
			<li><span>QNA</span> <span>more ></span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
		</ul>

		<ul class="REVIEW_display">
			<li><span>REVIEW</span> <span>more ></span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
			<li><span>배송안내</span> <span>2019-02-16</span></li>
		</ul>
	</div>
	<!-- 공지사항, 이벤트 등.. -->

</div>
<!-- 메인 페이지 상품 목록-->

<%@include file="../include/footer.jsp"%>

<script src="/resources/js/index/index.js?i=<%=i_customer_service%>"></script>