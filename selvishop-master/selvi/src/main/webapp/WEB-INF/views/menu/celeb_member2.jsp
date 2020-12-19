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
<body>
	<div id="wrap">
		<div class="topArea viewTopArea celeb" style="height: 56px;">
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
				<div href="/" class="logo">한스</div>
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
					style="background: url(https://img.womanstalk.co.kr/upload/eh_host/main/d2c68fecf4af0a125b33a5adb232327795d043b1.png) center no-repeat/cover">

					<span class="bg"></span>
					<div class="infoBox">
						<div class="celeb-name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/53f6650129e787926b7d8fce820a71e58c6a6c67.png">
						</div>
						<h4>한스의 뷰티 블로그</h4>
						<p class="item-num">ITEMS 1</p>





					</div>
				</div>

				<div
					class="celebProdWrap type2 celebshop swiper-container first swiper-container-horizontal">
					<div class="celebProdBox prodBox swiper-wrapper">
						<div class="prodBox swiper-slide swiper-slide-active"
							style="width: 814px; margin-right: 20px;">
							<a
								href="https://www.womanstalk.co.kr/product/view/2019030400200/301"
								onclick="ga('send', 'event', 'celeb_market_shop', '한스', '내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1 구성 ' )">


								<p class="date" data-end-time="2019-03-25T14:02:23+09:00">3일
									21:31:32 남음</p>

								<div class="prodInfo">
									<p class="title">내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 /
										2+1 구성</p>
									<div class="priceInfo">
										<strong class="sale  saleWt">할인가</strong>
										<p class="price">
											<strong>38,000원</strong>
										</p>
									</div>
								</div>
								<div class="prodImgBox">
									<div class="prodImg2">
										<p>
											<span><img
												src="https://img.womanstalk.co.kr/upload/product/20190304/prodImg2/2019030400200_list_mobile_1551768539.png"
												alt="product Image"></span>
										</p>
									</div>
								</div>
								<div class="txtWrap">
									<div class="comt">매번 어려운 다이어트 #내몸을부탁해 로 날씬이 돼요 우리</div>
								</div>
							</a>
						</div>
					</div>
					<div
						class="cnt swiper-pagination-container swiper-pagination-bullets">
						<span
							class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
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