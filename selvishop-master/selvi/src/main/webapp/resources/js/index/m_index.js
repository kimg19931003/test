// 자바스크립트 테스트
$('.bxslider').bxSlider({
	auto : true,
	autoControls : true,
	controls : true,
	stopAutoOnClick : true,
	pager : true,
	mode : 'fade'
});

$(".up, .down").click(function() {
	if ($(this).attr("class") == "up") {
		$("body,html").animate({
			scrollTop : 0
		}, 1500, 'easeInCirc', function() {
		});
	} else if ($(this).attr("class") == "down") {
		$("body,html").animate({
			scrollTop : $(document).height()
		}, 1500, 'easeInCirc', function() {
		});
	}
});


/*
$(function() {
	var a_width = screen.availWidth;
	var a_height = screen.availHeight;

	var i_width = window.innerWidth;
	var i_height = window.innerHeight;

	var body_width = $("body").width();

	// 슬라이드 모드
	$(".bxslider img").attr("style", "width:" + a_width + "px;");
	$(".bx-wrapper img").css("left", -(a_width - i_width) / 2);

});

$(window).resize(function() {
	var a_width = screen.availWidth;
	var a_height = screen.availHeight;

	var i_width = window.innerWidth;
	var i_height = window.innerHeight;

	var body_width = $("body").width();

	// 슬라이드 모드
	$(".bx-wrapper img").css("left", -(a_width - i_width) / 2);

});*/

