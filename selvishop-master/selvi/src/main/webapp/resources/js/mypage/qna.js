// 뒤로 가기
$(".top_bar_img img").click(function() {
	history.back();
});

// 홈으로 이동
$(".top_bar_home img").click(function() {
	location.href = "/";
});

// 내용
$(function() {
	$(".faq .ti").on('click', function() {
		$(".faq .faq_a").slideUp('300');
		$(".faq .faq_a > td > div").slideUp('300');
		$(".faq .faq_q_on").attr('class', 'faq_q_off');

		if ($(this).parent().next().is(":visible")) {
		} else {
			$(this).parent().next().slideDown('300');
			$(this).parent().next().find('> td > div').slideDown('300');
			$(this).parent().attr('class', 'faq_q_on');
		}

		return false;
	});
});

// 탭
function checkData(response, statusText, param) {
	var inner_html = "";
	var inner_html_top = "";
	var inner_html_top1 = "";
	var count_num = 0;
	var tab = response.tab;

	if (param == "category") {
		config.category = response;
	} else if (param == "Info") {
		config.info = response;

		{
			// 탭정보 세팅
			// 전체보기, 회원서비스, 주문/결제, 배송문의, 환불/반품교환, 쿠폰/포인트, 타임딜, 쿠폰
			if (config.info.boardcategorykey == 1 || // 전체보기
					config.info.boardcategorykey == 2 || // 회원서비스
					config.info.boardcategorykey == 3 || // 주문/결제
					config.info.boardcategorykey == 4 || // 배송문의
					config.info.boardcategorykey == 5 || // 환불/반품교환
					config.info.boardcategorykey == 6 || // 
					config.info.boardcategorykey == 7) { // 
				setTab($(".tab"), "default");

				// 상세에서 돌아왔을때
				var category = decodeURIComponent(StringUtils
						.getQueryize(config.this_path)['category']);
				
				if (category != "undefined") {
					$(".tab").find("li").removeClass("on");
					for (var i = 0; i < $(".tab").find("li").size(); i++) {
						if ($(".tab").find("li").eq(i).attr("tab-data") == category) {
							$(".tab").find("li").eq(i).addClass("on");
						}
					}
				}
			}
		}

	}
}