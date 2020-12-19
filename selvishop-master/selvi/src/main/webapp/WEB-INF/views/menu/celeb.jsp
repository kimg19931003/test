<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/menu/celeb.css"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<%@include file="../include/header.jsp"%>

<div class="celebArea">
	<!-- 메인 이미지 -->
	<div class="celeb-mainimg">
		<img
			src="https://img.womanstalk.co.kr/upload/images/wcrew/img_celebpick_main_pc.png"
			alt="CELEB'S PICK">
	</div>
	<!-- 메인 이미지 -->

	<!-- 셀럽 리스트 -->
	<div class="celebsBox type2">
		<h3>
			OUR CELEB'S <a href="celeb_list"> <span class="txt">ALL</span> <span
				class="arr"> <img
					src="https://img.womanstalk.co.kr/upload/images/mobile/search/btn_more.png">
			</span>
			</a>
		</h3>
		<div class="celebs">
			<div class="swiper-container swiper-container-horizontal">
				<ul class="swiper-wrapper">
					<li class="swiper-slide swiper-slide-active"
						style="width: 106.25px;"><a href="celeb_member"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/445bb60a642bf6b2fecff600ba09f55ff1fe4173.jpeg"
							alt="profile Img"> <span>바규나</span>
					</a></li>
					<li class="swiper-slide swiper-slide-next" style="width: 106.25px;">
						<a href="celeb_member2"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/2945c2e37b66ba9be97509e91ccc1a06b573c160.jpeg"
							alt="profile Img"> <span>쏘쏘</span>
					</a>
					</li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/532"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/7d7afc893107b61c0b62feacb5d4a9becb6a5f05.jpeg"
							alt="profile Img"> <span>컬러아나</span>
					</a></li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/568"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/3bee1c8be5cda9df8f2e64192ad5edfa69972ed6.jpeg"
							alt="profile Img"> <span>어도러블</span>
					</a></li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/430"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/5a5d1691c707bca7d05d6c109320df4f31e97ee2.jpeg"
							alt="profile Img"> <span>뜨루맘</span>
					</a></li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/490"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/5bacb748def1a24103dbafbf5bf0ad6dc77018af.jpeg"
							alt="profile Img"> <span>mi_u</span>
					</a></li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/423"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/8cfc784de57bfa0bf2cbe9fba8984a2accfc9d57.png"
							alt="profile Img"> <span>하코</span>
					</a></li>
					<li class="swiper-slide" style="width: 106.25px;"><a
						href="https://www.womanstalk.co.kr/celeb/shop/378"> <img
							src="https://img.womanstalk.co.kr/upload/eh_host/profile/9579a8f62bcae6179548ccc9f8d5f6f28d705a9d.jpeg"
							alt="profile Img"> <span>료니샵</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 셀럽 리스트 -->

	<!-- 공구 리스트 -->
	<div class="celebProdWrap type2">
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2019030600006/431">
					<div class="prodInfo">
						<p class="title">[BALLOP] 밸롭 잼삭스 요가양말 트윙클/공구 특가</p>
						<div class="priceInfo">
							<strong class="sale">38<span>%</span></strong>
							<p class="price">
								<strong>8,000원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20190306/prodImg2/2019030600006.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/431"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '옐라테스', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/6a8114be06f37679196347c1367b20e2a2e7a9b2.png"
								alt="프로필 이미지"> 옐라테스
						</p>
						<div class="txtWrap">
							<div class="comt">
								아직도 요가할 때 맨발로 하세요?<br> 요가할땐 요가양말이죠!!
							</div>
						</div>
					</a>

				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2018053100112/450"
					onclick="ga('send', 'event', 'celeb_market', '센치', '[멀블리스] 마이 리퀴드 아이라이너' )">
					<div class="prodInfo">
						<p class="title">[멀블리스] 마이 리퀴드 아이라이너</p>
						<div class="priceInfo">
							<strong class="sale">36<span>%</span></strong>
							<p class="price">
								<strong>7,000원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20180531/prodImg2/2018053100112_list_mobile_1528422973.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/450"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '센치', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/d6e81dd9d83e2043f43122e0ba93697972e5c6e8.jpeg"
								alt="프로필 이미지"> 센치
						</p>
						<div class="txtWrap">
							<div class="comt">
								화장 초보자들 여기여기 붙어라!<br> 손쉽게 쓱싹 그릴 수 있는 아이라인!<br> 잘 지워지지
								않는 리퀴드 타입이라 더 좋아요❤️
							</div>
						</div>
					</a>

				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2019030600030/408"
					onclick="ga('send', 'event', 'celeb_market', '윤코코', '[셀럽공구]프레쥬 오리지날 인진쑥 에센스 115ml' )">
					<div class="prodInfo">
						<p class="title">[셀럽공구]프레쥬 오리지날 인진쑥 에센스 115ml</p>
						<div class="priceInfo">
							<strong class="sale">48<span>%</span></strong>
							<p class="price">
								<strong>9,900원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20190306/prodImg2/2019030600030.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/408"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '윤코코', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/f335f2186c926830d727a7db3b60e2d7fe686e04.png"
								alt="프로필 이미지"> 윤코코
						</p>
						<div class="txtWrap">
							<div class="comt">미세먼지에 화장품에 피부손상에 노출되어있는 연약한 피부에 진정과 활력을
								불어넣어주는 에센스겸 미스트 공구열어요 :)</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-25T02:12:14+09:00">4일 남음</p>
				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2018120600032/315"
					onclick="ga('send', 'event', 'celeb_market', '담희♡', '★최신제조★ 모찌스킨 페이스워시 클렌징 [화이트/블랙]' )">
					<div class="prodInfo">
						<p class="title">★최신제조★ 모찌스킨 페이스워시 클렌징 [화이트/블랙]</p>
						<div class="priceInfo">
							<strong class="sale">50<span>%</span></strong>
							<p class="price">
								<strong>17,500원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20181206/2018120600032/2018120600032_list_mobile_1544071155.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/315"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '담희♡', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/ae5538447f5a9afe2b0b9e316a37a0bbdb7f14e9.jpeg"
								alt="프로필 이미지"> 담희♡
						</p>
						<div class="txtWrap">
							<div class="comt">
								저자극약산성 [모찌스킨클렌저]로 모찌피부 만들기♡<br> 일본 돈키호테와 라쿠텐 1위 제품!!<br>
								미세먼지까지 싹~ 모찌피부 만들기 도전
							</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-22T18:22:56+09:00">1일 남음</p>
				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2019030600041/356"
					onclick="ga('send', 'event', 'celeb_market', '나나블링', '[셀럽공구]디노보 링클핌 다림질 스프레이 500ml' )">
					<div class="prodInfo">
						<p class="title">[셀럽공구]디노보 링클핌 다림질 스프레이 500ml</p>
						<div class="priceInfo">
							<strong class="sale">40<span>%</span></strong>
							<p class="price">
								<strong>16,800원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20190306/prodImg2/2019030600041.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/356"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '나나블링', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/127bfed2b60303e5c6e7e0bd86c1802f12570d52.jpeg"
								alt="프로필 이미지"> 나나블링
						</p>
						<div class="txtWrap">
							<div class="comt">
								뿌리는 다리미 섬유유연제!!<br> 향균 99.9% &amp; 탈취 99.9% <br>
								향균,탈취,주름을 한번에 잡아줘요 ( 엄지척 )
							</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-26T19:00:16+09:00">5일 남음</p>
				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2019030400200/361"
					onclick="ga('send', 'event', 'celeb_market', '차차쌤', '내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1 구성 ' )">
					<div class="prodInfo">
						<p class="title">내몸을부탁해 다이어트 보조제 100% 식물성 원료 1개월분 / 1+1 / 2+1
							구성</p>
						<div class="priceInfo">
							<strong class="sale">할인가</strong>
							<p class="price">
								<strong>39,000원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20190304/prodImg2/2019030400200_list_mobile_1551768539.png"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/361"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '차차쌤', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/b4e979b036afaabbe262e7912bb8a626c43e2e02.jpeg"
								alt="프로필 이미지"> 차차쌤
						</p>
						<div class="txtWrap">
							<div class="comt">
								간에 무리없는 다이어트보조제:) 항산화 성분영양제 따로 챙겨먹을 필요도 없어요!!<br> ★건강지키면서
								다이어트까지 일석이조★
							</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-25T00:19:26+09:00">4일 남음</p>
				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2019030600057/374"
					onclick="ga('send', 'event', 'celeb_market', '블리벨', '[공구]키스뉴욕 아이섀도우 팔레트 11색/아이라이너 ' )">
					<div class="prodInfo">
						<p class="title">[공구]키스뉴욕 아이섀도우 팔레트 11색/아이라이너</p>
						<div class="priceInfo">
							<strong class="sale">71<span>%</span></strong>
							<p class="price">
								<strong>12,900원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20190306/prodImg2/2019030600057.jpg"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/374"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '블리벨', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/51efe9947f32f4b6315a564c1b230f9de12a5a07.jpeg"
								alt="프로필 이미지"> 블리벨
						</p>
						<div class="txtWrap">
							<div class="comt">
								데일리메이크업 필수템✨<br> 이거 하나만 있으면 메이크업 끝!
							</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-22T18:14:40+09:00">1일 남음</p>
				</div>
			</div>
		</div>
		<div class="celebProdBox prodBox main">
			<div class="prodBox">
				<a href="/product/view/2018100800092/455"
					onclick="ga('send', 'event', 'celeb_market', '샤넬에스터바비', '[5%할인쿠폰 증정] 마법의 스푼/포크 세트 그랩이즈 (무료배송)' )">
					<div class="prodInfo">
						<p class="title">[5%할인쿠폰 증정] 마법의 스푼/포크 세트 그랩이즈 (무료배송)</p>
						<div class="priceInfo">
							<strong class="sale">할인가</strong>
							<p class="price">
								<strong>35,000원</strong>
							</p>
						</div>
					</div>
					<div class="prodImg2">
						<p>
							<span><img
								src="https://img.womanstalk.co.kr/upload/product/20181008/prodImg2/2018100800092.png"
								alt=""></span>
						</p>
					</div>
				</a>
				<div class="celeb-name">
					<a href="https://www.womanstalk.co.kr/celeb/shop/455"
						class="celebgo"
						onclick="ga('send', 'event', 'celeb_market', '샤넬에스터바비', '개인샵' )">
						<p class="name">
							<img
								src="https://img.womanstalk.co.kr/upload/eh_host/profile/17e8d59c973237559a4d0368ef5e98a2ed16a090.jpeg"
								alt="프로필 이미지"> 샤넬에스터바비
						</p>
						<div class="txtWrap">
							<div class="comt">그랩이즈로 아이의 식습관을 바꾸어주세요~^^ 두뇌발달에 최고^^</div>
						</div>
					</a>

					<p class="date" data-end-time="2019-03-20T23:28:34+09:00">04:18:18
						남음</p>
				</div>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div class="celebFooterBox">
			<a style="display: block;" href="/board/event/list/3421"> <img
				style="margin-bottom: 10px;"
				src="https://img.womanstalk.co.kr/upload/images/celeb/bnr_celeb_main.png"
				alt="배너 이미지"></a>
		</div>
	</div>
	<!-- 공구 리스트 -->
</div>


<%@include file="../include/footer.jsp"%>