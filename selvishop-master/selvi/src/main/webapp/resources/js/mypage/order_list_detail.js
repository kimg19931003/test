
$(function(){
	$(".top_bar_img img").click(function(){
		history.back();
	});
	
	$(".top_bar_home img").click(function(){
		location.href="/";
	});
});