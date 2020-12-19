
$(".plus_div, .minus_div").click(function(){
	
	var index = $(this).data("id");
	sessionStorage.setItem("index",index);
	
	
	if($(this).attr("class")=="plus_div"){
		
		var i = Number($(".product_num").eq(index).val());
		var basket_price = Number($(".product_price").eq(index).text().replace(/[^0-9]/g,""));
		var total_price =  Number($(".total_price_val").text().replace(/[^0-9]/g,""));
		if(i>=0){
			sessionStorage.setItem("basket_price",basket_price);
			sessionStorage.setItem("total_price",total_price);
		
			$(".product_num").eq(index).val(i+1);
			$(".total_price_val").text((total_price + basket_price)+"원");
		}
		
	}  
	else if($(this).attr("class")=="minus_div"){
				
		var i = Number($(".product_num").eq(index).val());
		var basket_price = Number($(".product_price").eq(index).text().replace(/[^0-9]/g,""));
		var total_price =  Number($(".total_price_val").text().replace(/[^0-9]/g,""));
		if(i>=1){
			sessionStorage.setItem("basket_price",basket_price);
			sessionStorage.setItem("total_price",total_price);
		
			$(".product_num").eq(index).val(i-1);
			$(".total_price_val").text((total_price - basket_price)+"원");
		}
				
	}
	
});


$(".top_bar_img img").click(function(){
	history.back();
});

$(".top_bar_home img").click(function(){
	location.href="/";
});
