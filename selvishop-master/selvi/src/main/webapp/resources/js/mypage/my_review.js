

$(".product_list, .product_complete_list").click(function(){
	
	
	


		if($(".product_review_list").css("display")=="table" && $(".product_review_complete_list").css("display")=="none"){
			$(".product_list").css("background","#d0d0d0");
			$(".product_complete_list").css("background","#ff0072");
			
			$(".product_review_list").css("display","none");
			$(".product_review_complete_list").css("display","table");
			
		
		}
		else if($(".product_review_list").css("display")=="none" && $(".product_review_complete_list").css("display")=="table"){
			$(".product_list").css("background","#ff0072");
			$(".product_complete_list").css("background","#d0d0d0");
			
			$(".product_review_list").css("display","");
			$(".product_review_complete_list").css("display","none");
			
			   
		}
		
		
	
	
});




$(".top_bar_img img").click(function(){
	history.back();
});

$(".top_bar_home img").click(function(){
	location.href="/";
});