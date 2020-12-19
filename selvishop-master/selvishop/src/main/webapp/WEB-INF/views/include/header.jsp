<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%
	Random r = new Random();
	int i = r.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 홈페이지</title>
<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i%>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/common/header.css?i=<%=i%>"
	rel="stylesheet" type="text/css" />

<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/common/menu.js"></script>


<!-- bx slider css, js 파일 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/selvishop_main/selvishop_main.css?i=<%=i%>" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/bxslider/src/css/jquery.bxslider.css?i=<%=i%>" />
<script
	src="${pageContext.request.contextPath}/resources/js/bxslider/src/js/jquery.bxslider.js?i=<%=i%>"></script>
<!-- bx slider css, js 파일 -->
</head>
<body>
	<!-- 내용 전체 -->
	<div id="wrap">
		<!-- 메뉴 / 로고 / 나의 페이지 / 장바구니 / 검색 / 메뉴 -->
		<div class="topArea" style="height: 161px;">
			<!-- 메뉴 / 로고 / 장바구니 / 검색 -->
			<div class="schBoxWrap" id="searchTopMenu">
				<!-- 메뉴 연결 : 로그인 / 비회원 주문 / 메뉴 / 실시간 급상승 베스트 상품 / 고객센터 -->
				<a href=""
					class="btnMenu" id="btnMenu">
					<span>
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_menu.png"
							alt="메뉴">
					</span>
				</a>
				<!-- // 메뉴 연결 : 로그인 / 비회원 주문 / 메뉴 / 실시간 급상승 베스트 상품 / 고객센터 -->
				
				<!-- 로고 -->
				<a href="/" class="logo">
					<img src="${pageContext.request.contextPath}/resources/img/셀비로고_가로.png"
						alt="셀비샵 로고">
				</a>
				<!-- // 로고 -->
				
				<!-- 마이페이지 -->
				<a href='login'
					class="btnMy">
					<span>
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_my.png"
							alt="마이페이지">
					</span>
				</a>
				<!-- // 마이페이지 -->
				
				<!-- 장바구니 -->
				<a href=""
					class="btnCart">
	                <span>
	                	<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_cart_w.png"
	                		alt="장바구니">
	                </span>
	                <span class="cnt">0</span>
           		</a>
				<!-- // 장바구니 -->
				
				<!-- 검색 -->
				<div class="schBox">
	                <div class="ipBox">
	                    <input type="text" id="mainSearchBox" name="searchInput" value=""
	                    	placeholder="[홀리카홀리카] 아이스팽글리터 ☞" autocomplete="off">
	                </div>
	                <a href=""
	                	class="btnSearch" id="mainSearchSubmit">
	                	<span>
	                		<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_search_p.png" alt="search">
	                	</span>
	                </a>
            	</div>
				<!-- // 검색 -->
			</div>
			<!-- // 메뉴 / 로고 / 장바구니 / 검색 -->
			
			<!-- 네비게이션 메뉴 -->
			<div class="naviBox" style="">
            	<div class="navi swiper-container swiper-container-horizontal">
                	<ul class="swiper-wrapper">
                		<li class="swiper-slide swiper-slide-active">
                			<a href=""
                				class="">
                				<span style="font-weight:bold;color:#FF0072;">내몸을부탁해</span>
                			</a>
                		</li>
                		<li class="swiper-slide swiper-slide-next">
                			<a href=""
                				class="on">
                				<span style="">홈</span>
                			</a>
                		</li>
                		<li class="swiper-slide">
                			<a href=""
                				class="">
                				<span style="font-weight:bold;color:#624392;">셀럽공구</span>
                			</a>
                		</li>
                		<li class="swiper-slide">
                			<a href=""
								class="">
								<span style="">투데이빅딜</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">베스트</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">뷰티샵</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">패션샵</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">푸드건강</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">라이프</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">이벤트</span>
							</a>
						</li>
						<li class="swiper-slide">
							<a href=""
								class="">
								<span style="">기획전</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- // 네비게이션 메뉴 -->
		</div> <!-- <div class="topArea" style="height: 161px;"> -->
		<!-- // 메뉴 / 로고 / 나의 페이지 / 장바구니 / 검색 / 메뉴 -->
	</div> <!-- // <div id="wrap"> -->
	<!-- // 내용 전체 -->