/* 스크롤바 내리면 메뉴 고정 */
$(document).ready(function() {
	// 메뉴 위치 파악
	var naviBox = $('div.topArea .naviBox').offset();

	// 스크롤이 발생하면 실행
	$(window).scroll(function() {
		// 스크롤바 위치가 메뉴의 수직 위치보다 아래라면
		if ($(document).scrollTop() > naviBox.top) {
			// 메뉴에 fixed 클래스 추가하여 고정
			$('div.topArea .naviBox').addClass('fixed');
		}
		else { // 아니면 클래스 제거
			$('div.topArea .naviBox').removeClass('fixed');
		}
	});
});