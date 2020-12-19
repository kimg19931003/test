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
	href="${pageContext.request.contextPath}/resources/css/menu/celeb_list.css"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

</head>
<body style="visibility: visible;">
	<div id="wrap">
		<div class="topArea viewTopArea celeb " style="height: 56px;">
			<!-- 검색 활성 시 class schViewBoxWrap -->
			<div class="schBoxWrap">
				<a href="/celeb/main" class="btnViewBack"><p>
						<span><img
							src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기"></span>
					</p></a>
				<div href="/" class="logo">셀럽리스트</div>
				<div class="schBox">
					<div class="ipBox">
						<input type="text" id="mainSearchBox" name="searchInput"
							onclick="" autocomplete="off" placeholder="W크루의 이름을 검색해주세요"
							value="">
					</div>
					<a href="Javascript:void(0);"
						onclick="ga('send', 'event', '검색_창', 'click', '검색 결과');"
						class="btnSearch" id="selcebSearchSubmit"><span><img
							src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_search_b.png"
							alt="search"></span></a>
					<button type="button" class="btnClose">닫기</button>
				</div>
			</div>
		</div>


		<div class="celebArea">


			<div class="celebList type2">
				<ul>
					<li><a href="celeb_member"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','예담언니' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/62ce600ac829ceeef0d3e34b8b2090431c0f529b.jpeg">
							</p>
							<p class="name">
								<strong>예담언니</strong> <span>예담언니</span>
							</p>
					</a></li>
					<li><a href="celeb_member2"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','지윤ε' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/b0ed65a75debcac968b81cdcd3b1e48f4a5021da.jpeg">
							</p>
							<p class="name">
								<strong>지윤ε</strong> <span>지윤ε</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/561"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','rin_lovely' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/6865d35e715927d13b0727a4b6f6df62b5af9db3.jpeg">
							</p>
							<p class="name">
								<strong>rin_lovely</strong> <span>Cherry Love</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/483"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','션쓰' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/1d88660e316c8641c8ba0104a2b644c8a956ac17.jpeg">
							</p>
							<p class="name">
								<strong>션쓰</strong> <span>션쓰 Pick 공구 마켓</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/436"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','유주니아' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/f94c3543df7fd81f168f280bfe62bcd9c0ddb124.jpeg">
							</p>
							<p class="name">
								<strong>유주니아</strong> <span>유주니아</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/501"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','루비' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/4db87ffc249db269ac0a5a9633672418d2fb03cc.jpeg">
							</p>
							<p class="name">
								<strong>루비</strong> <span>하트루비♥</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/368"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','셀럽베베' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/e2441436e1f4e83f72b5a4a0204b6d48b68cca3a.png">
							</p>
							<p class="name">
								<strong>셀럽베베</strong> <span>IMBBO</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/422"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','럽럽다럽럽' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/9d79047aed3717665aeef9cf6d3f389590cc06d3.png">
							</p>
							<p class="name">
								<strong>럽럽다럽럽</strong> <span>럽럽다럽럽</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/471"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','찜니' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/9f0cb8bc52b28e94b5c4099fa241eeb39fe471af.jpeg">
							</p>
							<p class="name">
								<strong>찜니</strong> <span>셀럽 찜타임 -</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/349"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','꽃새미' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c46ac345d48e25b0132b8c17a52b933d87b3fa6e.jpeg">
							</p>
							<p class="name">
								<strong>꽃새미</strong> <span>꽃새미</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/303"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','엠마' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/ff6c5a0edc217b3e589a1c338f755d63d7b7ea06.png">
							</p>
							<p class="name">
								<strong>엠마</strong> <span>Emma의 마켓♥️</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/505"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','예진냠' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/d56ed369e8e1df495a463b1efa7f7cec07401c72.jpeg">
							</p>
							<p class="name">
								<strong>예진냠</strong> <span>예진냠</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/343"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','블리마망' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/8b18d3382e99aa38e5453bb44c82f01a510e3fd4.jpeg">
							</p>
							<p class="name">
								<strong>블리마망</strong> <span>블리마망</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/438"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','꽃혜진' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/d8b2a83f4a8f5579dc209ba5b7f7d7390239fdc7.jpeg">
							</p>
							<p class="name">
								<strong>꽃혜진</strong> <span>꽃혜진</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/566"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','재인' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/38a36fa26c2602028fc4b32439b9b53b00a97794.jpeg">
							</p>
							<p class="name">
								<strong>재인</strong> <span>재인마켓</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/374"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','블리벨' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/51efe9947f32f4b6315a564c1b230f9de12a5a07.jpeg">
							</p>
							<p class="name">
								<strong>블리벨</strong> <span>뷰스타 Pick</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/488"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','유냥' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/249fb03315761aa0c74ff6ff7a9a0d3cb05a18cf.jpeg">
							</p>
							<p class="name">
								<strong>유냥</strong> <span>유냥</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/364"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','들들맘' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/bf67b3acfcabc474a89429676d9047acbad8951b.jpeg">
							</p>
							<p class="name">
								<strong>들들맘</strong> <span>러블리윤</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/479"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','달린이' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/a1f6493bfecc5ed5ecde450ecba541d23bae08a0.jpeg">
							</p>
							<p class="name">
								<strong>달린이</strong> <span>달린이의 뷰티일상</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/434"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','하이디' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/09e0a436491d94764ac5cd7d530123fcabe07e5f.jpeg">
							</p>
							<p class="name">
								<strong>하이디</strong> <span>하이디</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/563"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','또니블리' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/aa022a5f584d00ebb6c23ad12f527e3dbb19e7c4.jpeg">
							</p>
							<p class="name">
								<strong>또니블리</strong> <span>또니블리</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/512"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','유탕진' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c9cf19448b7bccb714ad73f16ca40680dffc4367.jpeg">
							</p>
							<p class="name">
								<strong>유탕진</strong> <span>유탕진</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/543"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','정쨩' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/46d81e44869b68e1778aaecbb59d6764574944e6.jpeg">
							</p>
							<p class="name">
								<strong>정쨩</strong> <span>정쨩의 뷰티 PICK</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/545"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','채루비' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/e7ed924a94da8f3b5bb4d11b711d7687c3355e83.jpeg">
							</p>
							<p class="name">
								<strong>채루비</strong> <span>채루비</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/499"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','오지' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/6a727c381b63b66aab8898eb684ed834aecceae9.jpeg">
							</p>
							<p class="name">
								<strong>오지</strong> <span>ozii_ing</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/439"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','문러브썬' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/ee29167bc0f39c1ba947a78f882e904989c7e61b.jpeg">
							</p>
							<p class="name">
								<strong>문러브썬</strong> <span>문러브썬</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/485"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','Namroll' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c3afcae88793f52352dc589d2fff7b4d374f7dcc.jpeg">
							</p>
							<p class="name">
								<strong>Namroll</strong> <span>남롤</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/344"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','클로이' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/581ffeb489755a5599bf90c3dcf2b6423c505a5e.png">
							</p>
							<p class="name">
								<strong>클로이</strong> <span>클로이</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/524"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','오랑이' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/1f47dee7b9fefcd1a7d758c18a41f30b29cbeac6.jpeg">
							</p>
							<p class="name">
								<strong>오랑이</strong> <span>오랑이</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/333"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','누따' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c1809385af16a6ddef4914b2a1d3157cf8b02338.jpeg">
							</p>
							<p class="name">
								<strong>누따</strong> <span>누따마켓</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/376"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','요미요밍' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/cdca5bb67276a58c88080c63dbd96e64ef5a9c8e.jpeg">
							</p>
							<p class="name">
								<strong>요미요밍</strong> <span>요미공구</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/467"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','가리가리' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/b8c5bb94d508309bf10770ba5d70c36b28b604d8.jpeg">
							</p>
							<p class="name">
								<strong>가리가리</strong> <span>갈이샵</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/528"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','유똑띠' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/ac8957e3d662e533ebc347688744693aa4483c3c.jpeg">
							</p>
							<p class="name">
								<strong>유똑띠</strong> <span>유똑띠네</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/460"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','세니세니' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/0ec640abde8756fd4f5bf1e7e5b3d697a1d932f3.jpeg">
							</p>
							<p class="name">
								<strong>세니세니</strong> <span>세니룸</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/389"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','미미' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/97848eddae483a69e782349d3952d55ea20af13e.jpeg">
							</p>
							<p class="name">
								<strong>미미</strong> <span>미미쓰마켓</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/410"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','캐린' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/3372d6ec82bd61d74ef8655b5b2d7458b8ebd9b4.jpeg">
							</p>
							<p class="name">
								<strong>캐린</strong> <span>캐린샵</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/362"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','베티언니' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/8becc82a2761b2b308e3461985a923a66b6ce78f.png">
							</p>
							<p class="name">
								<strong>베티언니</strong> <span>베티언니의 뷰티박스</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/423"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','하코' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/8cfc784de57bfa0bf2cbe9fba8984a2accfc9d57.png">
							</p>
							<p class="name">
								<strong>하코</strong> <span>하코의 공구샵♥</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/348"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','채으니맘' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/1764e80328fd84765b8c56458098e34ae26617c0.jpeg">
							</p>
							<p class="name">
								<strong>채으니맘</strong> <span>채으니맘</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/480"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','안예진' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/402b2424fb96a06884db02b271ea48e83270308e.jpeg">
							</p>
							<p class="name">
								<strong>안예진</strong> <span>안예진</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/526"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','도희' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/4b3511d02222616999b6b3929665ebdda90fd8e9.jpeg">
							</p>
							<p class="name">
								<strong>도희</strong> <span>도희</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/426"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','박쏘' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c917215abb0ede48375cd62c0b0a0c4e3c6e40a6.jpeg">
							</p>
							<p class="name">
								<strong>박쏘</strong> <span>박쏘</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/553"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','예나벨르' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/fbddebdd015e80a04ce537bd2c3a395ccb57bf35.jpeg">
							</p>
							<p class="name">
								<strong>예나벨르</strong> <span>예나벨르</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/301"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','한스' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/53f6650129e787926b7d8fce820a71e58c6a6c67.png">
							</p>
							<p class="name">
								<strong>한스</strong> <span>한스의 뷰티 블로그</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/300"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','쥬르' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/7ff9aa28d68d7cfef88ed95e5f5ff34193fa252a.png">
							</p>
							<p class="name">
								<strong>쥬르</strong> <span>용쥬르샵</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/433"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','유블리{YUL-vely}' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/1411097825f2ad8d183a8c70246cfb4ca104a459.jpeg">
							</p>
							<p class="name">
								<strong>유블리{YUL-vely}</strong> <span>Beauty _YUL shop</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/398"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','혜린' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/e4aafda79c5189d2e29a89937a7c56ef4702370f.jpeg">
							</p>
							<p class="name">
								<strong>혜린</strong> <span>혜린</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/497"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','지윤' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/2d06c6a9e68e33d1948b59af0de95e01cf8c78dc.jpeg">
							</p>
							<p class="name">
								<strong>지윤</strong> <span>easy shop</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/548"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','닐라' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/e4d5b269c61fc7da6fef1481ce23b73a46cf01ec.jpeg">
							</p>
							<p class="name">
								<strong>닐라</strong> <span>닐라</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/496"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','따니' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/c9b4045b9dbd43de2d1640bbf2b7d22643603d8e.jpeg">
							</p>
							<p class="name">
								<strong>따니</strong> <span>따니</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/564"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','지유' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/6ae2c5b9724712028542c91a52cf6fbe6f5edfc4.jpeg">
							</p>
							<p class="name">
								<strong>지유</strong> <span>가질 지 있을 유</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/322"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','채서맘' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/058d83d1b91f2276261f8c4b57468472abbe9468.jpeg">
							</p>
							<p class="name">
								<strong>채서맘</strong> <span>채서맘</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/576"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','혜듀' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/64e005aac89e81c54d7baad96fe76924d8a6203e.jpeg">
							</p>
							<p class="name">
								<strong>혜듀</strong> <span>뷰티크리에이터 혜듀의 셀럽마켓</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/532"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','컬러아나' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/7d7afc893107b61c0b62feacb5d4a9becb6a5f05.jpeg">
							</p>
							<p class="name">
								<strong>컬러아나</strong> <span>퍼스널컬러 전문가가 추천하는 퍼스널컬러 타입별
									메이크업제품</span>
							</p>
					</a></li>
					<li><a href="https://www.womanstalk.co.kr/celeb/shop/546"
						class="celeb"
						onclick="ga('send', 'event', 'celeb_market', '셀럽리스트','리라' );">
							<p class="img">
								<img
									src="https://img.womanstalk.co.kr/upload/eh_host/profile/2d7a5ad3ad1b30ef6ee8f90d06ccc4cf603456b2.jpeg">
							</p>
							<p class="name">
								<strong>리라</strong> <span>리라샵</span>
							</p>
					</a></li>
				</ul>
			</div>
		</div>

		<%@include file="../include/footer.jsp"%>