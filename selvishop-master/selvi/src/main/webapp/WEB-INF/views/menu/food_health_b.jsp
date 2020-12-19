<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/menu/menu_common.css"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<%@include file="../include/header.jsp"%>

<div class="shopArea brandArea">


	<div class="shopWrap">
		<div class="cateListWrap">
			<div class="cateTabBtn">
				<ul>
					<li class=""><a
						href="https://www.womanstalk.co.kr/product/shop/178"
						onclick="ga('send', 'event', 'beauty', 'click', '카테고리');sendAiquaEvent('category_viewed', 'category_name:beauty/카테고리', aiqua_os);"><span>카테고리</span></a></li>
					<li class="on"><a
						href="https://www.womanstalk.co.kr/product/shop/178/ALL"
						onclick="ga('send', 'event', 'beauty', 'click', '브랜드');sendAiquaEvent('category_viewed', 'category_name:beauty/브랜드', aiqua_os);"><span>브랜드</span></a></li>
				</ul>
			</div>
		</div>

		<div class="brandSortBox">
			<a href="javascript:void(0);" data-brand-name="전체" class="on"><span>전체</span></a>
			<a href="javascript:void(0);" data-brand-name="ㄱ" class=""><span>ㄱ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㄴ" class=""><span>ㄴ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㄷ"><span>ㄷ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㄹ"><span>ㄹ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅁ"><span>ㅁ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅂ"><span>ㅂ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅅ"><span>ㅅ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅇ"><span>ㅇ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅈ"><span>ㅈ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅊ"><span>ㅊ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅋ"><span>ㅋ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅌ"><span>ㅌ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅍ"><span>ㅍ</span></a>
			<a href="javascript:void(0);" data-brand-name="ㅎ"><span>ㅎ</span></a>
			<a href="javascript:void(0);" data-brand-name="A-Z"><span>A-Z</span></a>
		</div>

		<div class="brandListBox" style="display: block;">
			<div class="brandTit">
				<strong>전체</strong> 브랜드
			</div>
			<div class="brandList">
				<ul>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/6783"><span>가담다</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/4096"><span>가드미</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/6299"><span>가제트</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/4731"><span>갈랑트리</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/6827"><span>갸스비</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/305"><span>게리쏭</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/7378"><span>나다(NADA)</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/4046"><span>나디아피엘</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/7100"><span>나뚜라하우스</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/7127"><span>나뚜리바이오</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/6802"><span>다나수</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/281"><span>다나한</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/6797"><span>다도센스</span></a></li>
					<li><a
						href="https://www.womanstalk.co.kr/product/brandList/178/318"><span>다비도프</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>