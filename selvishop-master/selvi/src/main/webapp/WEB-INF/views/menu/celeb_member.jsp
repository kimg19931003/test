<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>
<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/menu/celeb_member.css"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

</head>
<body style="visibility: visible;">

	<div id="wrap">
		<div class="topArea viewTopArea celeb wh" style="height: 56px;">
			<!-- 스크롤 시 wt 제거 -->
			<div class="schBoxWrap" id="celebSearchTopMenu">
				<a href="javascript:window.history.back();" class="btnViewBack">
					<p>
						<span> <img
							src="https://img.womanstalk.co.kr/upload/images/wcrew/icon_back_wh.png"
							alt="뒤로가기" class="img1"> <img
							src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기" class="img2">
						</span>
					</p>
				</a>
				<div href="/" class="logo">샤넬에스터바비</div>
				<a href="/" class="btnHome"> <span> <img
						src="https://img.womanstalk.co.kr/upload/images/wcrew/icon_home_wh.png"
						alt="home" class="img1"> <img
						src="https://img.womanstalk.co.kr/upload/images/wcrew/icon_home.png"
						alt="home" class="img2">
				</span>
				</a>
				<div class="snsBtnWrap onclickToggleClassBtn">
					<button type="button"
						onclick="ga('send', 'event', '상품상세', 'click', '공유');"
						class="btnSns viewBtn btnshare" id="snsShare">
						<img
							src="https://img.womanstalk.co.kr/upload/images/wcrew/icon_share_wh.png"
							alt="공유하기" class="img1"> <img
							src="https://img.womanstalk.co.kr/upload/images/wcrew/icon_share.png"
							alt="공유하기" class="img2">
					</button>
				</div>
			</div>
		</div>

		<div id="popShareSns" class="popArea popShareSns hide">
			<div class="popWrap">
				<div class="popBox">
					<div class="content">
						<div class="snsList">
							<button type="button" id="kakao-link-btn" style="display: none;">
								<img
									src="https://img.womanstalk.co.kr/upload/images/mobile/btn_m_view_kko.png"
									alt="카카오톡 공유하기"> <span>카카오톡 공유하기</span>
							</button>

							<button type="button" id="facebook-link-btn">
								<img
									src="https://img.womanstalk.co.kr/upload/images/mobile/btn_m_view_fb.png"
									alt="페이스북 공유하기"> <span>페이스북 공유하기</span>
							</button>

							<button type="button" id="twitter-link-btn">
								<img
									src="https://img.womanstalk.co.kr/upload/images/mobile/btn_m_view_tw.png"
									alt="트위터 공유하기"> <span>트위터 공유하기</span>
							</button>
						</div>

						<button type="button" class="btnClose">취소</button>
					</div>
				</div>
			</div>
		</div>

		<div class="celebArea">
			<div class="celebProd">
				<div class="crewInfoBox type2"
					style="background: url(https://img.womanstalk.co.kr/upload/eh_host/main/) center no-repeat/cover">

					<span class="bg"></span>
					<div class="infoBox">
						<div class="celeb-name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/17e8d59c973237559a4d0368ef5e98a2ed16a090.jpeg">
						</div>
						<h4>샤넬에스터 뷰티에 오신걸 환영합니다</h4>
						<p class="item-num">ITEMS 0</p>
					</div>
				</div>
				<div
					class="celebProdWrap type2 celebshop swiper-container first swiper-container-horizontal">

					<div class="prodBox no-prod">
						픽한 상품이 곧 업데이트 될 예정입니다.<br> 조금만 기다려주세요 ♥
					</div>

				</div>
				<div class="celebFooterBox">
					<button id="snsShareBanner">
						<img
							src="https://img.womanstalk.co.kr/upload/images/celeb/bnr_celeb_shop.jpg"
							alt="배너 이미지">
					</button>
				</div>
			</div>
		</div>
		<%@include file="../include/footer.jsp"%>