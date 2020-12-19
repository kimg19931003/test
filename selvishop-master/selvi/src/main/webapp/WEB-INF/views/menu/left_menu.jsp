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
	href="${pageContext.request.contextPath}/resources/css/menu/menu_common.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/menu/left_menu.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<script src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/menu/left_menu.js"></script>
</head>
<body>
	<div id="wrap">
		<nav class="leftMenuArea" id="leftMenuArea">
			<div class="leftMenuWrap">
				<!-- 닫기 -->
				<a href="javascript:window.history.back();" type="button"
					class="btnClose" id="btnCloseNav">
					<img src="https://img.womanstalk.co.kr/upload/images/common/btn_lnb_close.png"
						alt="close">
				</a>
				<!-- // 닫기 -->
				
				<!-- 로그인하기 / 비회원 주문 조회 / 회원 전용 배너 -->
				<div class="txtBox">
					<a href="member/login" id="btnLogin" class="btnLogin">로그인하기</a>
					<p>로그인하시고 쿠폰, 뷰티머니, 외상구매 한도를 확인하세요</p>

					<a href="https://www.womanstalk.co.kr/member/login" class="btnNonLogin">
						<span>비회원 주문 조회</span>
					</a>
					<a href="product/special/4054" class="btnEvent">
						<p>
							<strong>겨울철 헤어 효자템 할인☞</strong>
						</p>
					</a>
				</div>
				<!-- // 로그인하기 / 비회원 주문 조회 / 회원 전용 배너 -->
				
				<!-- 메뉴 -->
				<div class="menu">
					<!-- 카테고리 -->
					<div class="cateListBox">
						<button type="button" class="accordion">카테고리</button>
						<div class="cateList">
							<ul>
								<li>
									<a href="/product/brandDay">브랜드데이</a>
								</li>
								<li>
									<a href="/product/todayBigDeal">투데이빅딜</a>
								</li>
								<li>
									<a href="/product/special/2056">명품샵</a>
								</li>
								<li>
									<a href="/product/shop/208">라이프</a>
								</li>
								<li>
									<a href="/product/special/2071">로드샵</a>
								</li>
								<li>
									<a href="/product/special/2061">드럭스토어</a>
								</li>
								<li>
									<a href="/product/special/3551">무료배송</a>
								</li>
								<li>
									<a href="/product/shop/207">헬스/건강</a>
								</li>
								<li>
									<a href="/product/special/2166">58%~할인</a>
								</li>
								<li>
									<a href="/wCrew/main">TV쇼핑</a>
								</li>
								<li>
									<a href="/product/best">베스트</a>
								</li>
								<li>
									<a href="/board/event/list">이벤트</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- // 카테고리 -->
					
					<!-- 뷰티 -->
					<div class="cateListBox">
						<button type="button" class="accordion">뷰티</button>
						<div class="cateList">
							<ul>
								<li>
									<a href="/product/shop/178/ALL">브랜드</a>
								</li>
								<li>
									<a href="/product/shopList/178001">스킨케어</a>
								</li>
								<li>
									<a href="/product/shopList/178002">선케어</a>
								</li>
								<li>
									<a href="/product/shopList/178003">베이스 메이크업</a>
								</li>
								<li>
									<a href="/product/shopList/178004">색조 메이크업</a>
								</li>
								<li>
									<a href="/product/shopList/178005">클렌징</a>
								</li>
								<li>
									<a href="/product/shopList/178006">마스크팩</a>
								</li>
								<li>
									<a href="/product/shopList/178007">헤어</a>
								</li>
								<li>
									<a href="/product/shopList/178008">바디</a>
								</li>
								<li>
									<a href="/product/shopList/178009">향수</a>
								</li>
								<li>
									<a href="/product/shopList/178010"">뷰티소품</a>
								</li>
								<li></li>
							</ul>
						</div>
					</div>
					<!-- // 뷰티 -->
					
					<!-- 패션 -->
					<div class="cateListBox">
						<button type="button" class="accordion">패션</button>
						<div class="cateList">
							<ul>
								<li>
									<a href="/product/shop/179/ALL">브랜드</a>
								</li>
								<li>
									<a href="/product/shopList/179001">아우터</a>
								</li>
								<li>
									<a href="/product/shopList/179002">티셔츠</a>
								</li>
								<li>
									<a href="/product/shopList/179003">셔츠/블라우스</a>
								</li>
								<li>
									<a href="/product/shopList/179004">원피스/스커트</a>
								</li>
								<li>
									<a href="/product/shopList/179013">가디건/니트</a>
								</li>
								<li>
									<a href="/product/shopList/179005">팬츠</a>
								</li>
								<li>
									<a href="/product/shopList/179006">가방/지갑</a>
								</li>
								<li>
									<a href="/product/shopList/179007">양말/스타킹</a>
								</li>
								<li>
									<a href="/product/shopList/179008">주얼리/시계</a>
								</li>
								<li>
									<a href="/product/shopList/179009">언더웨어</a>
								</li>
								<li>
									<a href="/product/shopList/179011">슈즈</a>
								</li>
								<li>
									<a href="/product/shopList/179014">모자/패션소품</a>
								</li>
								<li>
									<a href="/product/shopList/179012">디지털</a>
								</li>
								<li>
									<a href="/product/shopList/179015">시즌웨어</a>
								</li>
								<li>
									<a href="/product/shopList/179016">액티브웨어</a>
								</li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
					<!-- // 패션 -->
				</div>
				<!-- // 메뉴 -->
				
				<div class="prodListBox">
					<h3>실시간 급상승 베스트 상품은?</h3>
					<div id="recopick_widget_KTKKnxiM" data-widget_id="KTKKnxiM">
						<iframe width="100%" height="444" title="이 상품을 본 고객이 많이 본 다른 상품"
							frameborder="0" scrolling="no" style="border: 0px;"
							src="https://api.recopick.com/1/widget/id/KTKKnxiM?item_id=&amp;qterm=&amp;site=womanstalk.co.kr&amp;from=https%3A%2F%2Fwww.womanstalk.co.kr%2FleftMenu&amp;uid=15550262.1553134644410&amp;id=recopick_widget_KTKKnxiM&amp;width=100%25&amp;height=1&amp;widget_id=KTKKnxiM">
						</iframe>
					</div>
				</div>
			</div>
		</nav>

		<%@include file="../include/footer.jsp"%>