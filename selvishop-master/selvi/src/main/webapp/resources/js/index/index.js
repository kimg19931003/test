$(document).ready(function() {
	$('.bxslider').bxSlider({
		mode : 'fade', // 이미지 교체 방식. fade, horizontal, vertical
		auto : true, // 자동으로 슬라이드
		controls : true, // 좌우 화살표
		autoControls : true, // 시작 중지 버튼
		pager : true, // 페이지 버튼
		pause : 3000,
		autoDelay : 0,
		speed : 500, // 다음 이미지로 바뀌는데 걸리는 시간. 단위는 ms. 500ms 기본값
		stopAutoOnclick : true,
		captions : false /// 이미지 위에 텍스트 올리기. img에 title="" 주기
	});
	
	$('.bx-controls-direction').addClass('layout');
});