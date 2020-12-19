// 스크롤바 스크롤시 헤더 고정
// 로고 검색은 top 부분으로 이동

// 로고 검색 / 로그인 회원가입 주문조회 장바구니 마이페이지
// 전체상품 카테고리1 카테고리2 카테고리3 셀비스튜디오 고객센터

$(function() {
	var menupos = $("body").offset().top;

	$(window).scroll(
			function() {
				if ($(window).scrollTop() > 500) {
					$("#header_topbar").css("position", "fixed");
					$("#header_topbar").css("top", "0");
					$("#header_topbar").css("width", "100%");
					$("#header_topbar").css("opacity", "0.8");
					$("#header_topbar_fix").css("display", "block");
					$("#header_topbar_menu .topbar_menu:nth-child(5)").css(
							"margin-right", "0");
					
					// 모바일
					$("#header_mobile_topbar").css("position", "fixed");
					$("#header_mobile_topbar").css("top", "0");
					$("#header_mobile_topbar").css("width", "100%");
					$("#header_mobile_topbar").css("opacity", "0.8");
					$("#header_topbar_fix").css("display", "block");
				} else {
					$("#header_topbar").css("position", "relative");
					$("#header_topbar").css("top", "0");
					$("#header_topbar_fix").css("display", "none");

					// 모바일
					$("#header_mobile_topbar").css("position", "relative");
					$("#header_mobile_topbar").css("top", "0");
				}
			});
});

$(function() {
	var menupos = $("body").offset().top;

	$(window).scroll(function() {
		if ($(window).scrollTop() > 500) {
			$("#header_navi").css("position", "fixed");
			$("#header_navi").css("top", "40");
			$("#header_navi").css("width", "100%");
			$("#header_navi").css("opacity", "0.8");
			$("#navi_menu ul>li>a").css("margin-top", "25px");
			$("#navi_menu ul>li>a").css("line-height", "0");
			$(".menu").css("height", "48px");

			// 모바일
			$("#header_mobile_navi").css("position", "fixed");
			$("#header_mobile_navi").css("top", "99");
			$("#header_mobile_navi").css("width", "100%");
			$("#header_mobile_navi").css("opacity", "0.8");
			$(".mobile_menu").css("height", "48px");
		} else {
			$("#header_navi").css("position", "relative");
			$("#header_navi").css("top", "0");

			// 모바일
			$("#header_mobile_navi").css("position", "relative");
			$("#header_mobile_navi").css("top", "0");
		}
	});
});

// 사이드 메뉴 햄버거 열기
function openSub() {
	jQuery("#mobile_sub_menu").stop().animate({
		left : "0%"
	}, 300);
	jQuery("body").append('<div class="mask" onClick="closeSub()"></div>');
	jQuery(".mask").show();
	jQuery("body").css("overflow-y", "hidden");
}

// 사이드 메뉴 햄버거 닫기
function closeSub() {
	jQuery("#mobile_sub_menu").stop().animate({
		left : "-100%"
	}, 300);
	jQuery(".mask").hide();
	jQuery("#wrap").next().remove(".mask");
	jQuery("body").css("overflow-y", "visible");
}