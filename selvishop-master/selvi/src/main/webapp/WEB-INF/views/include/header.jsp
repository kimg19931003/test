<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>

<%
	Random r = new Random();
	int i = r.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>셀비샵 공식 쇼핑몰</title>
<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i %>"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/common/header.css?i=<%=i %>"
	rel="stylesheet" type="text/css" />
<link href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous' rel='stylesheet'>
<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery-ui.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
<link href="/resources/css/common/datatable.css?i=<%=i%>"
	rel="stylesheet" type="text/css" />
<script src="/resources/js/common/datatable.js?i=<%=i%>"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
	<%
		// 세션값 가져오기
		String id = (String) session.getAttribute("mem_id");
		String name = (String) session.getAttribute("mem_name");
	%>

	<!-- 헤더 -->
	<div id="header_wrap">
		<!-- 로그인 / 회원가입 / 장바구니 / 주문조회 / 마이페이지 -->
		<%
			// 세션값이 없을 때(로그인을 안 한 경우)
			if (id == null) {
		%>
		<div id="header_topbar">
			<div class="header_topbar_layout">
				<!-- 고정 상태 : 로고 / 검색 -->
				<ul id="header_topbar_fix">
					<li class="header_topbar_logo"><a href="/"> <img
							src="/resources/img/shoppingmall/header/logo_fix.png"
							alt="헤더 고정 로고">
					</a></li>
					<li id="header_topbar_fix_search">
						<form id="header_topbar_fix_search_form" action="" method="get"
							enctype="multipart/form-data">
							<div id="header_topbar_fix_search_layout">
								<fieldset>
									<input id="header_topbar_fix_search_keyword"
										onchange="this.className=(this.value=='')?'':'visited';">
									<button id="header_topbar_fix_search_btn"></button>
								</fieldset>
							</div>
						</form>
					</li>
				</ul>
				<!-- // 고정 상태 : 로고 / 검색 -->
				<ul id="header_topbar_menu">
					<li class="header_topbar_logout"><a href="/member/login">로그인</a>
					</li>
					<li class="header_topbar_logout"><a href="/member/join">회원가입
					</a></li>
					<li class="header_topbar_logout"><a href="/mypage/order_list">주문조회</a>
					</li>
					<li class="header_topbar_logout"><a href="/mypage/my_basket">장바구니
					</a></li>
					<li class="header_topbar_logout"><a href="/mypage">마이페이지</a></li>
				</ul>
			</div>
		</div>
		<%
			} else { // 로그인을 한 경우
						// 관리자가 아닐 경우
				if (!id.equals("supersell")) {
		%>
		<div id="header_topbar">
			<div class="header_topbar_layout">
				<!-- 고정 상태 : 로고 / 검색 -->
				<ul id="header_topbar_fix">
					<li class="header_topbar_logo"><a href="/"> <img
							src="/resources/img/shoppingmall/header/logo_fix.png"
							alt="헤더 고정 로고">
					</a></li>
					<li id="header_topbar_fix_search">
						<form id="header_topbar_fix_search_form" action="" method="get"
							enctype="multipart/form-data">
							<div id="header_topbar_fix_search_layout">
								<fieldset>
									<input id="header_topbar_fix_search_keyword"
										onchange="this.className=(this.value=='')?'':'visited';">
									<button id="header_topbar_fix_search_btn"></button>
								</fieldset>
							</div>
						</form>
					</li>
				</ul>
				<!-- // 고정 상태 : 로고 / 검색 -->
				<ul id="header_topbar_menu">
					<li class="header_topbar_login"><a href="/member/login"><span
							class="login_name"><%=name%></span>님</a></li>
					<li class="header_topbar_login"><a href="/member/logout">로그아웃
					</a></li>
					<li class="header_topbar_login"><a href="/mypage/order_list">주문조회</a>
					</li>
					<li class="header_topbar_login"><a href="/mypage/my_basket">장바구니
					</a></li>
					<li class="header_topbar_login"><a href="/mypage">마이페이지</a></li>
				</ul>
			</div>
		</div>
		<%
			}
			}
		%>
		<!-- // 로그인 / 회원가입 / 장바구니 / 주문조회 / 마이페이지 -->

		<!-- 로고 / 검색 -->
		<div id="header_logo_search">
			<div class="layout">
				<!-- 로고 -->
				<div id="header_logo">
					<a href="/"> <img
						src="${pageContext.request.contextPath}/resources/img/shoppingmall/header/logo.png"
						alt="셀비샵 로고">
					</a>
				</div>
				<!-- // 로고 -->

				<!-- 검색 -->
				<div id="header_search">
					<form id="header_search_form" action="" method="get"
						enctype="multipart/form-data">
						<div id="header_search_layout">
							<fieldset>
								<input id="header_search_keyword"
									onchange="this.className=(this.value=='')?'':'visited';">
								<button id="header_search_btn"></button>
							</fieldset>
						</div>
					</form>
				</div>
				<!-- // 검색 -->
			</div>
		</div>
		<!-- // 로고 / 검색 -->

		<!-- 메뉴 -->
		<div id="header_navi">
			<div id="header_navi_menu">
				<div class="header_navi_menu_layout">
					<div id="navi_menu">
						<ul>
							<li class="menu"><a href="/product_all">전체상품</a></li>
							<li class="menu"><a href="/category1">카테고리1</a></li>
							<li class="menu"><a href="/category2">카테고리2</a></li>
							<li class="menu"><a href="/category3">카테고리3</a></li>
							<li class="menu"><a href="beautyshop">셀비 studio</a></li>
							<li class="menu"><a href="/cs/counselor_home">고객센터</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- // 메뉴 -->

		<!-- 모바일 : 햄버거 / 로고 / 장바구니 -->
		<div id="header_mobile_topbar">
			<div class="header_mobile_layout">
				<ul id="header_mobile_topbar_fix">
					<li class="header_mobile_sub" onclick="openSub()"><img
						src="/resources/img/shoppingmall/mobile/header/hamburger_menu.png"
						style="width: 35px; height: 31px;"></li>
					<li style="width: 74%;"><img
						src="/resources/img/shoppingmall/mobile/header/mobile_logo.png"
						style="width: 170px; height: 30px;"></li>
					<li><img
						src="/resources/img/shoppingmall/mobile/header/shopping_basket.png"
						style="width: 36px; height: 37px;"></li>
				</ul>
			</div>
		</div>
		<!-- // 모바일 : 햄버거 / 로고 / 장바구니 -->

		<!-- 모바일 : 메뉴 -->
		<div id="header_mobile_navi">
			<div id="header_navi_menu">
				<div class="header_navi_menu_layout">
					<div id="navi_mobile_menu">
						<ul>
							<li class="mobile_menu"><a href="/product_all">전체상품</a></li>
							<li class="mobile_menu"><a href="/category1">카테고리1</a></li>
							<li class="mobile_menu"><a href="/category2">카테고리2</a></li>
							<li class="mobile_menu"><a href="/category3">카테고리3</a></li>
							<li class="mobile_menu"><a href="beautyshop">셀비 studio</a></li>
							<li class="mobile_menu"><a href="/cs/counselor_home">고객센터</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- // 모바일 : 메뉴 -->
	</div>

	<!-- 모바일 : 사이드 메뉴 -->
	<aside id="mobile_sub_menu">
		<div class="mobile_sub_top_box" onclick="closeSub()">
			<img id="mobile_sub_menu_close"
				src="/resources/img/shoppingmall/mobile/sub/close.png">
		</div>
		<div class="mobile_sub_welcome"></div>
		<div class="mobile_sub_search">
			<div class="m_sub_search">
				<div class="m_search">
					<form name="search" method="get" action=""
						onsubmit="return false;">
						<fieldset>
							<legend>검색 폼</legend>
							<input type="text" id="keyword" title="검색어를 입력하세요"
								class="MS_search_word"> <a
								href="javascript:search_submit();" class="btn_search"><i
								class="fa fa-search"></i></a>
						</fieldset>

					</form>
				</div>
			</div>
		</div>
	</aside>
	<!-- // 모바일 : 사이드 메뉴 -->